-- AN/ASN-109 Inertial Navigation System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(ASN109_commands.NCI_MARK, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_OFLY, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_UPDT, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_OFST, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN1, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN2, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN3, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN4, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN5, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN6, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN7, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN8, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN9, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_BTN0, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_CLR, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_ENTR, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_RDY, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_INT, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_DATA, 0, false)
	dev:performClickableAction(ASN109_commands.NCI_MODE, 0, false)
	
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

end