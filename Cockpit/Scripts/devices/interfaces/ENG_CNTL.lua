-- Engines Control Systems

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

local aircraft = get_aircraft_type()

--------------------------------------------------------------------
--  Variables Declaration
local _var_DEEC_L, _var_DEEC_R, _var_ENG_MSTR_L, _var_ENG_MSTR_R
local L_ENG_CNTL_STAT			= 0
local R_ENG_CNTL_STAT			= 0
local ENG_L_DCNT				= 0
local ENG_R_DCNT				= 0
local DEEC_L_T					= -1
local DEEC_R_T					= -1
local DECC_OFF_TIMER			= 0.1
local STARTER_CNTL_TIMER		= 25
local STARTER_CNTL_CNT			= 0
local ENG_L_START				= 0
local ENG_L_CNT					= 0
local ENG_START_TIMER			= 0.5
local JFS_ACCUM					= 0

local L_ENG_START_STAT			= 0
local R_ENG_START_STAT			= 0
local _var_STARTER_CNTL			= 0

local OIL_PRESS_L = get_param_handle("IND_HYD_PRESS_L")
local OIL_PRESS_R = get_param_handle("IND_HYD_PRESS_R")

local OIL_PRESS_L = get_param_handle("IND_OIL_PRESS_L")
local OIL_PRESS_R = get_param_handle("IND_OIL_PRESS_R")

local LT_CAUT_L_EEC = get_param_handle("LT_CAUT_L_EEC")
local LT_CAUT_R_EEC = get_param_handle("LT_CAUT_R_EEC")
local LT_CAUT_L_BLEED = get_param_handle("LT_CAUT_L_BLEED")
local LT_CAUT_R_BLEED = get_param_handle("LT_CAUT_R_BLEED")
local LT_CAUT_LBST_PMP = get_param_handle("LT_CAUT_LBST_PMP")
local LT_CAUT_RBST_PMP = get_param_handle("LT_CAUT_RBST_PMP")
local LT_CAUT_HYDRAULIC = get_param_handle("LT_CAUT_HYDRAULIC")
local LT_CAUT_OIL_PRESS = get_param_handle("LT_CAUT_OIL_PRESS")
local LT_CAUT_L_INLET = get_param_handle("LT_CAUT_L_INLET")
local LT_CAUT_R_INLET = get_param_handle("LT_CAUT_R_INLET")
local LT_CAUT_BST_SYS = get_param_handle("LT_CAUT_BST_SYS")
local LT_CAUT_EMER_BST = get_param_handle("LT_CAUT_EMER_BST")

local LT_JFS_READY				= get_param_handle("LT_JFS_READY")
local JFS_READY				= get_param_handle("JFS_READY")



local PROC						= 0
local FUEL_SYSTEM				= get_param_handle("FUEL_SYS_READY")
local ELEC_SYSTEM				= get_param_handle("ELEC_SYS_READY")
local LIGHT_SYSTEM				= get_param_handle("LIGHT_SYS_READY")
local ENGINE_SYSTEM				= get_param_handle("ENGINE_SYSTEM_READY")

local STARTER_CNTL_L			= get_param_handle("STARTER_CNTL_L")
local ENG_THROTTLE_L			= get_param_handle("BASE_SENSOR_THROTTLE_POS_LEFT")
local ENG_THROTTLE_R			= get_param_handle("BASE_SENSOR_THROTTLE_POS_LEFT")
local ENG_RPM_L					= get_param_handle("BASE_SENSOR_ENGINE_RPM_LEFT")
local ENG_RPM_R					= get_param_handle("BASE_SENSOR_ENGINE_RPM_RIGHT")
local CANOPY_POS				= get_param_handle("BASE_SENSOR_CANOPY_POS")
local TEST						= get_param_handle("TEST")

--[[ sensor_data_ref
sensor_data.getThrottleLeftPosition(),
sensor_data.getThrottleRightPosition(),
sensor_data.getEngineLeftFuelConsumption(),
sensor_data.getEngineLeftRPM(),
sensor_data.getEngineLeftTemperatureBeforeTurbine(),
math.rad(180) * (sensor_data.getEngineLeftRPM()),
sensor_data.getEngineLeftTemperatureBeforeTurbine()),
sensor_data.getEngineRightFuelConsumption(),
sensor_data.getEngineRightRPM(),
sensor_data.getEngineRightTemperatureBeforeTurbine(),
math.rad(180) * (sensor_data.getEngineRightRPM()),
sensor_data.getEngineRightTemperatureBeforeTurbine()),
]]

----------FUNCTION-POST-INIT----------
function post_initialize()

	dev:performClickableAction(ENG_CNTL_commands.DEEC_L,		0, false)	-- Left Engine Control Switch
	dev:performClickableAction(ENG_CNTL_commands.DEEC_R,		0, false)	-- Right Engine Control Switch
	dev:performClickableAction(ENG_CNTL_commands.ENG_MSTR_L,	0, false)	-- Left Engine Master Switch
	dev:performClickableAction(ENG_CNTL_commands.ENG_MSTR_R,	0, false)	-- Right Engine Master Switch
	dev:performClickableAction(ENG_CNTL_commands.STARTER_CNTL,	-1, false)	-- JFS Starter Switch
	dev:performClickableAction(ENG_CNTL_commands.JFS_CNTL,		0, false)	-- JFS Control Handle
	dev:performClickableAction(ENG_CNTL_commands.ENG_FF_L,		0, false)	-- Left Engine Start Fuel Flow Switch (F100-PW-100)
	dev:performClickableAction(ENG_CNTL_commands.ENG_FF_R,		0, false)	-- Right Engine Start Fuel Flow Switch (F100-PW-100)
	dev:performClickableAction(ENG_CNTL_commands.INLET_L,		1, false)	-- Left Inlet Ramp Switch
	dev:performClickableAction(ENG_CNTL_commands.INLET_R,		1, false)	-- Right Inlet Ramp Switch


	if birth == "GROUND_HOT" or birth == "AIR_HOT" then
		dev:performClickableAction(ENG_CNTL_commands.DEEC_L,		1, false)
		dev:performClickableAction(ENG_CNTL_commands.DEEC_R,		1, false)
		dev:performClickableAction(ENG_CNTL_commands.ENG_MSTR_L,	1, false)
		dev:performClickableAction(ENG_CNTL_commands.ENG_MSTR_R,	1, false)
	elseif birth == "GROUND_COLD" then
		dev:performClickableAction(ENG_CNTL_commands.DEEC_L,		-1, false)
		dev:performClickableAction(ENG_CNTL_commands.DEEC_R,		-1, false)
	end

	print_message_to_user("ENG_CNTL_post_initialize")
end

local function ENG_CHECK_SYSTEMS()
	if LIGHT_SYSTEM:get() == 1 and FUEL_SYSTEM:get() == 1 and ELEC_SYSTEM:get() == 1 then
		PROC = 1
	else
		PROC = 0
	end
end

----------FUNCTION-SETCOMMAND----------
function SetCommand(command,value)
--[[
	iCommandPlaneThrustCommon	= 2004;
	iCommandPlaneThrustLeft		= 2005;
	iCommandPlaneThrustRight	= 2006;
	]]

--===========================================================
	if command == ENG_CNTL_commands.DEEC_L then
		_var_DEEC_L = value
		if value == -1 then
			DEEC_L_T = DECC_OFF_TIMER
		end
		if value == 1 then
			DEEC_L_T = -1
		end
	end

	if command == ENG_CNTL_commands.DEEC_R then
		_var_DEEC_R = value
		if value == -1 then
			DEEC_R_T = DECC_OFF_TIMER
		end
		if value == 1 then
			DEEC_R_T = -1
		end
	end

--===========================================================
	if command == ENG_CNTL_commands.STARTER_CNTL then
		_var_STARTER_CNTL = value
	end

	if command == ENG_CNTL_commands.JFS_CNTL then
		_var_JFS_CNTL = value
		JFS_ACCUM = 1
	end

--===========================================================
	if command == ENG_CNTL_commands.ENG_MSTR_L then
		_var_ENG_MSTR_L = value
	end

	if command == ENG_CNTL_commands.ENG_MSTR_R then
		_var_ENG_MSTR_R = value
	end

--===========================================================
	if command == ENG_CNTL_commands.INLET_L then
		_var_INLET_CNTL_L = value
	end

	if command == ENG_CNTL_commands.INLET_R then
		_var_INLET_CNTL_R = value
	end
end

--===========================================================
function JET_FUEL_STARTER()
---------- JFS READY
	if _var_STARTER_CNTL == 1 and JFS_ACCUM == 1 and JFS_READY:get() == 0 then
		JFS_READY:set(1)
		LT_JFS_READY = 1
	end
---------- JFS Shuts down
	if sensor_data.getEngineLeftRPM() > 60 and sensor_data.getEngineRightRPM() > 60 then
		dev:performClickableAction(ENG_CNTL_commands.STARTER_CNTL, -1, false)
		JFS_READY:set(0)
		LT_JFS_READY = 0
	end



---------- Engine Start Control
	-- Left Engine Master Switch ON + JFS Starter Switch ON
	if _var_ENG_MSTR_L == 1 and _var_STARTER_CNTL == 1 then
		if L_ENG_START_STAT == 0 then
			L_ENG_START_STAT = 1
			dispatch_action(nil,Keys.iCommandLeftEngineStart)
		end
	end

	-- Right Engine Master Switch ON + JFS Starter Switch ON
	if _var_ENG_MSTR_R == 1 and _var_STARTER_CNTL == 1 then
		if R_ENG_START_STAT == 0 then
			R_ENG_START_STAT = 1
			dispatch_action(nil,Keys.iCommandRightEngineStart)
		end
	end
end

function ENGINE_CONTROL_SW()
---------- Engine Control Switches
	if _var_DEEC_L == -1 and L_ENG_CNTL_STAT == 1 then
		L_ENG_CNTL_STAT = 0
		LT_CAUT_L_EEC = 1
		set_aircraft_draw_argument_value(90,1)		-- Nozzle L
		if DEEC_L_T > 0 and DEEC_L_T ~= -1 then
			DEEC_L_T = DEEC_L_T - update_time_step
			if DEEC_L_T <= 0 then
				DEEC_L_T = DECC_OFF_TIMER
				if sensor_data.getEngineLeftRPM() > 80 then
					dispatch_action(nil,Keys.iCommandThrottle1Decrease)
					ENG_L_DCNT = ENG_L_DCNT + 1
				end
			end
		end
	end

	if _var_DEEC_L == 1 and L_ENG_CNTL_STAT == 0 then
		L_ENG_CNTL_STAT = 1
		LT_CAUT_L_EEC = 0
		if ENG_L_DCNT > 0 then
			dispatch_action(nil,Keys.iCommandThrottle1Increase)
			ENG_L_DCNT = ENG_L_DCNT - 1
			LT_CAUT_L_EEC = 0
		end
	end

	if _var_DEEC_R == -1 and R_ENG_CNTL_STAT == 1 then
		R_ENG_CNTL_STAT = 0
		LT_CAUT_R_EEC = 1
		set_aircraft_draw_argument_value(89,1)		-- Nozzle R
		if DEEC_R_T > 0 and DEEC_R_T ~= -1 then
			DEEC_R_T = DEEC_R_T - update_time_step
			if DEEC_R_T <= 0 then
				DEEC_R_T = DECC_OFF_TIMER
				if sensor_data.getEngineRightRPM() > 80 then
					dispatch_action(nil,Keys.iCommandThrottle2Decrease)
					ENG_R_DCNT = ENG_R_DCNT + 1
				end
			end
		end
	end

	if _var_DEEC_R == 1 and R_ENG_CNTL_STAT == 0 then
		R_ENG_CNTL_STAT = 1
		LT_CAUT_L_EEC = 0
		if ENG_R_DCNT > 0 then
			dispatch_action(nil,Keys.iCommandThrottle2Increase)
			ENG_R_DCNT = ENG_R_DCNT - 1
		end
	end
end

function HYD_PRESS_INDICATOR()
	HYD_PRESS_PC1 = 30 * (sensor_data.getEngineLeftRPM()* 100 / 60)
	HYD_PRESS_PC2 = 30 * (sensor_data.getEngineRightRPM()* 100 / 60)
	

end

function OIL_PRESS_INDICATOR()
	OIL_PRESS_L = 5 * (sensor_data.getEngineLeftRPM()-55)/45 + 40
	OIL_PRESS_R = 5 * (sensor_data.getEngineRightRPM()-55)/45 + 40
	
end

----------FUNCTION-UPDATE----------
function update()
JET_FUEL_STARTER()
ENGINE_CONTROL_SW()
HYD_PRESS_INDICATOR()
OIL_PRESS_INDICATOR()


	if sensor_data.getEngineLeftRPM() < 40 then
		LT_CAUT_L_BLEED = 1
	else
		LT_CAUT_L_BLEED = 0
	end

	if sensor_data.getEngineRightRPM() < 40 then
		LT_CAUT_R_BLEED = 1
	else
		LT_CAUT_R_BLEED = 0
	end

	if _var_INLET_CNTL_L == -1 or _var_INLET_CNTL_R == -1 then
		set_aircraft_draw_argument_value(78,0)
		set_aircraft_draw_argument_value(86,0)
		set_aircraft_draw_argument_value(87,-1)
	end
	
	ENGINE_SYSTEM:set(PROC)
end

need_to_be_closed = false -- close lua state after initialization

--[[ DEEC_L_T = DECC_OFF_TIMER
	90
	89
	iCommandThrottleIncrease	= 1032;
	iCommandThrottleDecrease	= 1033;
	iCommandThrottleStop		= 1034;
	iCommandThrottle1Increase	= 1035;
	iCommandThrottle1Decrease	= 1036;
	iCommandThrottle1Stop		= 1037;
	iCommandThrottle2Increase	= 1038;
	iCommandThrottle2Decrease	= 1039;
	iCommandThrottle2Stop		= 1040;
	iCommandLeftEngineStart		= 311;
	iCommandRightEngineStart	= 312;
	iCommandLeftEngineStop		= 313;
	iCommandRightEngineStop		= 314;
]]