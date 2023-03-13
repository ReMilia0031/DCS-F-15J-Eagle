-- Main Instruments

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

local connector = {}
connector["MIRROR_1"] = nil
connector["MIRROR_2"] = nil
connector["MIRROR_3"] = nil

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
	end

	connector["MIRROR_1"] = get_clickable_element_reference("MIRROR_1")
	connector["MIRROR_2"] = get_clickable_element_reference("MIRROR_2")
	connector["MIRROR_3"] = get_clickable_element_reference("MIRROR_3")
	
	dev:performClickableAction(INST_commands.ADI_REF,	0, false)
	dev:performClickableAction(INST_commands.ADI_TRIM,	0, false)
	dev:performClickableAction(INST_commands.HSI_HDG,	0, false)
	dev:performClickableAction(INST_commands.HSI_CRS,	0, false)
	
	dev:performClickableAction(INST_commands.STEER_MODE_SEL,	0, false)
	
	
	dev:performClickableAction(INST_commands.LENG_OVTEMP,	0, false)
	dev:performClickableAction(INST_commands.RENG_OVTEMP,	0, false)
	dev:performClickableAction(INST_commands.AMAD_OVTEMP,	0, false)
	dev:performClickableAction(INST_commands.FIRE_MODE,	0, false)
	
	dev:performClickableAction(INST_commands.MIRROR_CNTL,	0, false)

	--print_message_to_user("")
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

	if command == INST_commands.MIRROR_CNTL and
		value == 1 then
		dispatch_action(nil,Keys.iCommandToggleMirrors)
	end

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

	if connector["MIRROR_1"] then
		connector["MIRROR_1"]:update()
	end
	
	if connector["MIRROR_2"] then
		connector["MIRROR_2"]:update()
	end
	
	if connector["MIRROR_3"] then
		connector["MIRROR_3"]:update()
	end

end