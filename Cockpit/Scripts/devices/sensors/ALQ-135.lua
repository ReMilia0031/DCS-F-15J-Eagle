-- AN/ALQ-135E/(V) Internal Countermeasures Set(ICMS)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(ALQ135_commands.ICMS_PWR, -1, false)
	dev:performClickableAction(ALQ135_commands.ICMS_SET1, -1, false)	-- -1 = MAN, 1 = ON,
	dev:performClickableAction(ALQ135_commands.ICMS_SET2, -1, false)
	dev:performClickableAction(ALQ135_commands.ICMS_SET3, -1, false)
	dev:performClickableAction(ALQ135_commands.ICMS_MODE, 0, false)		-- -1 = STBY, 0 = AUTO, 1 = MAN

	if birth == "GROUND_HOT" or birth == "AIR_HOT" then
		dev:performClickableAction(ALQ135_commands.ICMS_MODE, 0, false)
	elseif birth == "GROUND_COLD" then
		dev:performClickableAction(ALQ135_commands.ICMS_MODE, -1, false)
	end
end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

	if command == ALQ135_commands.ICMS_PWR then
		ICMS_PWR = value
	end

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end