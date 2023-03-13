-- AN/APG-82 Multi-target Tracking Radar

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

local aircraft = get_aircraft_type()
--------------------------------------------------------------------
--Variable declaration
local RADAR_MODE	= 0 -- 1:LRS 2:VS 3:SRS
local RADAR_STAT	= 0 -- -1:Off 0.5:Stby 1:Opr
local rdr_spl_mode	= 0 -- 0:Off 1:Flood
local scan_area		= 1
local r_timer		= 0
local s_timer		= 0
local RADAR_POWER	= 0
local SYS_MODE		= 0

--------------------------------------------------------------------
local RADAR_MODE_SEL = get_param_handle("RADAR_MODE_SEL")
local rdr_spl_mode_MODE = get_param_handle("rdr_spl_mode_MODE")

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

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
	dev:performClickableAction(APG82_commands.RDR_POWER, 0, false)		-- arg 488 0.0=OFF 0.1=STBY 0.2=OPR 0.3=EMERG
	dev:performClickableAction(APG82_commands.FRAME_STORE, 0, false)
	dev:performClickableAction(APG82_commands.SPL_MODE, 0, false)		-- arg 492 -0.1=OFF 0.0=MAN TRK 0.1=SNIFF 0.2=FLOOD
	dev:performClickableAction(APG82_commands.RDR_MODE_SEL, 0, false)	-- arg 493 0.0=LRS 0.1=VS 0.2=SRS 0.3=PULSE 0.4=BCN 0.5=DPLR 0.6=RNG 0.7=MAP
	dev:performClickableAction(APG82_commands.RDR_MODE_CNTR, -1, false)	-- arg 439 -1.0=MAN 1.0=AUTO
	dev:performClickableAction(APG82_commands.EL_SCAN, 0, false)
	dev:performClickableAction(APG82_commands.AZ_SCAN, 0, false)

	dev:performClickableAction(APG82_commands.MODE_AG, 0, false)
	dev:performClickableAction(APG82_commands.MODE_ADI, 0, false)
	dev:performClickableAction(APG82_commands.MODE_VI, 0, false)

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(APG82_commands.RDR_POWER, 2, false)
	elseif birth=="GROUND_COLD" then
		dev:performClickableAction(APG82_commands.RDR_POWER, 0, false)
	end

end
local function reset_scan_area(scan_area)
	local max_scan_area = 1
	if scan_area > max_scan_area then
		return 1
	elseif scan_area < 0 then
		return 0
	else
		return scan_area
	end
end

dev:listen_command(Keys.iCommandPlaneRadarOnOff)
dev:listen_command(Keys.iCommandPlaneModeNAV)
dev:listen_command(Keys.iCommandPlaneModeBVR)
dev:listen_command(Keys.iCommandPlaneModeVS)
dev:listen_command(Keys.iCommandPlaneModeBore)
dev:listen_command(Keys.iCommandPlaneModeFI0)
dev:listen_command(Keys.iCommandPlaneRadarChangeMode)
dev:listen_command(Keys.iCommandPlaneChangeRadarPRF)
dev:listen_command(Keys.iCommandRefusalTWS)

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)

-- Radar Power Control
	if command == APG82_commands.RDR_POWER then
		RADAR_POWER = value
	end

-- Radar Special Modes
	if command == APG82_commands.SPL_MODE then
		rdr_spl_mode = value
		if rdr_spl_mode == 0 then -- OFF
			dispatch_action(nil,Keys.iCommandPlaneModeBVR)
		end
		if rdr_spl_mode == 1 then -- Manual Track
			dispatch_action(nil,Keys.iCommandPlaneModeBore)
		end
		if rdr_spl_mode == 2 then -- SNIFF Mode. Detect Jaming
			dispatch_action(nil,Keys.iCommandPlaneModeFI0)
		end
		if rdr_spl_mode == 2 then -- FLOOD Mode
			dispatch_action(nil,Keys.iCommandPlaneModeFI0)
		end
	end

	if command == APG82_commands.RDR_MODE_SEL then
		if value == 1 then
			RADAR_MODE = RADAR_MODE + 1
		elseif value == 0 then
			RADAR_MODE = RADAR_MODE - 1
		end
		if RADAR_MODE == 0 then -- A/A Long Range Search (HI/MED PRF)
			dispatch_action(nil,Keys.iCommandPlaneModeBVR)
		end
		if RADAR_MODE == 1 then -- A/A Velocity Search (HI PRF)
			dispatch_action(nil,Keys.iCommandPlaneModeBVR)
		end
		if RADAR_MODE == 2 then -- A/A Short Range Search (MED PRF)
			dispatch_action(nil,Keys.iCommandPlaneModeVS)
		end
		if RADAR_MODE == 3 then -- A/A Pulse Search (LO PRF)
			dispatch_action(nil,Keys.iCommandPlaneModeBore)
		end
		if RADAR_MODE == 4 then -- Beacon Transponder
			dispatch_action(nil,Keys.iCommandPlaneModeBore)
		end
		if RADAR_MODE == 5 then -- A/G Dopper
			dispatch_action(nil,Keys.iiCommandPlaneModeGround)
		end
		if RADAR_MODE == 6 then -- A/G Ranging
			dispatch_action(nil,Keys.iCommandPlaneModeBore)
		end
		if RADAR_MODE == 7 then -- A/G Doppler Beam Sharpening(DBS) Map Mode
			dispatch_action(nil,Keys.iCommandPlaneModeBore)
		end
	end

	if command == Keys.iCommandPlaneModeBVR then
		RADAR_MODE = 1
		rdr_spl_mode = 0
		if RADAR_STAT == 0 then
			dispatch_action(nil,Keys.iCommandPlaneRadarOnOff)
		end
	end
	if command == Keys.iCommandPlaneModeVS then
		RADAR_MODE = 2
		rdr_spl_mode = 0
		if RADAR_STAT == 0 then
			RADAR_STAT = 1
		end
	end
	if command == Keys.iCommandPlaneModeBore then
		RADAR_MODE = 3
		rdr_spl_mode = 0
		if RADAR_STAT == 0 then
			RADAR_STAT = 1
		end
	end
	if command == Keys.iCommandPlaneModeFI0 then
		RADAR_MODE = 3
		rdr_spl_mode = 1
		if RADAR_STAT == 1 then
			dispatch_action(nil,Keys.iCommandPlaneRadarOnOff)
		end
	end
	if command == APG82_commands.EL_SCAN then
		s_timer = 0.3
		if value == 1 then
			dispatch_action(nil,Keys.iCommandSelecterUp)
		elseif value == 0 then
			dispatch_action(nil,Keys.iCommandSelecterDown)
		end
	end

	if command == APG82_commands.RDR_RANGE then
		if value == 1 then
			dispatch_action(nil,Keys.iCommandPlaneZoomIn)
		elseif value == 0 then
			dispatch_action(nil,Keys.iCommandPlaneZoomOut)
		end
	end

	if command == APG82_commands.AZ_SCAN and value > 0 then
		scan_area = scan_area +1
	elseif command == APG82_commands.AZ_SCAN and value < 0 then
		scan_area = scan_area -1
	end

	if command == APG82_commands.AZ_SCAN then
		if scan_area == 1 then
			dispatch_action(nil,Keys.iCommandIncreaseRadarScanArea)
		elseif scan_area == 0 then
			dispatch_action(nil,Keys.iCommandDecreaseRadarScanArea)
		end
	end

	if command == APG82_commands.MODE_AG then
		dispatch_action(nil,Keys.iCommandPlaneModeGround)
		SYS_MODE = 2
	end

	if command == APG82_commands.MODE_ADI then
		dispatch_action(nil,Keys.iCommandPlaneModeNAV)
		SYS_MODE = 0
	end
	if command == APG82_commands.MODE_VI then	-- Visident Mode Steering
		dispatch_action(nil,Keys.iCommandPlaneModeBore)
		SYS_MODE = 3
	end
	
	
	scan_area = reset_scan_area(scan_area)

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

------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()

	if RADAR_POWER > 1 and RADAR_STAT == 0 then
		if command == Keys.iCommandPlaneRadarOnOff then
			RADAR_STAT = 1
		end
	elseif RADAR_STAT == 1 then
		if command == Keys.iCommandPlaneRadarOnOff then
			RADAR_STAT = 0
		end
	end

	if s_timer > 0 then
		s_timer = s_timer - update_time_step
		if s_timer <= 0 then
			s_timer = 0
			dispatch_action(nil,Keys.iCommandSelecterStop)
		end
	end
	if r_timer > 0 then
		r_timer = r_timer - update_time_step
		if r_timer <= 0 then
			r_timer = 0
			dispatch_action(nil,Keys.iCommandPlaneRadarStop)
		end
	end
	--print_message_to_user(get_cockpit_draw_argument_value(429))
end

need_to_be_closed = false


