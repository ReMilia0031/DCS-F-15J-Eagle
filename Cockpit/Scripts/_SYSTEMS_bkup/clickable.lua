
dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")


local update_time_step = 0.02 --update will be called 50 times per second
make_default_activity(update_time_step)
sensor_data                 = get_base_data()
local dev                   = GetSelf()
local aircraft              = get_aircraft_type()
--------------------------------------------------------------------
--  Update Connectors Position              Step 1/3
local connector = {}
connector["MIRROR_1"]                       = nil
connector["MIRROR_2"]                       = nil
connector["MIRROR_3"]                       = nil

--------------------------------------------------------------------
--  Variables Declaration
local mastermodeF15 = 0

function reset_mastermodeF15(mastermodeF15)
	local max_mastermodeF15 = 5
	if mastermodeF15 > max_mastermodeF15 then
		return  2
	elseif mastermodeF15 < 2 then
		return  2
	else
		return mastermodeF15
	end
end

function post_initialize()
	--print_message_to_user(aircraft,15)
	--print_message_to_user("DEV.CLICKABLE_GENERIC_SYSTEM",0.2)

		--dispatch_action(nil,Keys.iCommandCockpitClickModeOnOff)
	--show_param_handles_list()
	local birth = LockOn_Options.init_conditions.birth_place
--------------------------------------------------------------------------------------------------------
--  Update Connectors Position              Step 2/3
	connector["MIRROR_1"] 			            = get_clickable_element_reference("MIRROR_1")
	connector["MIRROR_2"] 			            = get_clickable_element_reference("MIRROR_2")
	connector["MIRROR_3"] 			            = get_clickable_element_reference("MIRROR_3")

--------------------------------------------------------------------------------------------------------

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
	end
end

function SetCommand(command,value)
	if command == device_commands.CLIC_MIRROR and
		value ==  1 then
		dispatch_action(nil,Keys.iCommandToggleMirrors)
	end

	if command == device_commands.CLIC_MODE_F15 and value > 0 then
		mastermodeF15 = mastermodeF15 + 1
	elseif command == device_commands.CLIC_MODE_F15 and value < 0 then
		mastermodeF15 = mastermodeF15 - 1
	end
	if command == device_commands.CLIC_MODE_F15 then
		if mastermodeF15 == 2 then
			dispatch_action(nil,Keys.iCommandPlaneModeBVR)
		elseif mastermodeF15 == 3 then
			dispatch_action(nil,Keys.iCommandPlaneModeVS)
		elseif mastermodeF15 == 4 then
			dispatch_action(nil,Keys.iCommandPlaneModeBore)
		elseif mastermodeF15 == 5 then
			dispatch_action(nil,Keys.iCommandPlaneModeFI0)
		end
		mastermodeF15 = reset_mastermodeF15(mastermodeF15)
	end
end


function update()

--------------------------------------------------------------------
--  Update Connectors Position              Step 3/3

	if  connector["MIRROR_1"] then
		connector["MIRROR_1"]:update()
	end
	if  connector["MIRROR_2"] then
		connector["MIRROR_2"]:update()
	end
	if  connector["MIRROR_3"] then
		connector["MIRROR_3"]:update()
	end
--------------------------------------------------------------------
end

need_to_be_closed = false -- close lua state after initialization



