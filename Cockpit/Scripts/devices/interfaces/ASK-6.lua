-- AN/ASK-6 Air Data Computer

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
	elseif birth=="GROUND_COLD" then
	end

end	

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
--[[


sensor_data.getWOW_NoseLandingGear(),

math.deg(sensor_data.getAngleOfSlide()),
math.deg(sensor_data.getAngleOfAttack()),

math.rad(360)-sensor_data.getHeading(),

sensor_data.getBarometricAltitude(),
sensor_data.getRadarAltitude(),

math.deg(sensor_data.getPitch()),
math.deg(sensor_data.getRoll()),

sensor_data.getSelfAirspeed()
sensor_data.getIndicatedAirSpeed(),
sensor_data.getTrueAirSpeed()
sensor_data.getMachNumber(),
local v_ground_x, v_ground_y, v_ground_z = sensor_data.getSelfVelocity()


sensor_data.getTotalFuelWeight(),
]]
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

end