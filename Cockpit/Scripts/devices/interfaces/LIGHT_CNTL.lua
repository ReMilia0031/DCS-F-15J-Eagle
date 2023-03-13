-- Lighting System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.02
make_default_activity(update_time_step)
local aircraft = get_aircraft_type()

local connector = {}
connector["TMB_MISC_TAXI-LIGHT"] = nil

local _var_EXT_ACOL, _var_EXT_POSN, _var_EXT_FORM,PROC, _var_EXT_LDG
local _NAV_FLASH_stat	= 0	-- 0:Off, 1:Flashing
local _NAV_FLASH		= 0
local _NAV_FLASH_s		= 1.5
local _ACOL_FLASH_stat	= 0	-- 0:Off, 1:Flashing
local _ACOL_FLASH		= 0
local _ACOL_FLASH_s		= 1

local LIGHT_SYSTEM		= get_param_handle("LIGHT_SYS_READY")
local ELEC_SYSTEM		= get_param_handle("ELEC_SYS_READY")
local ENGINE_SYSTEM		= get_param_handle("ENGINE_SYSTEM_READY")

local function LIGHT_SYSTEM_CHECK()
	if _var_EXT_ACOL == 1 and _var_EXT_POSN > 0 then
		PROC = 1
	else
		PROC = 0
	end
end

local function NAV_LIGHT_ON()
	set_aircraft_draw_argument_value(190,1) -- Navigation Light Right (Red) 
	set_aircraft_draw_argument_value(191,1) -- Navigation Light Right (Green) 
	set_aircraft_draw_argument_value(192,1) -- Navigation Light Tail (White)
end	
local function NAV_LIGHT_OFF()
	set_aircraft_draw_argument_value(190,0)
	set_aircraft_draw_argument_value(191,0) 
	set_aircraft_draw_argument_value(192,0)
end	

local function ANTI_COLLISION_ON()
	set_aircraft_draw_argument_value(199,1) -- Anti-Collision Light
end
local function ANTI_COLLISION_OFF()
	set_aircraft_draw_argument_value(199,0) -- Anti-Collision Light
end
	-- LT_CNTL_commands._180 = Cockpit-F-15C.edm, Args.180 Console, Instrument Lights / Keys.iCommandPlaneLightsOnOff

----------FUNCTION-POST-INIT----------
function post_initialize()
	connector["TMB_MISC_TAXI-LIGHT"] = get_clickable_element_reference("TMB_MISC_TAXI-LIGHT")

	dev:performClickableAction(LT_CNTL_commands.EXT_LDG,	0, false)
	dev:performClickableAction(LT_CNTL_commands.EXT_ACOL,	0, false)
	dev:performClickableAction(LT_CNTL_commands.EXT_FORM,	0, false)
	dev:performClickableAction(LT_CNTL_commands.EXT_POSN,	0, false)

	dev:performClickableAction(LT_CNTL_commands.INT_CNSL_L,		0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_CNSL_R,		0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_INST_AUX,	0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_INST_FLT,	0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_INST_ENG,	0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_INST_STBY,	-1, false)
	dev:performClickableAction(LT_CNTL_commands.INT_WARN_LT,	0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_FLOOD,		0, false)
	dev:performClickableAction(LT_CNTL_commands.INT_LT_TEST,	-1, false)

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(LT_CNTL_commands.EXT_ACOL, 1.0, false)
		dev:performClickableAction(LT_CNTL_commands.EXT_POSN,	0.5, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(LT_CNTL_commands.EXT_ACOL, -1.0, false)
		dev:performClickableAction(LT_CNTL_commands.EXT_POSN, 0.0, false)
	end	
	
	LIGHT_SYSTEM_CHECK()
end

----------FUNCTION-SETCOMMAND----------
function SetCommand(command,value)

	if ENGINE_SYSTEM:get() == 1 then

		if command == LT_CNTL_commands.INT_INST_STBY then
			dev:performClickableAction(LT_CNTL_commands._180,value)
			dev:performClickableAction(LT_CNTL_commands.INT_INST_FLT,value)
		end
		if command == LT_CNTL_commands.INT_INST_FLT then
			dev:performClickableAction(LT_CNTL_commands._180,value)
		end
		
		-- Landing /Taxy Light
		if command == LT_CNTL_commands.EXT_LDG then
			dispatch_action(nil,Keys.iCommandPlaneHeadLightOnOff)
			-- _var_EXT_LDG = value
		end
		-- Anti-Collision Light
		if command == LT_CNTL_commands.EXT_ACOL then
			_var_EXT_ACOL = value
			if _var_EXT_ACOL == 1 then
				_ACOL_FLASH_stat = 1
			elseif _var_EXT_ACOL == -1 then
				_ACOL_FLASH_stat = 0
			end
		end
		-- Position Light
		if command == LT_CNTL_commands.EXT_POSN then
			_var_EXT_POSN = round(value*10,0)
			if _var_EXT_POSN >= 0 and _var_EXT_POSN <= 6 then
				_NAV_FLASH_stat = 0
				set_aircraft_draw_argument_value(190,_var_EXT_POSN/10) -- Navigation Light Left (Red) 
				set_aircraft_draw_argument_value(191,_var_EXT_POSN/10) -- Navigation Light Right (Green) 
				set_aircraft_draw_argument_value(192,_var_EXT_POSN/10) -- Navigation Light Tail (White)
			elseif _var_EXT_POSN == 7 then
				_NAV_FLASH_stat = 1 
			end
		end

		if _NAV_FLASH_stat == 1 then
			_NAV_FLASH = _NAV_FLASH_s
		elseif _NAV_FLASH_stat == 0 then
			_NAV_FLASH = 0
		end
		if _ACOL_FLASH_stat == 1 then
			_ACOL_FLASH = _ACOL_FLASH_s
		elseif _ACOL_FLASH_stat == 0 then
			_ACOL_FLASH = 0
		end
		if command == LT_CNTL_commands.EXT_FORM then
			_var_EXT_FORM = value
		end
		LIGHT_SYSTEM_CHECK()
	end
end
----------FUNCTION-UPDATE----------
function update()

----------Sync landing and taxi lights with lever via Mainpanel
	-- if get_aircraft_draw_argument_value(208) == 1 then
		-- _var_EXT_LDG:set(1)
	-- elseif get_aircraft_draw_argument_value(209) == 1 then
		-- _var_EXT_LDG:set(-1)
	-- elseif get_aircraft_draw_argument_value(208) == 0 and get_aircraft_draw_argument_value(209) == 0 then
		-- _var_EXT_LDG:set(0)
	-- end

----------Update Connectors Position Step 3/3
	if connector["TMB_MISC_TAXI-LIGHT"] then
		connector["TMB_MISC_TAXI-LIGHT"]:update()
	end

----------Navigation lights flash logic
	if _NAV_FLASH > 0 then
		_NAV_FLASH = _NAV_FLASH - update_time_step
		if _NAV_FLASH <= 0 then
			_NAV_FLASH = _NAV_FLASH_s
		end
		if _NAV_FLASH >= 0.5 and _NAV_FLASH >= 1.00 then
			NAV_LIGHT_ON()
		else
			NAV_LIGHT_OFF()
		end
	end

----------Collision lights flash logic
	if _ACOL_FLASH > 0 then
		_ACOL_FLASH = _ACOL_FLASH - update_time_step
		if _ACOL_FLASH <= 0 then
			_ACOL_FLASH = _ACOL_FLASH_s
		end
		if _ACOL_FLASH >= 0.5 and _ACOL_FLASH <= 0.6 then
			ANTI_COLLISION_ON()
		else
			ANTI_COLLISION_OFF()
		end
	end

----------Sync Formation lights with rotary
	set_aircraft_draw_argument_value(88,_var_EXT_FORM) -- Formation Light

	LIGHT_SYSTEM:set(PROC)

end

need_to_be_closed = false -- close lua state after initialization
