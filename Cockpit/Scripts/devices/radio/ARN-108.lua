-- AN/ARN-108 Instruments Landing System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(ARN108_commands.ILS_PWR, 0.5, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(ARN108_commands.ILS_PWR, 0, false)
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == ARN108_commands.ILS_PWR then
		ILS_PWR = value
	end


--[[ draw_args not defined

]]
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end