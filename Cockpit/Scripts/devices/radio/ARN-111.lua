-- AN/ARN-111 Tactical Air Navigation System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(ARN111_commands.TCN_XY, 1, false)

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == ARN111_commands.TCN_XY then
		TCN_XY = value
	end


--[[ draw_args not defined
	if command == ARN111_commands.TCN_MODE then
		TCN_MODE = value
	end
]]
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end