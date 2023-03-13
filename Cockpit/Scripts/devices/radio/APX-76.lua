-- AN/APX-76 Identification Friend or Foe (IFF)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(APX76_commands.IFF_MASTER,	0, false)
	dev:performClickableAction(APX76_commands.MODE_1_SEL,	0, false)
	dev:performClickableAction(APX76_commands.MODE_2_SEL,	0, false)
	dev:performClickableAction(APX76_commands.MODE_3A_SEL,	0, false)
	dev:performClickableAction(APX76_commands.MODE_C_SEL,	0, false)
	dev:performClickableAction(APX76_commands.MODE_4_SEL,	0, false)
	dev:performClickableAction(APX76_commands.MODE_4_IND,	0, false)
	dev:performClickableAction(APX76_commands.MODE_4_FUNC,	0, false)
	dev:performClickableAction(APX76_commands.IFF_ANT_SEL,	0, false)
	
	dev:performClickableAction(APX76_commands.AAI_MASTER,	0, false)

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(APX76_commands.MODE_1_SEL, 1, false)
		dev:performClickableAction(APX76_commands.MODE_2_SEL, 1, false)
		dev:performClickableAction(APX76_commands.MODE_3A_SEL, 1, false)
		dev:performClickableAction(APX76_commands.MODE_C_SEL, 1, false)
		dev:performClickableAction(APX76_commands.MODE_4_SEL, 0, false)
		dev:performClickableAction(APX76_commands.MODE_4_IND, 0, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(APX76_commands.MODE_1_SEL, -1, false)
		dev:performClickableAction(APX76_commands.MODE_2_SEL, -1, false)
		dev:performClickableAction(APX76_commands.MODE_3A_SEL, -1, false)
		dev:performClickableAction(APX76_commands.MODE_C_SEL, -1, false)
		dev:performClickableAction(APX76_commands.MODE_4_SEL, -1, false)
		dev:performClickableAction(APX76_commands.MODE_4_IND, -1, false)
	end
	
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == APX76_commands.IFF_MASTER then
		IFF_MASTER = value
	end
-- -1 = OUT, 1 = ON
	if command == APX76_commands.MODE_1_SEL then
		MODE_1_SEL = value
	end
	if command == APX76_commands.MODE_2_SEL then
		MODE_2_SEL = value
	end
	if command == APX76_commands.MODE_3A_SEL then
		MODE_3A_SEL = value
	end
	if command == APX76_commands.MODE_C_SEL then
		MODE_C_SEL = value
	end
	if command == APX76_commands.MODE_4_SEL then
		MODE_4_SEL = value
	end
	if command == APX76_commands.MODE_4_FUNC then
		MODE_4_FUNC = value
	end
-- -1 = OFF, 0 = Audio Rec, 1 = Light
	if command == APX76_commands.MODE_4_IND then
		MODE_4_IND = value
	end
	if command == APX76_commands.IFF_ANT_SEL then
		IFF_ANT_SEL = value
	end

	if command == APX76_commands.AAI_MASTER then
		AAI_MASTER = value
	end
	

--[[ draw_args not defined
	if command == APX76_commands.M3A_IP then
		M3A_IP = value
	end
	if command == APX76_commands.AAI_MODE
		AAI_MODE = value
	end
]]
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end