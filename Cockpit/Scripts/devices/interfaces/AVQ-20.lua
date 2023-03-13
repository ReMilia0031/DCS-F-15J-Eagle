-- AN/AVQ-20 Head-Up Display

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(AVQ20_commands.BRT_MODE,		1, false)	-- Auto Brightness Control
	dev:performClickableAction(AVQ20_commands.SYM_REJ,		1, false)	-- Remove Airspeed, Heading, Altitude, AOA, Pitch Scales.
	dev:performClickableAction(AVQ20_commands.RTCL_MODE,	0, false)	-- Primary Reticle Cage Setting 
	dev:performClickableAction(AVQ20_commands.COLOR_MODE,	1, false)	-- Day/Night Mode
	dev:performClickableAction(AVQ20_commands.SYM_BRT,		0, false)	-- HUD Symbol Brightness 
	dev:performClickableAction(AVQ20_commands.STBY_RTCL,	0, false)	-- Standby Reticle Brightness
	dev:performClickableAction(AVQ20_commands.RTCL_DEPR,	0, false)	-- Reticle Depression Setting
		
	if birth == "GROUND_HOT" or birth == "AIR_HOT" then
		dev:performClickableAction(AVQ20_commands.SYM_BRT, 0.75, false)
    elseif birth == "GROUND_COLD" then
		dev:performClickableAction(AVQ20_commands.SYM_BRT, 0, false)
    end
end

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

	if command == AVQ20_commands.BRT_MODE then
		BRT_MODE = value
	end

	if command == AVQ20_commands.SYM_BRT and value > 0.5 then
		dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
		dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
		dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
		dispatch_action(nil,Keys.iCommandHUDBrightnessUp)
	elseif command == AVQ20_commands.SYM_BRT and value < 0.5 then
		dispatch_action(nil,Keys.iCommandHUDBrightnessDown)
		dispatch_action(nil,Keys.iCommandHUDBrightnessDown)
		dispatch_action(nil,Keys.iCommandHUDBrightnessDown)
		dispatch_action(nil,Keys.iCommandHUDBrightnessDown)
	end

	if command == AVQ20_commands.COLOR_MODE then
		dispatch_action(nil,Keys.iCommandBrightnessILS)
	end

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end