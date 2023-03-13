-- Built In Test System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)


----------FUNCTION-POST-INIT----------
function post_initialize()
	dev:performClickableAction(BIT_commands.BIT_SEL,	0, false)
	dev:performClickableAction(BIT_commands.RCALL,		0, false)
	dev:performClickableAction(BIT_commands.INITIATE,	0, false)
	dev:performClickableAction(BIT_commands.CC_RESET,	0, false)

	if birth == "GROUND_HOT" or birth == "AIR_HOT" then
	elseif birth == "GROUND_COLD" then
	end
end
----------FUNCTION-SETCOMMAND----------
function SetCommand(command,value)

end
----------FUNCTION-UPDATE----------
function update()
end