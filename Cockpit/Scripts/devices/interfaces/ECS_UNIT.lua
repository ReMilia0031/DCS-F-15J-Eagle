-- Environmental Control System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(ECS_commands.WSHLD_ANTI_ICE,	-1, false)
	dev:performClickableAction(ECS_commands.PITOT_HEAT,		-1, false)
	dev:performClickableAction(ECS_commands.ENG_HEAT,		0, false)
	dev:performClickableAction(ECS_commands.ANTI_FOG_TEMP,	0, false)
	dev:performClickableAction(ECS_commands.CKPT_TEMP_MODE,	-1, false)
	dev:performClickableAction(ECS_commands.CKPT_TEMP,		0, false)
	dev:performClickableAction(ECS_commands.AIR_SOURCE,		0, false)
	dev:performClickableAction(ECS_commands.EMER_VENT,		0, false)

	dev:performClickableAction(ECS_commands.OXY_TEST,		0, false)	-- Oxygen Quantity Gage Test
	dev:performClickableAction(ECS_commands.OXY_EMER,		0, false)	-- Emergency Lever
	dev:performClickableAction(ECS_commands.OXY_DLTR,		-1, false)	-- Diluter Lever
	dev:performClickableAction(ECS_commands.OXY_SPLY,		-1, false)	-- Supply Lever

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(ECS_commands.AIR_SOURCE,		2, false)
		dev:performClickableAction(ECS_commands.CKPT_TEMP_MODE,	1, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(ECS_commands.AIR_SOURCE,		0, false)
		dev:performClickableAction(ECS_commands.CKPT_TEMP_MODE,	-1, false)
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == ECS_commands.WSHLD_ANTI_ICE then
		WSHLD_ANTI_ICE = value
	end
	if command == ECS_commands.PITOT_HEAT then
		PITOT_HEAT = value
	end

	if command == ECS_commands.ENG_HEAT then
		ENG_HEAT = value
	end
	if command == ECS_commands.ANTI_FOG_TEMP then
		ANTI_FOG_TEMP = value
	end

	if command == ECS_commands.CKPT_TEMP_MODE then
		CKPT_TEMP_MODE = value
	end

	if command == ECS_commands.CKPT_TEMP then
		CKPT_TEMP = value
	end

	if command == ECS_commands.AIR_SOURCE then
		AIR_SOURCE = value
	end
	
	if command == ECS_commands.EMER_VENT then
		EMER_VENT = value
	end

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

end