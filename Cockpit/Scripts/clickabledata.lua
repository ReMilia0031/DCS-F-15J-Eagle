
--[[
	Reference
	TO 1F-15A-1				USAF Series F-15A/B/C/D Aircraft Flight Manual,
	TO 1F-15C-34-1-1		Nonnuclear Weapon Delivery Manual (Air-to-Air),
	TO SR1F-15C-2-99GS-00-1 GeneralSystem Tactical Electronic Warfare System,
]]

dofile(LockOn_Options.script_path.."clickable_defs.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")
-- dofile(LockOn_Options.script_path.."draw_args.lua")
local gettext = require("i_18n")
_ = gettext.translate

show_element_boxes			= false --connector debug
show_element_parent_boxes	= false
show_tree_boxes				= false
show_other_pointers			= false
show_indicator_borders		= false
enable_commands_log			= false
use_click_and_pan_mode		= false

--------------------------------------------------------------------
elements = {}

-- ILS/TACAN Control Panel
-- elements["ILS_FREQ_1"]						= default_button("ILS Frequency Control")
-- elements["ILS_FREQ_2"]						= default_button("ILS Frequency Control")
elements["ILS_TCN_VOL"]							= default_axis_limited("ILS Volume Control",				devices.ARN108_ILS,		ARN108_commands.ILS_PWR,			483)
elements["TMB_ILS_TCN_X-Y"]						= default_2_pos_switch("TACAN XY Selector",					devices.ARN111_TCN,		ARN111_commands.TCN_XY,				450)
-- elements["TCN_CHAN_1"]						= default_button("TACAN Channel Control")
-- elements["TCN_CHAN_2"]						= default_button("TACAN Channel Control")
-- elements["TCN_MODE"]							= default_button("TACAN Mode Control")

-- Control Augmentation System Control Panel
elements["TMB_CAS_PITCH"]						= default_3_pos_switch("CAS Pitch Control",					devices.ASW38_AFCS,		ASW38_commands.CAS_PITCH,			418)
elements["TMB_CAS_ROLL"]						= default_3_pos_switch("CAS Roll Control",					devices.ASW38_AFCS,		ASW38_commands.CAS_ROLL,			419)
elements["TMB_CAS_YAW"]							= default_3_pos_switch("CAS Yaw Control",					devices.ASW38_AFCS,		ASW38_commands.CAS_YAW,				420)
elements["TMB_CAS_ALT-HOLD"]					= default_2_pos_switch("Altitude Hold",						devices.ASW38_AFCS,		ASW38_commands.ALT_HOLD,			421)
elements["TMB_CAS_ATT-HOLD"]					= default_2_pos_switch("Attitude Hold",						devices.ASW38_AFCS,		ASW38_commands.ATT_HOLD,			422)
elements["TMB_CAS_T/O"]							= default_button("T/O Trim Setting",						devices.ASW38_AFCS,		ASW38_commands.TO_TRIM,				423)

-- Data Transfer Module Receptable

-- Throttle Quadrant
elements["THROTTLE_L_HANDLE"]					= default_2_pos_switch("Left Engine Throttle",				devices.ENG_CNTL,		device_commands._104,				104)
elements["THROTTLE_R_HANDLE"]					= default_2_pos_switch("Right Engine Throttle",				devices.ENG_CNTL,		device_commands._105,				105)
elements["TMB_THROTTLE"]						= default_3_pos_switch("Rudder Trim Control",				devices.FLT_CNTL,		FLT_CNTL_commands.RUD_TRIM,			449)

-- elements["FRICTION_ADJ"]						= default_movable_axis("Throttle Friction Adjust")
-- elements["THR_MICSEL"]						= default_3_pos_switch("Communications Selector")
	-- elements["THR_MICSEL_AFT"]					= default_3_pos_switch("Transmit UHF 2")
	-- elements["THR_MICSEL_CTR"]					= default_3_pos_switch("Receive")
	-- elements["THR_MICSEL_FWD"]					= default_3_pos_switch("Transmit UHF 1")
-- elements["THR_SPDBRK"]						= default_3_pos_switch("Speed Brake Control")
	-- elements["THR_MICSEL_AFT"]					= default_3_pos_switch("SpeedBrake Extend")
	-- elements["THR_MICSEL_CTR"]					= default_3_pos_switch("SpeedBrake Hold")
	-- elements["THR_MICSEL_FWD"]					= default_3_pos_switch("SpeedBrake Retract")
-- elements["THR_BOAT"]							= default_3_pos_switch("Undesignate/Missile Reject")
	-- elements["THR_BOAT_AFT"]						= default_3_pos_switch("Undesignate")
	-- elements["THR_BOAT_CTR"]						= default_3_pos_switch("OFF")
	-- elements["THR_BOAT_FWD"]						= default_3_pos_switch("Missile Reject")
-- elements["THR_WPN"]							= default_3_pos_switch("Weapon Control")
	-- elements["THR_WPN_AFT"]						= default_3_pos_switch("GUN Steering and A/A Mode Command")
	-- elements["THR_WPN_CTR"]						= default_3_pos_switch("Select SRM")
	-- elements["THR_WPN_FWD"]						= default_3_pos_switch("Select MRM")

-- elements["THR_COOLIE"]						= default_button_axis("Coolie Switch")
	-- elements["THR_COOLIE_UP"]					= default_button_axis("Quick Step")
	-- elements["THR_COOLIE_DN"]					= default_button_axis("Missile Boresight / Gunsight Stiffen")
	-- elements["THR_COOLIE_LEFT"]					= default_button_axis("IFF Interrogate")
	-- elements["THR_COOLIE_RIGHT"]					= default_button_axis("EWWS/NCTR Activate")
-- elements["THR_DESIG_CONT"]					= default_button_axis("Target Designator Control")
	-- elements["THR_DESIG_CONT_UP"]				= default_button_axis("Range Increase")
	-- elements["THR_DESIG_CONT_DN"]				= default_button_axis("Range Decrease")
	-- elements["THR_DESIG_CONT_LEFT"]				= default_button_axis("Azimuth Left")
	-- elements["THR_DESIG_CONT_RIGHT"]				= default_button_axis("Azimuth Right")
-- elements["THR_ANT_ELEV"]						= default_3_pos_switch("Antenna Elevation Control")
	-- elements["THR_ANT_ELEV_UP"]						= default_3_pos_switch("Antenna Elevation Up")
	-- elements["THR_ANT_ELEV_DN"]						= default_3_pos_switch("Antenna Elevation Down")
-- elements["THR_PINKY"]						= default_3_pos_switch("Pinky Control")
	-- elements["THR_PINKY_UP"]						= default_3_pos_switch("Spare")
	-- elements["THR_PINKY_CTR"]					= default_3_pos_switch("OFF")
	-- elements["THR_PINKY_DN"]						= default_3_pos_switch("CMDS Dispence Manual 2")
-- elements["TMB_FLAP"]							= default_2_pos_switch("Flaps Control")

-- Exterior Lights Control Panel
elements["EXT_LT_POSITION"]						= multiposition_switch_limited("Position Light Control",			devices.LIGHT_CNTL,		LT_CNTL_commands.EXT_POSN,			484,	8,		0.1)
elements["EXT_LT_FORMATION"]					= multiposition_switch_limited("Formation Light Control",			devices.LIGHT_CNTL,		LT_CNTL_commands.EXT_FORM,			485,	7,		0.1)
elements["TMB_EXT-LT_ANTI-COLLISION"]			= default_2_pos_switch("Anti-Collision Light Control",		devices.LIGHT_CNTL,		LT_CNTL_commands.EXT_ACOL,			451)

-- Integrated Communications Control Panel
-- elements["R2_INT"]							= default_button("Frequency Display Intencity Control")
-- elements["R2_FREQ_1"]						= default_button("Frequency/JTIDS Selector")
-- elements["R2_FREQ_2"]						= default_button("Frequency/JTIDS Selector")
-- elements["R2_FREQ_3"]						= default_button("Frequency/JTIDS Selector")
elements["RADIO-2_MODE"]						= multiposition_switch_limited("R2 Mode Selector",			devices.ARC164_COMM,	ARC164_commands.R2_MODE,			486,	5,		0.1,	false,	-0.2)

elements["TMB_RADIO-2_TRANSMIT"]				= springloaded_3_pos_switch("Transmit Selector",			devices.ARC164_COMM,	ARC164_commands.R2_TRANS,			452, 1)
elements["TMB_RADIO-2_DIS_FREQ"]				= default_3_pos_switch("Frequency Display",					devices.ARC164_COMM,	ARC164_commands.R2_DSPL,			453)
elements["TMB_RADIO-2_CHAN_SET"]				= default_3_pos_switch("Channnel Setting",					devices.ARC164_COMM,	ARC164_commands.R2_CHAN,			454)

-- elements["VOL_TEWS_CAUTION"]					= default_button("TEWS Radar Caution Volume Control")
-- elements["VOL_TEWS_LAUNCH"]					= default_button("TEWS Missile Launch Volume Control")
elements["VOL_TEWS_LAUNCH_DISABLE"]				= default_button("TEWS Launch Disable",						devices.ALR56C_RWR,		ALR56C_commands.TONE_DSBL,			459)
-- elements["VOL_ICS"]							= default_button("Intercom Volume Control")
-- elements["VOL_WPN"]							= default_button("Weapon Audio Volume Control")
-- elements["VOL_R2"]							= default_button("R2 Volume Control")
-- elements["VOL_JTIDS"]						= default_button("JTIDS Volume Control")
elements["TMB_VOL_R1_ADF"]						= default_3_pos_switch("R1 ADF/R1-R2 C-TEXT",				devices.ARC164_COMM,	ARC164_commands.R1_ADF,				55)
elements["TMB_VOL_RADIO_1"]						= default_3_pos_switch("R1 Guard Receiver Control",			devices.ARC164_COMM,	ARC164_commands.R1_GREC,			56)
elements["TMB_VOL_R1_ANT"]						= default_3_pos_switch("R1 Antenna Selector",				devices.ARC164_COMM,	ARC164_commands.R1_ANT,				57)
elements["TMB_VOL_R2_ANT"]						= default_3_pos_switch("R2 Antenna Selector",				devices.ARC164_COMM,	ARC164_commands.R2_ANT,				58)


-- KY-58 Control Panel
elements["TMB_POWER"]							= default_2_pos_switch("KY-58 Power Control",				devices.KY58,			KY58_commands.KY58_PWR,				461)
elements["TMB_DELAY"]							= default_2_pos_switch("Transmit Delay Control",			devices.KY58,			KY58_commands.KY58_DELAY,			462)
elements["MODE_OP-LD-RV"]						= multiposition_switch_limited("Mode Selector",						devices.KY58,			KY58_commands.KY58_MODE,			495,	3,		0.1)
-- elements["C_RAD_PLAIN"]						= default_button("Secure Speech Selector")
-- elements["KY58_FILL"]						= default_button("KY-58 Memory Fill Selector")
-- elements["TMB_ZEROIZE"]						= default_button("KY-58 Memory Zeroize")

-- Anti-G Panel

-- Ground Power Control Panel
elements["TMB_GND_PWR_1"]						= default_3_pos_switch("Ground Power Control 1",			devices.PWR_CNTL,		PWR_CNTL_commands.GND_PWR_1,		466)
elements["TMB_GND_PWR_2"]						= default_2_pos_switch("Ground Power Control 2",			devices.PWR_CNTL,		PWR_CNTL_commands.GND_PWR_2,		467)
elements["TMB_GND_PWR_3"]						= default_2_pos_switch("Ground Power Control 3",			devices.PWR_CNTL,		PWR_CNTL_commands.GND_PWR_3,		468)
elements["TMB_GND_PWR_4"]						= default_2_pos_switch("Ground Power Control 4",			devices.PWR_CNTL,		PWR_CNTL_commands.GND_PWR_4,		469)
elements["TMB_GND_PWR_CC"]						= default_3_pos_switch("Ground Power Control CC",			devices.PWR_CNTL,		PWR_CNTL_commands.GND_PWR_CC,		470)

-- BIT Panel
elements["SELECTOR"]							= multiposition_switch("BIT Selector",						devices.BIT_SYS,		BIT_commands.BIT_SEL,				496,	24,		0.01)
elements["TMB_RSET-RCALL"]						= default_3_pos_switch("Reset/Recall",						devices.BIT_SYS,		BIT_commands.RCALL,					463)
elements["AVIONICS_INITIATE"]					= default_button("BIT Initiate Button",						devices.BIT_SYS,		BIT_commands.INITIATE,				464)
elements["AVIONICS_CC_RSET"]					= default_button("Central Computer Reset",					devices.BIT_SYS,		BIT_commands.CC_RESET,				465)

-- Take Command/ICS Control Panel
elements["TMB_ISC_RADIO"]						= default_3_pos_switch("ICS Function Selector",				devices.INTERCOMM,		ICS_commands.ICS_FUNC,				460)

-- Interrogator Control Panel
elements["MASTER_MODE"]							= multiposition_switch_limited("AAI Master Control",				devices.APX76_IFF,		APX76_commands.AAI_MASTER,			1001,	6,		0.1,	false)
-- elements["AAI_MODE"]							= multiposition_roller_limited("Mode Selector")
-- elements["AAI_CODE"]							= multiposition_roller_limited("Code Selector")

-- IFF Control Panel
elements["TMB_IFF_MASTER"]						= default_3_pos_switch("IFF Master Mode Selector",			devices.APX76_IFF,		APX76_commands.IFF_MASTER,			440)
elements["TMB_IFF_MODE-4_A-B-OUT"]				= default_3_pos_switch("Mode 4 Selector",					devices.APX76_IFF,		APX76_commands.MODE_4_SEL,			441)
elements["TMB_IFF_MODE-4_HOLD-NORM-ZERO"]		= default_3_pos_switch("Mode 4 Function",					devices.APX76_IFF,		APX76_commands.MODE_4_FUNC,			442)
elements["TMB_IFF_MC"]							= default_2_pos_switch("Mode C Selector",					devices.APX76_IFF,		APX76_commands.MODE_C_SEL,			443)
elements["TMB_IFF_M3/A"]						= default_2_pos_switch("Mode 3/A Selector",					devices.APX76_IFF,		APX76_commands.MODE_3A_SEL,			444)
elements["TMB_IFF_M2"]							= default_2_pos_switch("Mode 2 Selector",					devices.APX76_IFF,		APX76_commands.MODE_2_SEL,			445)
elements["TMB_IFF_M1"]							= default_2_pos_switch("Mode 1 Selector",					devices.APX76_IFF,		APX76_commands.MODE_1_SEL,			446)
elements["TMB_IFF_AUDIO-REC"]					= default_3_pos_switch("Mode 4 Indication",					devices.APX76_IFF,		APX76_commands.MODE_4_IND,			447)
elements["TMB_IFF_SEL"]							= default_3_pos_switch("IFF Antenna Selector",				devices.APX76_IFF,		APX76_commands.IFF_ANT_SEL,			448)
-- elements["M1_CODE"]							= multiposition_roller_limited("Mode 1 Code Selector")

-- TEWS IA Control Panel
elements["TMB_EW_ICS"]							= default_3_pos_switch("ICMS Mode Selector",				devices.ALQ135_ICMS,	ALQ135_commands.ICMS_MODE,			436)
elements["TMB_EW_PODS"]							= default_2_pos_switch("PODS Mode Selector",				devices.ALQ128_EWWS,	ALQ128_commands.EWWS_PODS,			437)
elements["TMB_EW_RWR"]							= default_2_pos_switch("RWR Mode Selector",					devices.ALR56C_RWR,		ALR56C_commands.RWR_MODE,			438)

-- Radar Control Panel
elements["RADAR_POWER"]							= multiposition_switch_limited("Radar Power Control",				devices.APG82_RDR,		APG82_commands.RDR_POWER,			488,	4,		0.1,	false)
elements["RADAR_FRAME_STORE"]					= multiposition_switch_limited("Frame Storage Selector",			devices.APG82_RDR,		APG82_commands.FRAME_STORE,			1001,	8,		0.1,	false)
elements["RADAR_SPL-MODE"]						= multiposition_switch_limited("Special Mode Control",				devices.APG82_RDR,		APG82_commands.SPL_MODE,			492,	4,		0.1,	false,	-0.1)
elements["RADAR_RANGE"]							= multiposition_switch_limited("Radar Range Selector",				devices.APG82_RDR,		APG82_commands.RDR_RANGE,			1001,	5,		0.1,	false)
elements["RADAR_EL_SCAN"]						= multiposition_switch_limited("Elevation Scan Selector",			devices.APG82_RDR,		APG82_commands.EL_SCAN,				1001,	5,		0.1,	false)
elements["RADAR_AZ_SCAN"]						= multiposition_switch_limited("Azimuth Scan Selector",				devices.APG82_RDR,		APG82_commands.AZ_SCAN,				1001,	3,		0.1,	false)
elements["RADAR_MODE_SEL"]						= multiposition_switch("Radar Mode Manual Selector",		devices.APG82_RDR,		APG82_commands.RDR_MODE_SEL,		493,	8,		0.1,	false)
elements["TMB_RADAR_MODE_CONTR"]				= default_2_pos_switch("Radar Mode Control",				devices.APG82_RDR,		APG82_commands.RDR_MODE_CNTR,		439)

-- Fuel Control Panel
elements["TMB_FUEL_CONF_TANK"]					= default_3_pos_switch("Conformal Tank Fuel Control",		devices.FUEL_CNTL,		FUEL_CNTL_commands.CNTL_CONF,		429)
elements["TMB_FUEL_CTR"]						= default_3_pos_switch("Center Tank Fuel Control",			devices.FUEL_CNTL,		FUEL_CNTL_commands.CNTL_CNTR,		430)
elements["TMB_FUEL_WING"]						= default_3_pos_switch("Wing Tank Fuel Control",			devices.FUEL_CNTL,		FUEL_CNTL_commands.CNTL_WING,		431)
elements["TMB_FUEL_DUMP/NORM"]					= default_2_pos_switch("Fuel Dump Control",					devices.FUEL_CNTL,		FUEL_CNTL_commands.FUEL_DUMP,		432)
elements["TMB_FUEL_EXT_TRANS"]					= default_2_pos_switch("External Transfer",					devices.FUEL_CNTL,		FUEL_CNTL_commands.EXT_TRANS,		433)
elements["TMB_FUEL_EMERG_TRANS"]				= default_3_pos_switch("Conformal Tank Emergency Transfer",	devices.FUEL_CNTL,		FUEL_CNTL_commands.CONF_EMERTR,		434)
elements["TMB_FUEL_OPEN/CLOSE"]					= default_2_pos_switch("Slipway Control",					devices.FUEL_CNTL,		FUEL_CNTL_commands.CNTL_SLIPWAY,	435)

-- Miscellaneous Control Panel
elements["TMB_MISC_ANTI-SKID"]					= default_3_pos_switch("Anti-Skid Control",					devices.FLT_CNTL,		FLT_CNTL_commands.ANTISKID,			424)
elements["TMB_MISC_INLET-RAMP-R"]				= default_2_pos_switch("Right Inlet Ramp Control",			devices.ENG_CNTL,		ENG_CNTL_commands.INLET_R,			425)
elements["TMB_MISC_INLET-RAMP-L"]				= default_2_pos_switch("Left Inlet Ramp Control",			devices.ENG_CNTL,		ENG_CNTL_commands.INLET_L,			426)
elements["TMB_MISC_ROLL-RATIO"]					= default_2_pos_switch("Roll Ratio Control",				devices.FLT_CNTL,		FLT_CNTL_commands.ROLL_RATIO,		427)
elements["TMB_MISC_TAXI-LIGHT"]					= default_3_pos_switch("Landing/Taxi Light Control",		devices.LIGHT_CNTL, 	LT_CNTL_commands.EXT_LDG,			428)

-- Left Wall
-- elements["TMB_ARMT_SAFE"]					= default_2_pos_switch("Armament Safety Override Switch")
-- elements["TMB_EMERG_AR"]						= default_2_pos_switch("Emergency Air Refueling Switch")
-- elements["TMB_EWWS_ENABLE"]					= default_2_pos_switch("EWWS Enable Switch")
-- elements["TMB_SEAT_ADJUST"]					= default_3_pos_switch("Seat Adjust Switch")
-- elements["TMB_ECTR_ENABLE"]					= default_2_pos_switch("Non-Coorerative Target Recognition(NCTR) Enable Switch")
-- elements["TMB_VMAX"]							= default_2_pos_switch("Vmax Switch")
-- elements["CANOPY_JETT"]						= default_button("Canopy Jettison Handle")

-- Oxygen Regulator
elements["TMB_OXY_EMERG-NORM-TEST"]				= default_3_pos_switch("Emergency Lever",					devices.ECS_UNIT,		ECS_commands.OXY_EMER,				360)
elements["OXYGEN_Norm-100%"]					= default_2_pos_switch("Diluter Lever",						devices.ECS_UNIT,		ECS_commands.OXY_DLTR,				361)
elements["OXYGEN_SUPPLY"]						= default_3_pos_switch("Supply Lever",						devices.ECS_UNIT,		ECS_commands.OXY_SPLY,				362)

-- ECS Panel
elements["TMB_ANTI-ICE_WINDSHIELD"]				= default_2_pos_switch("Windshield Anti-Ice Control",		devices.ECS_UNIT,		ECS_commands.WSHLD_ANTI_ICE,		371)
elements["TMB_ANTI-ICE_PITOT_HEAT"]				= default_2_pos_switch("Pitot-Heat Control",				devices.ECS_UNIT,		ECS_commands.PITOT_HEAT,			372)
elements["TMB_ANTI-ICE_ENG_HEAT"]				= default_3_pos_switch("Engine Anti-Ice Control",			devices.ECS_UNIT,		ECS_commands.ENG_HEAT,				373)
elements["TMB_ANTI-FOG"]						= default_3_pos_switch("Anti-Fog Temperture Control",		devices.ECS_UNIT,		ECS_commands.ANTI_FOG_TEMP,			374)
elements["BTN_ECS_OXY_TEST"]					= default_button("Oxygen Quantity Gage Test",				devices.ECS_UNIT,		ECS_commands.OXY_TEST,				375)

-- Temperture Panel
elements["TMB_CABIN_TEMP_CONTR_AUTO-OFF-MAN"]	= default_3_pos_switch("Cockpit Temperture Control",		devices.ECS_UNIT,		ECS_commands.CKPT_TEMP_MODE,		407)
elements["TEMP_COLD/HOT"]						= default_axis_limited("Temperture Control Knob",			devices.ECS_UNIT,		ECS_commands.CKPT_TEMP,				473)
elements["TEMP_AIR_SOURCE"]						= multiposition_switch("Air Source Selector",				devices.ECS_UNIT,		ECS_commands.AIR_SOURCE,			474,	4,	0.1,		false,	0.5)

-- Interior Lights Control Panel
elements["INTERIOR_L-CONSOLE"]					= default_axis_limited("Left Console Light Control",		devices.LIGHT_CNTL,		LT_CNTL_commands.INT_CNSL_L,		475)
elements["INTERIOR_R-CONSOLE"]					= default_axis_limited("Right Console Light Control",		devices.LIGHT_CNTL,		LT_CNTL_commands.INT_CNSL_R,		476)
elements["INTERIOR_AUX-INST"]					= default_axis_limited("Auxilialy Instrument Light Control", devices.LIGHT_CNTL,	LT_CNTL_commands.INT_INST_AUX,		477)
elements["INTERIOR_FLT-INST"]					= default_axis_limited("Flight Instrument Light	Control",	devices.LIGHT_CNTL,		LT_CNTL_commands.INT_INST_FLT,		478)
elements["INTERIOR_ENG-INST"]					= default_axis_limited("Engine Instrument Light Control",	devices.LIGHT_CNTL,		LT_CNTL_commands.INT_INST_ENG,		479)
elements["INTERIOR_WARNING_CAUTION"]			= default_axis_limited("Warning/Caution Light Control",		devices.LIGHT_CNTL,		LT_CNTL_commands.INT_WARN_LT,		480)
elements["INTERIOR_STORM_FLOOD"]				= default_axis_limited("Storm/Flood Light Control",			devices.LIGHT_CNTL,		LT_CNTL_commands.INT_FLOOD,			481)
elements["TMB_INTERIOR_LT-TEST"]				= default_axis_limited("Warn/Caution/Adv Light Test",		devices.LIGHT_CNTL,		LT_CNTL_commands.INT_LT_TEST,		408)
elements["TMB_INTERIOR_STBY_INST"]				= default_axis_limited("Standby Instrument Light",			devices.LIGHT_CNTL,		LT_CNTL_commands.INT_INST_STBY,		409)

-- TEWS Pod Control Panel
-- elements["ECM_MODE_L"]						= multiposition_switch("Left ECM Pod Mode Select")
-- elements["ECM_MODE_R"]						= multiposition_switch("Right ECM Pod Mode Select")

-- Countermeasures Dispenser (CMD) Control Panel
elements["CMD_MODE"]							= multiposition_switch_limited("Dispense Mode Control",				devices.ALE45_CMDS,		ALE45_commands.CMD_MODE,			482,	5,		0.1,	true)
elements["TMB_CMD_DISP_SEL"]					= default_3_pos_switch("Dispenser Selector",				devices.ALE45_CMDS,		ALE45_commands.DSA_SEL,				410)
-- elements["TMB_FLASE_JETT"]					= default_2_pos_switch("Flare Jettion Control")

-- Engine Start Fuel Switches
elements["TMB_ENG_START_L"]						= default_3_pos_switch("Left Engine Start Fuel Flow",		devices.ENG_CNTL,		ENG_CNTL_commands.ENG_FF_L,			411)
elements["TMB_ENG_START_R"]						= default_3_pos_switch("Right Engine Start Fuel Flow",		devices.ENG_CNTL,		ENG_CNTL_commands.ENG_FF_R,			412)

-- Compass Control Panel
elements["TMB_COMPASS_N-S"]						= default_2_pos_switch("Hemisphere Selector",				devices.ASN108_AHRS,	ASN108_commands.CMPS_NS,			413)
elements["COMPASS_FAST-ERECT"]					= default_button("AHRS Fast Erection",						devices.ASN108_AHRS,	ASN108_commands.AHRS_ERECT,			414)
elements["COMPASS_TO-SYNC"]						= default_axis_limited("Compass Synchronization",			devices.ASN108_AHRS,	ASN108_commands.CMPS_SYNC,			415)
elements["COMPASS_LAT"]							= default_axis_limited("Latitude Control",					devices.ASN108_AHRS,	ASN108_commands.LAT_CNTL,			416)
elements["COMPASS_COMP-DG-SLAVED"]				= multiposition_switch_limited("AHRS Mode Selector",				devices.ASN108_AHRS,	ASN108_commands.AHRS_MODE,			417,	3,		0.1,	false)

-- TEWS Control Panel
elements["TMB_TEWS_ICS_ON-OFF"]					= default_2_pos_switch("ICMS Power Control",				devices.ALQ135_ICMS,	ALQ135_commands.ICMS_PWR,			400)
elements["TMB_TEWS_SET-1"]						= default_2_pos_switch("ICMS Band 3 Control",				devices.ALQ135_ICMS,	ALQ135_commands.ICMS_SET1,			401)
elements["TMB_TEWS_SET-2"]						= default_2_pos_switch("ICMS Band 2 Control",				devices.ALQ135_ICMS,	ALQ135_commands.ICMS_SET2,			402)
elements["TMB_TEWS_SET-3"]						= default_2_pos_switch("ICMS Band 1 Control",				devices.ALQ135_ICMS,	ALQ135_commands.ICMS_SET3,			403)
elements["TMB_TEWS_RWR"]						= default_2_pos_switch("RWR Power Control",					devices.ALR56C_RWR,		ALR56C_commands.RWR_PWR,			404)
elements["TMB_TEWS_EWWS_ON-OFF"]				= default_2_pos_switch("EWWS Power Control",				devices.ALQ128_EWWS,	ALQ128_commands.EWWS_PWR,			405)
elements["TMB_TEWS_EWWS_TONE-DEFEAT"]			= default_2_pos_switch("EWWS TONE-DEFEAT",					devices.ALQ128_EWWS,	ALQ128_commands.EWWS_TONE,			406)

-- Navigation Control Panel
elements["NAV_CONTROL_MARK"]					= default_button("Mark Pushbutton",							devices.ASN109_INS,		ASN109_commands.NCI_MARK,			377)
elements["NAV_CONTROL_OFLY_FRZ"]				= default_button("Overfly Fleeze Pushbutton",				devices.ASN109_INS,		ASN109_commands.NCI_OFLY,			378)
elements["NAV_CONTROL_UPDATE"]					= default_button("Navigation Update Pushbutton",			devices.ASN109_INS,		ASN109_commands.NCI_UPDT,			379)
elements["NAV_CONTROL_SEL-O/S"]					= default_button("Select Offset Pushbutton",				devices.ASN109_INS,		ASN109_commands.NCI_OFST,			380)
elements["NAV_CONTROL_1"]						= default_button("NCI Keypad [1/+]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN1,			381)
elements["NAV_CONTROL_2"]						= default_button("NCI Keypad [2/N]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN2,			382)
elements["NAV_CONTROL_3"]						= default_button("NCI Keypad [3",							devices.ASN109_INS,		ASN109_commands.NCI_BTN3,			383)
elements["NAV_CONTROL_4"]						= default_button("NCI Keypad [4/W]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN4,			384)
elements["NAV_CONTROL_5"]						= default_button("NCI Keypad [5/A]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN5,			385)
elements["NAV_CONTROL_6"]						= default_button("NCI Keypad [6/E]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN6,			386)
elements["NAV_CONTROL_7"]						= default_button("NCI Keypad [7/R]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN7,			387)
elements["NAV_CONTROL_8"]						= default_button("NCI Keypad [8/S]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN8,			388)
elements["NAV_CONTROL_9"]						= default_button("NCI Keypad [9/B]",						devices.ASN109_INS,		ASN109_commands.NCI_BTN9,			389)
elements["NAV_CONTROL_0"]						= default_button("NCI Keypad [0]",							devices.ASN109_INS,		ASN109_commands.NCI_BTN0,			390)
elements["NAV_CONTROL_CLR"]						= default_button("NCI Keypad [Clear]",						devices.ASN109_INS,		ASN109_commands.NCI_CLR,			391)
elements["NAV_CONTROL_ENTER"]					= default_button("NCI Keypad [Enter]",						devices.ASN109_INS,		ASN109_commands.NCI_ENTR,			392)
elements["NAV_CONTROL_RDY"]						= default_button("Ready Pushbutton",						devices.ASN109_INS,		ASN109_commands.NCI_RDY,			393)
elements["NAV_CONTROL_INT"]						= default_axis_limited("NCI Intencity Adjust",				devices.ASN109_INS,		ASN109_commands.NCI_INT,			394)
elements["NAV_CONTROL_DATA_SELECT"]				= multiposition_switch_limited("Data Select",						devices.ASN109_INS,		ASN109_commands.NCI_DATA,			471,	9,		0.1,	false)
elements["NAV_CONTROL_MODE"]					= multiposition_switch_limited("Mode Selector",						devices.ASN109_INS,		ASN109_commands.NCI_MODE,			472,	9,		0.1,	false)

-- Engine Control Panel
elements["TMB_ENGINE_GEN_L"]					= default_2_pos_switch("Left Generator Control",			devices.PWR_CNTL,		PWR_CNTL_commands.ENG_GEN_L,		364)
elements["TMB_ENGINE_GEN_R"]					= default_2_pos_switch("Right Generator Control",			devices.PWR_CNTL,		PWR_CNTL_commands.ENG_GEN_R,		365)
elements["TMB_ENGINE_CONTR_L"]					= default_2_pos_switch("Left Engine DEEC Control",			devices.ENG_CNTL,		ENG_CNTL_commands.DEEC_L,			366)
elements["TMB_ENGINE_CONTR_R"]					= default_2_pos_switch("Right Engine DEEC Control",			devices.ENG_CNTL,		ENG_CNTL_commands.DEEC_R,			367)
elements["TMB_ENGINE_EMERG_GEN"]				= default_3_pos_switch("Emergency Generator Control",		devices.PWR_CNTL,		PWR_CNTL_commands.EMER_GEN,			368)
elements["TMB_ENGINE_EXT_PWR"]					= default_3_pos_switch("External Power Control",			devices.PWR_CNTL,		PWR_CNTL_commands.EXT_PWR_CNTL,		369)
elements["TMB_ENGINE_STARTER"]					= default_2_pos_switch("JFS Starter Control",				devices.ENG_CNTL,		ENG_CNTL_commands.STARTER_CNTL,		370)
elements["L_ENG_MASTER"]						= default_2_pos_switch("Left Engine Master Control",		devices.ENG_CNTL,		ENG_CNTL_commands.ENG_MSTR_L,		498,	false,	nil,	2.0)
elements["R_ENG_MASTER"]						= default_2_pos_switch("Right Engine Master Control",		devices.ENG_CNTL,		ENG_CNTL_commands.ENG_MSTR_R,		499,	false,	nil,	2.0)

-- Right Wall
-- elements["CANOPY"]							= default_button("Canopy Control Handle")

-- Main Instrument Panel
-- Main Communications Control Panel
-- elements["MASTER_CAUTION_LIGHT_PUSHBUTTON"]	= default_button("Master Caution")
-- elements["I/P"]								= default_button("Indentification of Position Transmit")
-- elements["M3_CODE_1"]						= multiposition_roller_limited("IFF M3/A Code Selector")
-- elements["M3_CODE_2"]						= multiposition_roller_limited("IFF M3/A Code Selector")
-- elements["M3_CODE_3"]						= multiposition_roller_limited("IFF M3/A Code Selector")
-- elements["M3_CODE_4"]						= multiposition_roller_limited("IFF M3/A Code Selector")


elements["CHANNEL_FP"]							= multiposition_switch("R1 Channnel Selector",				devices.ARC164_COMM,	ARC164_commands.R1_CHAN,			334,	10,		0.1,	false)
elements["MAIN_FREQ-1"]							= multiposition_switch("Manual Frequency Selector",			devices.ARC164_COMM,	ARC164_commands.R1_FREQ_1,			335,	10,		0.1,	false)
elements["MAIN_FREQ-2"]							= multiposition_switch("Manual Frequency Selector",			devices.ARC164_COMM,	ARC164_commands.R1_FREQ_2,			336,	10,		0.1,	false)
elements["MAIN_FREQ-3"]							= multiposition_switch("Manual Frequency Selector",			devices.ARC164_COMM,	ARC164_commands.R1_FREQ_3,			337,	10,		0.1,	false)
elements["VOL_FP"]								= default_axis_limited("R1 Volume Control",					devices.ARC164_COMM,	ARC164_commands.R1_VOL,				338)
elements["UHF-1_SELECTOR"]						= multiposition_switch_limited("R1 Mode Selector",			devices.ARC164_COMM,	ARC164_commands.R1_MODE,			339,	6,		0.1,	false)

-- Fire Warning/Extinguishing Panel
elements["LEFT_ENGINE_FIRE_LIGHT"]				= default_button("Left Engine Fire Extinguishing",			devices.MAIN_INST,		INST_commands.LENG_OVTEMP)
elements["RIGHT_ENGINE_FIRE_LIGHT"]				= default_button("Right Engine Fire Extinguishing",			devices.MAIN_INST,		INST_commands.RENG_OVTEMP)
elements["AMAD_FIRE_LIGHT"]						= default_button("AMAD Fire Extinguishing",					devices.MAIN_INST,		INST_commands.AMAD_OVTEMP)
elements["TMB_DISCHARGE-OFF-TEST"]				= default_3_pos_switch("Fire Discharge/Test",				devices.MAIN_INST,		INST_commands.FIRE_MODE,			325)

-- Vertical Situation Display (VSD)
elements["TMB_CONT_MAN-AUTO"]					= default_2_pos_switch("VSD Brightness Mode Control",		devices.VSD_CNTL,		VSD_commands.VSD_BRT_MODE,			326,	inversed_)
elements["RDR_SYM-BRT"]							= default_axis_limited("Symbol Brightness Adjust",			devices.VSD_CNTL,		VSD_commands.VSD_SYM_BRT,			343,	0, 0.66)
-- elements["VSD_RDR"]							= default_axis_limited("Radar Gain Adjust")
elements["CONT_BRT_OFF"]						= default_axis_limited("Contrast Level Adjust",				devices.VSD_CNTL,		VSD_commands.VSD_CONT_LVL,			344,	0, 0.66)
-- elements["VSD_BRT"]							= default_axis_limited("Brightness Adjust")

-- Head Up Display Control Panel
elements["TMB_HUD_SET_BRT"]						= default_2_pos_switch("Brightness Mode Control",			devices.AVQ20_HUD,		AVQ20_commands.BRT_MODE,			327,	inversed_)
elements["TMB_HUD_SET_SYM"]						= default_2_pos_switch("Symbol Reject Control",				devices.AVQ20_HUD,		AVQ20_commands.SYM_REJ,				328,	inversed_)
elements["TMB_HUD_SET_RTCL"]					= default_2_pos_switch("Reticle Mode Control",				devices.AVQ20_HUD,		AVQ20_commands.RTCL_MODE,			329,	inversed_)
elements["TMB_HUD_SET_CAMERA"]					= default_2_pos_switch("Camera Control",					devices.AXQ16_VTRS,		AXQ16_commands.VTRS_HUD,			330,	inversed_)
elements["TMB_HUD_SET_DAY-NIGHT"]				= default_2_pos_switch("Day/Night Select",					devices.AVQ20_HUD,		AVQ20_commands.COLOR_MODE,			331,	inversed_)

elements["HUD_SET_SYMBOL_BRIGHTNESS"]			= default_axis_limited("Symbol Brightness Control",			devices.AVQ20_HUD,		AVQ20_commands.SYM_BRT,				340)
elements["HUD_SET_STBY-RTCL_BRIGHTNESS"]		= default_axis_limited("Standby Reticle Brightness",		devices.AVQ20_HUD,		AVQ20_commands.STBY_RTCL,			341)
elements["HUD_SET_RTCL-DEPR"]					= default_axis_limited("Reticle Depression Setting",		devices.AVQ20_HUD,		AVQ20_commands.RTCL_DEPR,			342)

-- Video Tape Recorder Control Panel
elements["TMB_VIDEO_RECORD_ON-OFF"]				= default_2_pos_switch("Video Record Control",				devices.AXQ16_VTRS,		AXQ16_commands.VTRS_MODE,			332,	inversed_)
elements["TMB_CAMERA_HUD-VSD"]					= default_2_pos_switch("Camera Selector",					devices.AXQ16_VTRS,		AXQ16_commands.VTRS_SEL,			333,	inversed_)

-- TEWS Display Unit
elements["RWR_INT"]								= default_axis_limited("TEWS Display Intencity Adjust",		devices.ALR56C_RWR,		ALR56C_commands.TEWS_INT,			345)

-- Attitude Director Indicator
elements["Attitude_reference_selector"]			= default_2_pos_switch("Attitude Reference Selector",		devices.MAIN_INST,		INST_commands.ADI_REF,				273)
elements["Pitch_trim_knob"]						= default_axis_limited("Pitch Trim Setting",				devices.MAIN_INST,		INST_commands.ADI_TRIM,				274,	0,	0.66)

-- Horizontal Situation Indicator
elements["HEADING_SET"]							= default_axis_limited("Heading Setting",					devices.MAIN_INST, 		INST_commands.HSI_HDG,				271,	0,	0.66,	false,	false,	{0,1})
elements["COURSE_SET"]							= default_axis_limited("Course Setting",					devices.MAIN_INST, 		INST_commands.HSI_CRS,				272,	0,	0.66,	false,	true,	{0,1})

-- Fuel Quantity Indicator
elements["FUEL_QTY"]							= default_button_axis("Fuel Quantity Selector",				devices.MAIN_INST,		Keys.iCommandPlaneFSQuantityIndicatorTest, Keys.iCommandPlaneFSQuantityIndicatorSelectorMAIN)
elements["FUEL_QTY"].relative		= {false,true}
elements["FUEL_QTY"].arg_lim		= {{0, 1}, {0, 1}}
elements["FUEL_QTY"].stop_action	= {Keys.iCommandPlaneFSQuantityIndicatorSelectorMAIN, 0}
-- elements["FUEL_BINGO"]						= default_axis_limited("BINGO Index Setting")

-- Jet Fuel Starter Control Panel
elements["JET_FUEL_STARTER"]					= springloaded_3_pos_switch("JFS Control Handle",			devices.ENG_CNTL,		ENG_CNTL_commands.JFS_CNTL,			503)

elements["EMERG_VENT"]							= default_2_pos_switch("Emergency Vent Control",			devices.ECS_UNIT,		ECS_commands.EMER_VENT,				346)

-- Master Mode Controls
elements["A/G"]									= default_button("A/G Master Mode",							devices.APG82_RDR,		APG82_commands.MODE_AG,				505)
elements["ADI"]									= default_button("ADI Master Mode",							devices.APG82_RDR,		APG82_commands.MODE_ADI,			506)
elements["VI"]									= default_button("Visial Identification Mode",				devices.APG82_RDR,		APG82_commands.MODE_VI,				507)
-- elements["RUD_PED_ADJ"]						= default_axis_limited("Rudder Pedal Adjust Release")

elements["PUSH_TO_JETT"]						= default_button("Emergency Jettion Button",				devices.AWG27_MPCD,		AWG27_commands.EMER_JETT)

-- Steering Mode Panel
elements["STEER_MODE"]							= multiposition_switch("Steering Mode Selector",			devices.MAIN_INST,		INST_commands.STEER_MODE_SEL,		501,	4,	0.1,	false)

elements["EMERGENCY_BRAKE"]						= default_2_pos_switch("Emergency Brake/Steering Control",	devices.FLT_CNTL,		FLT_CNTL_commands.EMER_BRAKE,		502)

-- Multi-Purpose Color Display (MPCD)
elements["MFD_0"]								= default_button("MPCD S0 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S0,				300,	1)
elements["MFD_1"]								= default_button("MPCD S1 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S1,				301,	1)
elements["MFD_2"]								= default_button("MPCD S2 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S2,				302,	1)
elements["MFD_3"]								= default_button("MPCD S3 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S3,				303,	1)
elements["MFD_4"]								= default_button("MPCD S4 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S4,				304,	1)
elements["MFD_5"]								= default_button("MPCD S5 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S5,				305,	1)
elements["MFD_6"]								= default_button("MPCD S6 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S6,				306,	1)
elements["MFD_7"]								= default_button("MPCD S7 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S7,				307,	1)
elements["MFD_8"]								= default_button("MPCD S8 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S8,				308,	1)
elements["MFD_9"]								= default_button("MPCD S9 Push Button",						devices.AWG27_MPCD,		AWG27_commands.BTN_S9,				309,	1)
elements["MFD_10"]								= default_button("MPCD S10 Push Button",					devices.AWG27_MPCD,		AWG27_commands.BTN_S10,				310,	1)
elements["MFD_11"]								= default_button("MPCD S11 Push Button",					devices.AWG27_MPCD,		AWG27_commands.BTN_S11,				311,	1)
elements["MFD_12"]								= default_button("MPCD S12 Push Button",					devices.AWG27_MPCD,		AWG27_commands.BTN_S12,				312,	1)
elements["MFD_13"]								= default_button("MPCD S13 Push Button",					devices.AWG27_MPCD,		AWG27_commands.BTN_S13,				313,	1)
elements["MFD_14"]								= default_button("MPCD S14 Push Button",					devices.AWG27_MPCD,		AWG27_commands.BTN_S14,				314,	1)
elements["MFD_15"]								= default_button("MPCD Right STA 8 Push Button",			devices.AWG27_MPCD,		AWG27_commands.BTN_STA8,			315,	1)
elements["MFD_16"]								= default_button("MPCD Right CFT Push Button",				devices.AWG27_MPCD,		AWG27_commands.BTN_RCFT,			316,	1)
elements["MFD_17"]								= default_button("MPCD Center STA 5 Push Button",			devices.AWG27_MPCD,		AWG27_commands.BTN_STA5,			317,	1)
elements["MFD_18"]								= default_button("MPCD Left CFT Push Button",				devices.AWG27_MPCD,		AWG27_commands.BTN_LCFT,			318,	1)
elements["MFD_19"]								= default_button("MPCD Left STA 2 Push Button",				devices.AWG27_MPCD,		AWG27_commands.BTN_STA2,			319,	1)
elements["MFD_SEL-JETT"]						= default_button_axis("External Store Jettion Control",		devices.AWG27_MPCD,		AWG27_commands.STOR_JETT_EXEC,	AWG27_commands.STOR_JETT,	nil,	320)
elements["MFD_SEL-JETT"].relative		= {false,true}
elements["MFD_SEL-JETT"].arg_lim		= {{0, 1}, {-0.33, 0.33}}
elements["MFD_SEL-JETT"].stop_action	= nil
elements["MFD_SEL-JETT"].gain			= {1.0, 0.66}
elements["MFD_SEL-JETT"].cycle			= false
elements["MFD_DAY-NIGHT"]						= default_3_pos_switch("MPCD Power Control",				devices.AWG27_MPCD,		AWG27_commands.MPCD_PWR_CNTL,		321)
elements["MFD_BRT+"]							= default_button("MPCD Brightness Control",					devices.AWG27_MPCD,		AWG27_commands.MPCD_BRT_CNTL,		322,	1)
elements["MFD_BRT-"]							= default_button("MPCD Brightness Control",					devices.AWG27_MPCD,		AWG27_commands.MPCD_BRT_CNTL,		322,	-1)
elements["MFD_CTRS+"]							= default_button("MPCD Contrast Control",					devices.AWG27_MPCD,		AWG27_commands.MPCD_CONT_CNTL,		323,	1)
elements["MFD_CTRS-"]							= default_button("MPCD Contrast Control",					devices.AWG27_MPCD,		AWG27_commands.MPCD_CONT_CNTL,		323,	-1)
elements["TMB_Master_Arm"]						= default_2_pos_switch("Master Arm Control",				devices.AWG27_MPCD,		AWG27_commands.MASTERARM,			124)

-- Pitch Ratio Select Switch
elements["TMB_PITCH-RATIO"]						= default_2_pos_switch("Pitch Ratio Control",				devices.FLT_CNTL,		FLT_CNTL_commands.PITCH_RATIO,		324)

-- Landing Gear Control Handle
elements["TBM_Wheels"]							= default_2_pos_switch("Landing Gear Control ",				devices.FLT_CNTL,		FLT_CNTL_commands.LDG_GEAR,			83)
elements["TBM_Wheels"].updatable = true

-- Emergency Landing Gear Handle
elements["PULL"]								= default_button_tumb("Emergency Gear Control",				devices.FLT_CNTL,		FLT_CNTL_commands.EMER_GEAR,		347)

-- elements["HOOK"]								= default_2_pos_switch("Arresting Hook Control")

-- elements["ASI_INDEX"]						= default_axis_limited("Index Setting")				-- Airspeed/Mach Indicator
-- elements["G_RESET"]							= default_button("Accelerometer Reset")				-- Accelerometer
-- elements["BARO"]								= default_axis_limited("Baro Setting")				-- Altimeter
-- elements["CAGE"]								= default_button("Gyro Cage Control")				-- Standby Attitude Indicator
-- elements["STBY_BARO"]						= default_axis_limited("Baro Setting")				-- Standby Altimeter
-- elements["CLOCK_SET"]						= default_axis_limited("Clock Adjust")				-- Eight Day Clock
-- elements["CLOCK_TIMER"]						= default_axis_limited("Clock Timer Mode Control")	-- Eight Day Clock

-- Curcuit Breaker Panel
-- elements["AFCS_AC"]							= default_button("Automatic Flight Control System AC Curcuit Breaker")
-- elements["AFCS_DC"]							= default_button("Automatic Flight Control System DC Curcuit Breaker")
-- elements["SPD_BRK"]							= default_button("Speed Brake Curcuit Breaker")
-- elements["L_PITOT_HEAD_HEAT"]				= default_button("Left Pitot Heater Curcuit Breaker")
-- elements["FLAP"]								= default_button("Flaps Curcuit Breaker")
-- elements["LG"]								= default_button("Langing Gear Curcuit Breaker")
-- elements["NWS"]								= default_button("Nosewheel Steering Curcuit Breaker")
-- elements["R_PITOT_HEAD_HEAT"]				= default_button("Right Pitot Heater Curcuit Breaker")

-- ACES II Ejection Seat
-- elements["ACES_SAFETY"]						= default_button("Ejection Controls Safety Lever")
-- elements["ACES_HARNESS"]						= default_button("Shoulder Harness Lock/Unlock Handle")
-- elements["ACES_EJECTION"]					= default_button("Ejection Control Handle")
-- elements["ACES_EMER_REL"]					= default_button("Restraint Emergency Release Handle")

-- Control Stick
-- elements["STICK_CASTLE"]						= default_button_axis("Castle Switch")
	-- elements["STICK_CASTLE_FWD"]					= default_button_axis("FLIR Control Down, Select HUD")
	-- elements["STICK_CASTLE_AFT"]					= default_button_axis("FLIR Control Up, Select MPCD")
	-- elements["STICK_CASTLE_LEFT"]				= default_button_axis("FLIR Control Left, Select Left MPD")
	-- elements["STICK_CASTLE_RIGHT"]				= default_button_axis("FLIR Control Right, Select Right MPD")
-- elements["STICK_TRIG"]						= default_2_pos_switch("Gun Trigger")
-- elements["STICK_NWS"]						= default_button("Nose Wheel Steering Control")
-- elements["STICK_PADDLE"]						= default_button("Autopilot/NWS Disengage")
-- elements["STICK_TRIM"]						= default_button_axis("Trim/CMDS Control")
	-- elements["STICK_TRIM_UP"]					= default_button_axis("Trim Control")
	-- elements["STICK_TRIM_DN"]					= default_button_axis("Trim Control")
	-- elements["STICK_TRIM_LEFT"]					= default_button_axis("Trim Control")
	-- elements["STICK_TRIM_RIGHT"]					= default_button_axis("Trim Control")
-- elements["STICK_WPN_REL"]					= default_3_pos_switch("Weapon Release")
-- elements["STICK_ACQ"]						= default_3_pos_switch("Auto Acquisition/AAR Control")
	-- elements["STICK_ACQ_FWD"]					= default_3_pos_switch("TP FOV Change, TSD Smaller CUE")
	-- elements["STICK_ACQ_AFT"]					= default_3_pos_switch("TP Return to CUE, TSD Larger CUE")


elements["MIRROR_2"]							= default_button("Toggle Mirrors",							devices.MAIN_INST,	INST_commands.CLIC_MIRROR)
elements["MIRROR_1"]							= default_button("Toggle Mirrors",							devices.MAIN_INST,	INST_commands.CLIC_MIRROR)
elements["MIRROR_3"]							= default_button("Toggle Mirrors",							devices.MAIN_INST,	INST_commands.CLIC_MIRROR)

