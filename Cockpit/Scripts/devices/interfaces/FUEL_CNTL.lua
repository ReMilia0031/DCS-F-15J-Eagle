-- Fuel Control System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.02
make_default_activity(update_time_step)

local connector = {}
connector["TMB_FUEL_OPEN/CLOSE"] = nil

-- sensor_data,getTotalFuelWeight


----------Variables Declaration----------
local _var_CNTL_CONF, _var_CNTL_CNTR, _var_CNTL_WING, _var_FUEL_DUMP, _var_EXT_TRANS, _var_CONF_EMERTR, _var_CNTL_SLIPWAY
local SYSTEM_STAT,SYSTEM_TARGET,REFUEL_STAT,REFUEL_INIT
local FUEL_SYSTEM = get_param_handle("FUEL_SYS_READY")

----------FUNCTION-POST-INIT----------
function post_initialize()
	dev:performClickableAction(FUEL_CNTL_commands.CNTL_CONF,	0, false)	-- Conformal Tank Fuel Control
	dev:performClickableAction(FUEL_CNTL_commands.CNTL_CNTR,	0, false)	-- Center External Tank Fuel Control
	dev:performClickableAction(FUEL_CNTL_commands.CNTL_WING,	0, false)	-- Wing External Tank Fuel Control
	dev:performClickableAction(FUEL_CNTL_commands.FUEL_DUMP,	-1, false)	-- Fuel Dump
	dev:performClickableAction(FUEL_CNTL_commands.EXT_TRANS,	0, false)	-- External Fuel Transfer
	dev:performClickableAction(FUEL_CNTL_commands.CONF_EMERTR,	-1, false)	-- Conformal Tank Emergency Transfer
	dev:performClickableAction(FUEL_CNTL_commands.CNTL_SLIPWAY,	-1, false)	-- Slipway Door Control (AAR)

	if birth == "GROUND_HOT" or birth == "AIR_HOT" then
	elseif birth == "GROUND_COLD" then
	end
	REFUEL_INIT = -1

	connector["TMB_FUEL_OPEN/CLOSE"] = get_clickable_element_reference("TMB_FUEL_OPEN/CLOSE")
end

----------FUNCTION-SETCOMMAND----------
function SetCommand(command,value)
	-- print_message_to_user(tostring(command).." = "..tostring(value))

	
	if command == FUEL_CNTL_commands.CNTL_CONF then
		_var_CNTL_CONF = value
	end
	if command == FUEL_CNTL_commands.CNTL_CNTR then
		_var_CNTL_CNTR = value
	end
	if command == FUEL_CNTL_commands.CNTL_WING then
		_var_CNTL_WING = value
	end
	
	if command == FUEL_CNTL_commands.CONF_EMERTR then
		_var_CONF_EMERTR = value
	end
	
	if command == FUEL_CNTL_commands.EXT_TRANS then
		_var_EXT_TRANS = value
	end
	
	if command == FUEL_CNTL_commands.FUEL_DUMP then
		_var_FUEL_DUMP = value
	end
	
	if command == FUEL_CNTL_commands.CNTL_SLIPWAY then
		REFUEL_STAT = value
		_var_CNTL_SLIPWAY = value
		dispatch_action(nil,Keys.iCommandPlaneAirRefuel)
	end
	if REFUEL_INIT == -1 then
		if REFUEL_STAT == 1 then
			dispatch_action(nil,Keys.iCommandPlaneAirRefuel)
			REFUEL_INIT = REFUEL_STAT
		end
	end
	if REFUEL_INIT == 1 then
		if REFUEL_STAT == -1 then
			dispatch_action(nil,Keys.iCommandPlaneAirRefuel)
			REFUEL_INIT = REFUEL_STAT
		end
	end
	if FUEL_DUMP == -1 and _var_CNTL_SLIPWAY == -1 and _var_CONF_EMERTR == -1 and _var_CNTL_WING == 0 and _var_CNTL_CNTR == 0 and _var_CNTL_CONF == 0 then
		SYSTEM_STAT = 1
	else
		SYSTEM_STAT = 0
	end
end

----------FUNCTION-UPDATE----------
function update()
	if connector["TMB_FUEL_OPEN/CLOSE"] then
		connector["TMB_FUEL_OPEN/CLOSE"]:update()
	end
	FUEL_SYSTEM:set(SYSTEM_STAT)
end

need_to_be_closed = false -- close lua state after initialization


