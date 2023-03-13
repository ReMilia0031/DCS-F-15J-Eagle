-- Vertical Situation Display

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
		dev:performClickableAction(VSD_commands.VSD_SYM_BRT,	0.5, false)	-- Symbol Brightness Kbon
		dev:performClickableAction(VSD_commands.VSD_CONT_LVL,	0.5, false)	-- Contrast Knob
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(VSD_commands.VSD_SYM_BRT,	0, false)	-- Symbol Brightness Kbon
		dev:performClickableAction(VSD_commands.VSD_CONT_LVL,	0, false)	-- Contrast Knob
	end
	
	dev:performClickableAction(VSD_commands.VSD_BRT_MODE,	1, false)	-- Contrast Switch
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)


end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end