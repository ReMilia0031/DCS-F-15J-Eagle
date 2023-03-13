-- AN/ALR-56C Radar Warning Receivers

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(ALR56C_commands.RWR_PWR,		-1, false)	-- TEWS Control Panel : RWR Power Control
	dev:performClickableAction(ALR56C_commands.RWR_MODE,	1, false)	-- TEWS IA Control Panel : RWR Power Control
	dev:performClickableAction(ALR56C_commands.TEWS_INT,	0, false)	-- TEWS Display Unit : Intencity Control
	dev:performClickableAction(ALR56C_commands.TONE_DSBL,	0, false)	-- Integrated Comm Control Panel : TEWS Launch Disable
	
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(ALR56C_commands.RWR_PWR,	1, false)
			dev:performClickableAction(ALR56C_commands.TEWS_INT,	0.5, false)
	elseif birth=="GROUND_COLD" then
	end
	
end

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

	if command == device_commands.RWR_PWR and value == 1 then
		dispatch_action(nil,Keys.iCommandChangeRWRMode)
	end

	if command == ALR56C_commands.TEWS_INT then
		TEWS_INT = value
	end

	if command == device_commands.CLIC_RWR_SOUND and value > 0 then
		dispatch_action(nil,Keys.iCommandPlaneThreatWarnSoundVolumeUp)
	elseif command == device_commands.CLIC_RWR_SOUND and value < 0 then
		dispatch_action(nil,Keys.iCommandPlaneThreatWarnSoundVolumeDown)
	end
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

end
