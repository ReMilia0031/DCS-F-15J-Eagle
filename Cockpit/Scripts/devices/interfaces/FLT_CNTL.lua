-- Flight Controls

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)
--------------------------------------------------------------------
--  Variables Declaration
local MECH_SYSTEM = get_param_handle("MECH_SYSTEM_READY")
--------------------------------------------------------------------
local function MECH_SYSTEM_CHECK_SYSTEMS()
	if EMER_BRAKE == 1 then
		PROC = 1
	else
		PROC = 0
	end
end
local connector = {}
connector["TBM_Wheels"] = nil

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
    dev:performClickableAction(FLT_CNTL_commands.RUD_TRIM,		0, false)
    dev:performClickableAction(FLT_CNTL_commands.ROLL_RATIO,	1, false)
    dev:performClickableAction(FLT_CNTL_commands.PITCH_RATIO,	1, false)
    dev:performClickableAction(FLT_CNTL_commands.EMER_GEAR,		0, false)
    dev:performClickableAction(FLT_CNTL_commands.EMER_BRAKE,	0, false)
    dev:performClickableAction(FLT_CNTL_commands.ANTISKID,		0, false)

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
	end

	connector["TBM_Wheels"] = get_clickable_element_reference("TBM_Wheels")
	MECH_SYSTEM_CHECK_SYSTEMS()
end	

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
    MECH_SYSTEM_CHECK_SYSTEMS()
	if command == FLT_CNTL_commands.LDG_GEAR and value == 1 then
		dispatch_action(nil,Keys.iCommandPlaneGear)
	end

	if command == FLT_CNTL_commands.EMER_BRAKE and value == 1 then
		dispatch_action(nil,Keys.iCommandPlaneWheelBrakeOff)
	else
		dispatch_action(nil,Keys.iCommandPlaneWheelBrakeOn)
    end
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()
    MECH_SYSTEM:set(PROC)
	if  connector["TBM_Wheels"] then
		connector["TBM_Wheels"]:update()
	end
end