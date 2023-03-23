-- Electrical Power Supply System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.02
make_default_activity(update_time_step)

----------Variables Declaration----------
local GND_PWR_1, GND_PWR_2, GND_PWR_3, GND_PWR_4, GND_PWR_CC
local SYSTEM_STAT, L_AC_BUS, R_AC_BUS, L_DC_BUS, R_DC_BUS, ESS_AC_BUS, ESS_DC_BUS

local JFS_GEN_INIT = 0

local L_AC_BUS = get_param_handle("L_AC_BUS")
local R_AC_BUS = get_param_handle("R_AC_BUS")
local ESS_AC_BUS = get_param_handle("ESS_AC_BUS")

local L_DC_BUS = get_param_handle("L_DC_BUS")
local R_DC_BUS = get_param_handle("R_DC_BUS")
local ESS_DC_BUS = get_param_handle("ESS_DC_BUS")


local ELEC_SYSTEM = get_param_handle("ELEC_SYS_READY")
local JFS_READY = get_param_handle("JFS_READY")



----------FUNCTION-POST-INIT----------
function post_initialize()
	dev:performClickableAction(PWR_CNTL_commands.ENG_GEN_L,		0, false)
	dev:performClickableAction(PWR_CNTL_commands.ENG_GEN_R,		0, false)
	dev:performClickableAction(PWR_CNTL_commands.EMER_GEN,		-1, false)
	dev:performClickableAction(PWR_CNTL_commands.EXT_PWR_CNTL,	-1, false)
	
	dev:performClickableAction(PWR_CNTL_commands.GND_PWR_1,		0, false)
	dev:performClickableAction(PWR_CNTL_commands.GND_PWR_2,		-1, false)
	dev:performClickableAction(PWR_CNTL_commands.GND_PWR_3,		1, false)
	dev:performClickableAction(PWR_CNTL_commands.GND_PWR_4,		-1, false)
	dev:performClickableAction(PWR_CNTL_commands.GND_PWR_CC,	0, false)

	if birth == "GROUND_HOT" or birth == "AIR_HOT" then
		dev:performClickableAction(PWR_CNTL_commands.ENG_GEN_L,		1, false)
		dev:performClickableAction(PWR_CNTL_commands.ENG_GEN_R,		1, false)
		SYSTEM_STAT = 1

	elseif birth == "GROUND_COLD" then
		dev:performClickableAction(PWR_CNTL_commands.ENG_GEN_L,		-1, false)
		dev:performClickableAction(PWR_CNTL_commands.ENG_GEN_R,		-1, false)
		dev:performClickableAction(PWR_CNTL_commands.EMER_GEN,		-1, false)
		SYSTEM_STAT = 0
	end
	
	print_message_to_user("PWR_CNTL_post_initialize")
end

function JFS_GENERATOR()
	if JFS_READY:get() == 1 and JFS_GEN_INIT == 0 then
		dispatch_action(nil,Keys.iCommandPowerOnOff)
		JFS_GEN_INIT = 1

	elseif JFS_READY:get() == 0 and JFS_GEN_INIT == 1 then
		if sensor_data.getEngineLeftRPM() < 45 and sensor_data.getEngineRightRPM() < 45 then
			dispatch_action(nil,Keys.iCommandPowerOnOff)
			JFS_GEN_INIT = 0
		end
	end
end
----------FUNCTION-SETCOMMAND----------
function SetCommand(command,value)
	if command == PWR_CNTL_commands.ENG_GEN_L then
		var_ENG_GEN_L = value
	end

	if command == PWR_CNTL_commands.ENG_GEN_R then
		var_ENG_GEN_R = value
	end

	if command == PWR_CNTL_commands.EXT_PWR_CNTL then
		EXT_PWR_CNTL = value
	end

	if command == PWR_CNTL_commands.EMER_GEN then
		EMER_GEN = value
	end

	if command == PWR_CNTL_commands.GND_PWR_1 then
		GND_PWR_1 = value
	end

	if command == PWR_CNTL_commands.GND_PWR_2 then
		GND_PWR_2 = value
	end

	if command == PWR_CNTL_commands.GND_PWR_3 then
		GND_PWR_3 = value
	end

	if command == PWR_CNTL_commands.GND_PWR_4 then
		GND_PWR_4 = value
	end

	if command == PWR_CNTL_commands.GND_PWR_CC then
		GND_PWR_CC = value
	end

	if SYSTEM_STAT == 1 then
		-- dev:AC_Generator_1_on(true)
		-- dev:AC_Generator_2_on(true)
		-- dev:DC_Battery_on(true)
	else
		-- dev:AC_Generator_1_on(false)
		-- dev:AC_Generator_2_on(false)
		-- dev:DC_Battery_on(false)
	end
end

----------FUNCTION-UPDATE----------
function update()
	JFS_GENERATOR()
	ELEC_SYSTEM:set(SYSTEM_STAT)
	
end

need_to_be_closed = false -- close lua state after initialization