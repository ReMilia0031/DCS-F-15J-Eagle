-- AN/ASN-108 Attitude Heading Reference System

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
    dev:performClickableAction(ASN108_commands.AHRS_MODE,	0, false)	-- AHRS Mode Selector
    dev:performClickableAction(ASN108_commands.AHRS_ERECT,	0, false)	-- AHRS Fast Erection
    dev:performClickableAction(ASN108_commands.CMPS_NS,		1, false)	-- Hemisphere Selector
    dev:performClickableAction(ASN108_commands.CMPS_SYNC,	0, false)	-- Compass Synchronization
    dev:performClickableAction(ASN108_commands.LAT_CNTL,	0, false)	-- Latitude Control
	
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