-- Flight Controls

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)


----------
	local ias = sensor_data.getIndicatedAirSpeed()*MPS_TO_KNOTS
	local mach = sensor_data.getMachNumber()
	local pitch = sensor_data.getPitch()*RADIANS_TO_DEGREES
	local roll = sensor_data.getRoll()*RADIANS_TO_DEGREES
	local heading = sensor_data.getMagneticHeading()*RADIANS_TO_DEGREES
	local alt = sensor_data.getBarometricAltitude()*meters_to_feet
	local g = sensor_data.getVerticalAcceleration()
	local vs = sensor_data.getVerticalVelocity()

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
end	

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()
end