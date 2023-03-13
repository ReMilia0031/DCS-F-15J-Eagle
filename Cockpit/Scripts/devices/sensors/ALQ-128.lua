-- AN/ALQ-128 Electronic Warfare Warning Set (EWWS)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006 --0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(ALQ128_commands.EWWS_PWR,	0, false)
	dev:performClickableAction(ALQ128_commands.EWWS_TONE,	1, false)
	dev:performClickableAction(ALQ128_commands.EWWS_PODS,	0, false)
	
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(ALQ128_commands.EWWS_PWR, 1, false)
		dev:performClickableAction(ALQ128_commands.EWWS_PODS, 1, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(ALQ128_commands.EWWS_PWR, -1, false)
	dev:performClickableAction(ALQ128_commands.EWWS_PODS, -1, false)
	end

end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == ALQ128_commands.EWWS_PWR then
		EWWS_PWR = value
	end
	if command == ALQ128_commands.EWWS_TONE then
		EWWS_TONE = value
	end
	if command == ALQ128_commands.EWWS_PODS then
		EWWS_PODS = value
	end
	

--[[ draw_args not defined
	if command == ALQ128_commands.EWWS_ENBL then
		EWWS_ENBL = value
	end
]]
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end