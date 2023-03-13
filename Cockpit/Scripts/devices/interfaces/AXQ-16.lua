-- AN/AXQ-16 Video Tame Recording System (VTRS)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(AXQ16_commands.VTRS_MODE,	0, false)
	dev:performClickableAction(AXQ16_commands.VTRS_SEL,		0, false)
	dev:performClickableAction(AXQ16_commands.VTRS_HUD,		0, false)
	
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(AXQ16_commands.VTRS_MODE, 1, false)
	dev:performClickableAction(AXQ16_commands.VTRS_HUD, 1, false)
	elseif birth=="GROUND_COLD" then
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

end
