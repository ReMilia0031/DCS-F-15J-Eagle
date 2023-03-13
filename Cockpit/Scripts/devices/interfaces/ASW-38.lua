-- AN/ASW-38 Automatic Flight Control Set (AFCS)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	
		dev:performClickableAction(ASW38_commands.CAS_PITCH,	0, false)
		dev:performClickableAction(ASW38_commands.CAS_ROLL,		0, false)
		dev:performClickableAction(ASW38_commands.CAS_YAW,		0, false)
		dev:performClickableAction(ASW38_commands.ATT_HOLD, 	-1, false)
		dev:performClickableAction(ASW38_commands.ALT_HOLD, 	-1, false)
		dev:performClickableAction(ASW38_commands.TO_TRIM,		0, false)
		
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(ASW38_commands.CAS_PITCH,	1, false)
		dev:performClickableAction(ASW38_commands.CAS_ROLL,		1, false)
		dev:performClickableAction(ASW38_commands.CAS_YAW,		1, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(ASW38_commands.CAS_PITCH,	-1, false)
		dev:performClickableAction(ASW38_commands.CAS_ROLL,		-1, false)
		dev:performClickableAction(ASW38_commands.CAS_YAW,		-1, false)
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == ASW38_commands.CAS_PITCH then
		CAS_PITCH = value
	end
	if command == ASW38_commands.CAS_ROLL then
		CAS_ROLL = value
	end
	if command == ASW38_commands.CAS_YAW then
		CAS_YAW = value
	end

	if command == ASW38_commands.CLIC_NAVMODES and value ~=0 then
		dispatch_action(nil,Keys.iCommandPlaneModeNAV)
	end
	
	if command == ASW38_commands.CLIC_WAYPOINT and value > 0 then
		dispatch_action(nil,Keys.iCommandPlaneChangeTarget)
	elseif command == ASW38_commands.CLIC_WAYPOINT and value < 0 then
		dispatch_action(nil,Keys.iCommandPlaneUFC_STEER_DOWN)
	end

	if command == ASW38_commands.TO_TRIM then
		if value == 1 then
			dispatch_action(nil,Keys.iCommandPlaneTrimOn)
		elseif  value == 0 then
			dispatch_action(nil,Keys.iCommandPlaneTrimOff)
		end
	end

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end