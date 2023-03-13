--[[
	Inboard Pylon				SUU-59/A	156.5kg	(345 lb)
	Centerline Pylon			SUU-60/A	134.3kg	(296 lb)
	Outboard Pylon				SUU-61/A			( 50 lb)
	Missile Launcer Adapter		ADU-407/A	 11.8kg	( 26 lb)
	Missile Launcer				LAU-114/A	 23.1kg	( 51 lb)
	Fuselage Missile Launcher	LAU-106/A			( 50 lb)
	Bomb Ejector Rack			MAU-12C/A			( 81 lb)
]]

local WING = {
	{CLSID = "{RM_TER_9A_AIM_7Q}"},

	{CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}"},		-- Fuel Tank 610 Gal

	{CLSID = "{CBU-52B}"},									-- CBU-52

	{CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"},		-- GBU-10

	{CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}"},		-- Mk-20
	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},		-- Mk-82

	{CLSID = "{Mk82SNAKEYE}"},								-- Mk-82 Snakeye
	{CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"},		-- Mk-84

	{CLSID = "{TER_9A_3*MK-82}"},							-- Mk-82 *3
	{CLSID = "{TER_9A_3*MK-82_Snakeye}"},					-- Mk-82 Snakeye *3
	{CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}"},		-- Mk-82 *6
	{CLSID = "{3C7CD675-7D39-41C5-8735-0F4F537818A8}"},		-- Mk-20 *6

	{CLSID = "<CLEAN>", arg_increment = 1.0, Cx_gain = -0.220, add_mass = -226.3},
}

local AAMW = {
	{CLSID = "{RM_TER_9A_AIM_7Q}"},

	{CLSID = "{AIM-9J}"},								-- AIM-9L
	{CLSID = "{AIM-9L}"},								-- AIM-9L
	{CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}"},	-- AIM-9M
	{CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}"},	-- AIM-9P
	{CLSID = "CATM-9M"},								-- CATM-9M
}

local AAM = {
	{CLSID = "{RM_TER_9A_AIM_7Q}"},

	{CLSID = "{AIM-7F}"},								-- AIM-7F
	{CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}"},	-- AIM-7M

	{CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}"},	-- AIM-120B
	{CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}"},	-- AIM-120C
}

local Centerline = {
	{CLSID = "{RM_TER_9A_AIM_7Q}"},

	{CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}"},		-- Fuel Tank 610 Gal
	{CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}"},		-- ALQ-131
	{CLSID = "ALQ_184"},									-- ALQ-184
	{CLSID = "ALQ_184_Long"},								-- ALQ-184-9

	{CLSID = "{CBU-52B}"},									-- CBU-52

	{CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"},		-- GBU-10

	{CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}"},		-- Mk-20
	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},		-- Mk-82

	{CLSID = "{Mk82SNAKEYE}"},								-- Mk-82 Snakeye
	{CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"},		-- Mk-84

	{CLSID = "{TER_9A_3*MK-82}"},							-- Mk-82 *3
	{CLSID = "{TER_9A_3*MK-82_Snakeye}"},					-- Mk-82 Snakeye *3
	{CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}"},		-- Mk-82 *6
	{CLSID = "{3C7CD675-7D39-41C5-8735-0F4F537818A8}"},		-- Mk-20 *6
	{CLSID = "<CLEAN>", arg_increment = 1.0, Cx_gain = -0.220, add_mass = -134.3},
}

F15_J = {
	Name					= "F-15J",
	DisplayName				= _("F-15J"),				-- Editor Display Name
	Picture					= "F-15.png",				-- Loadout tab Image
	Rate					= "50",						-- Reward Point (for MultiPlayer)
	Shape					= "F-15J",					-- Shape Name
	WorldID					= WSTYPE_PLACEHOLDER,		-- Identifier
	mapclasskey				= "P0091000024",			-- Thumbnail when placed on the map.
	country_of_origin		= "USA",
	date_of_introduction	= 1972.0,
	input_profile_entry	= "F-15J",				-- Input Profile Name
	livery_entry		= "F-15J",				-- Livery Forlder Name

	shape_table_data = {
		{
			file				= "F-15J",				-- Model Shape File
			life				= 20,					-- Object Strength
			vis					= 3,					-- Visibility factor.
			desrt				= "F-15J_destr",		-- Name of destroyed object file name
			fire				= {300, 2},				-- Burning Time After being Destroyed
			username			= "F-15J",
			index				= WSTYPE_PLACEHOLDER,	-- Identifier ?
			classname			= "lLandPlane",			-- Static Object Setting ?
			positioning			= "BYNORMAL",			-- Static Object Setting ?
			drawonmap			= true;					-- Static Object Setting ?
		},
		{
			name = "F-15J_destr",				-- Name of destroyed object file name
			file = "f-15-oblomok",				-- Destroyed Model Shape File
			fire = {240, 2},					-- Burning time after being destroyed
		},
	}, -- end of shape_table_data

	M_empty							= 13380,	-- Empty weight (kg)
	M_nominal						= 19000,	-- %50 fuel, combat load (kg)
	M_max							= 30845,	-- Maximum Take Off Weight (kg)
	M_fuel_max						= 6283,		-- Internal Fuel Weight (kg)
	H_max							= 19812,	-- Maximum Operational Ceiling (m)
	average_fuel_consumption		= 0.271,	-- Fuel Consumption (kg/s)

	MaxFuelWeight					= "6103",
	MaxHeight						= "19700",
	MaxSpeed						= "2650",
	MaxTakeOffWeight				= "30845",
	EmptyWeight						= "13380",
	AmmoWeight						= "244.4",

	has_afteburner					= true,		-- Afterburner Available
	has_speedbrake					= true,		-- SpeedBrake Available
	has_differential_stabilizer		= false,	-- Differential stabilizers yes/no
	radar_can_see_ground			= true,		-- Ground Target Identification Available
	EPLRS							= true,		-- EPLRS Available
	TACAN_AA						= true,		-- Air to Air TACAN Available
	is_tanker						= false,	-- "True" is Set to Tanker
	bigParkingRamp					= false,
	dataCartridge					= true,
	HumanCockpit					= true,
	Navpoint_Panel					= true,
	Waypoint_Panel					= true,
	Fixpoint_Panel					= true,

	length							= 19.43,	-- Length (m)
	height							= 5.63,		-- Height (m)
	wing_area						= 56.5,		-- Wing Area (m^2)
	wing_span						= 13.05,	-- Wing Span (m)
	wing_type						= 0,		-- Wing Type | 0=Fixed, 1=Variable Geometry, 2=Folded Wing, 3=Ariable Geometry Folded
	wing_tip_pos					= {-3.900,	 0.200,	 6.600}, -- Wingtip Coords
	air_refuel_receptacle_pos		= { 1.390,	 0.410,	-1.660}, -- Refuel Port Coords
	nose_gear_pos					= { 4.590,	-2.523,	 0.000}, -- Nose Gear Coords
	main_gear_pos					= {-0.800,	-2.456,	 1.425}, -- Main Gear Coords
	nose_gear_wheel_diameter		= 0.754,	-- Nose Wheel Diameter (m)
	main_gear_wheel_diameter		= 0.972,	-- Main Wheel Diameter (m)
	tand_gear_max					= 1.732,	-- Nose Wheel Steering (Tangent of degrees)

	nose_gear_amortizer_direct_stroke			=  0.000,	-- Nose Gear Strut Expansion
	main_gear_amortizer_direct_stroke			=  0.000,	-- Main Gear Strut Expansion
	nose_gear_amortizer_normal_weight_stroke	= -0.215,	-- Nose Gear Strut Normal Weight Compression
	main_gear_amortizer_normal_weight_stroke	= -0.114,	-- Main Gear Strut Normal Weight Compression
	nose_gear_amortizer_reversal_stroke			= -0.430,	-- Nose Gear Strut Full Compression
	main_gear_amortizer_reversal_stroke			= -0.228,	-- Main Gear Strut Full Compression

	thrust_sum_max					= 16112,	-- ミリタリー出力 (kgf) (F100-PW-229)
	thrust_sum_ab					= 26451,	-- A/B出力 (kgf)
	IR_emission_coeff				= 0.85,		-- 赤外線放射係数 (ミリタリー出力)
	IR_emission_coeff_ab			= 4.25,		-- 赤外線放射係数 (A/B出力)

	brakeshute_name					= 0,		-- Brake Chute Visual Shape After separation
	RCS								= 5,		-- 電波反射面積 (m^2)
	detection_range_max				= 335,		-- 機上レーダー検出範囲 (km)
	tanker_type						= 1,		-- 空中給油方法 | 0=none, 1=boom, 2=probe and drogue
	stores_number					= 12,		-- External Stores Count
	engines_count					= 2,		-- エンジン数
	crew_size						= 1,		-- Crew Count

--	=============================================== for AI ===============================================
	CAS_min							= 58.0,		-- 最低指示対気速度 (m/s)
	V_opt							= 220,		-- 巡航速度 (m/s)
	V_take_off						= 61.0,		-- 離陸速度 (m/s)
	V_land							= 71.0,		-- 着陸速度 (m/s)
	V_max_sea_level					= 403,		-- 低高度での最高速度 (m/s)
	V_max_h							= 736.11,	-- 高高度での最高速度 (m/s)
	Vy_max							= 275,		-- 最高上昇速度 (m/s)
	Mach_max						= 2.5,		-- 最高速度 (Mach)
	AOA_take_off					= 0.16,		-- 離陸迎角
	bank_angle_max					= 60.0,		-- 最大バンク角 (deg)
	Ny_min							= -3.00,	-- 最小加速度 (G Unit)
	Ny_max							= 8.00,		-- 最大加速度 (G Unit)
	Ny_max_e						= 8.00,		-- Max G
	range							= 2540,		-- 最大航続距離 (km)
	flaps_maneuver					= 1,		-- Max flaps in take-off and maneuver
--	=============================================== for AI End ===============================================

	attribute = {
		wsType_Air,
		wsType_Airplane,
		wsType_Fighter,
		WSTYPE_PLACEHOLDER,
		"Fighters",
		"Refuelable",
		"Datalink",
		"Link16"
	}, -- end of attribute

	Categories = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"},

	mechanimations = {
		CrewLadder = {
			{
				Flags = {"Reversible"},
				Sequence = {
					{C = {{"Arg", 91, "to", 0.9, "in", 1.5}}},
					{C = {{"Sleep", "for", 5}}}
				},
				Transition = {"Dismantle", "Erect"}
			},
			{
				Flags = {"Reversible", "StepsBackwards"},
				Sequence = {
					{C = {{"Arg", 91, "to", 0, "in", 2.7}}},
					{C = {{"Sleep", "for", 0}}}
				},
				Transition = {"Erect", "Dismantle"}
			}
		}, -- end of CrewLadder
		Door0 = {
			{
				Flags = {"Reversible"},
				Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08}}}},
				Transition = {"Close", "Open"}
			},
			{
				Flags = {"Reversible", "StepsBackwards"},
				Sequence = {{C = {{"Arg", 38, "to", 0, "in", 6.743}}}},
				Transition = {"Open", "Close"}
			},
			{
				Sequence = {{C = {{"JettisonCanopy", 0}}}},
				Transition = {"Any", "Bailout"}
			}
		}, -- end of Door0
		ServiceHatches = {
			{
				Sequence = {
					{C = {{"PosType", 3}, {"Sleep", "for", 120}}},
					{C = {{"Arg", 428, "to", 0.9, "speed", 0.6}}}
				},
				Transition = {"Close", "Open"}
			},
			{
				Sequence = {
					{C = {{"PosType", 3 }, {"Sleep", "for", 120 }}},
					{C = {{"Arg", 428, "to", 0, "speed", 0.6}}}
				},
				Transition = {"Open", "Close"}
			}
		} -- end of ServiceHatches
	}, -- end of mechanimations

	SpecificCallnames = {
	}, -- end of SpecificCallnames

	engines_nozzles = {
		[1] = {
			diameter			= 1.076,					-- A/B Cone Diameter
			elevation			= 0.0,						-- A/B Cone Elevation
			azimuth				= 0.0,						-- A/B Cone Azimuth
			exhaust_length_ab	= 5.8,						-- length (m)
			exhaust_length_ab_K	= 0.76,						-- A/B Animation length (m)
			pos					= {-6.751, 0.067, -0.705},	-- Nozzle Coords
			smokiness_level		= 0.1
		}, -- end of [1]
		[2] = {
			diameter			= 1.076,
			elevation			= 0.0,
			azimuth				= 0.0,
			exhaust_length_ab	= 5.8,
			exhaust_length_ab_K	= 0.76,
			pos					= {-6.751, 0.067, 0.705},
			smokiness_level		= 0.1
		} -- end of [2]
	}, -- end of engines_nozzles

	crew_members = {
		[1] = {
			drop_canopy_name	= "F-15-FONAR",
			ejection_seat_name	= "PILOT_ACER",
			pilot_name			= "PILOT_PARASHUT_US",
			pos					= {6.277, 1.198, 0},
			role				= "pilot",
			role_display_name	= "Pilot"
		} -- end of [1]
	}, -- end of crew_members

	fires_pos = {
		[1] =	{-1.842,	0.563,		 0.000},	-- Fuselage
		[2] =	{-1.644,	0.481,		 2.870},	-- Wing L In
		[3] =	{-1.389,	0.461,		-3.232},	-- Wing R In
		[4] =	{-0.820,	0.265,		 2.774},	-- Wing L Mid
		[5] =	{-0.820,	0.265,		-2.774},	-- Wing R Mid
		[6] =	{-0.820,	0.255,		 4.274},	-- Wing L Out
		[7] =	{-0.820,	0.255,		-4.274},	-- Wing R Out
		[8] =	{-5.753,	0.060,		 0.705},	-- Engine L In
		[9] =	{-5.753,	0.060,		-0.705},	-- Engine R In
		[10] =	{-0.992,	0.850,		 0.000},	-- Engine L Out
		[11] =	{-1.683,	0.507,		-2.910},	-- Engine R Out
	}, -- end of fires_pos

	effects_presets = {
		{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/Overwing_Vapor.lua"},
	}, -- end of effects_presets

	chaff_flare_dispenser = {
		[1] = {
			dir = {0.0, -1.0, 0.0},				-- Dispense direction
			pos = {1.158, -1.770, -0.967}		-- Dispenser Position
		}, -- end of [1]
		[2] = {
			dir = {0.0, -1.0, 0.0},
			pos = {1.158, -1.77, 0.967}
		} -- end of [2]
	}, -- end of chaff_flare_dispenser

	passivCounterm = {
		CMDS_Edit			= true,
		SingleChargeTotal	= 240,		-- CMDS Total Ammount
		chaff				= {default = 120,	increment = 30,	chargeSz = 1},
		flare				= {default = 60,	increment = 15,	chargeSz = 2}
	}, -- end of passivCounterm

	CanopyGeometry = {
		azimuth		= {-145.0, 145.0},	-- Pilot View horizontal (AI)
		elevation	= {-50.0, 90.0}		-- Pilot View vertical (AI)
	}, -- end of CanopyGeometry

	Sensors = {
		RADAR = "AN/APG-63",	-- Radar Type
		RWR = "J/APR-4A",		-- RWR Type | Radar Warning Receiver(RWR)
--		IRST = "",				-- IR Sensor Type
--		OPTIC = ""				-- Optical Sensor Type
	}, -- end of Sensors

	Countermeasures = {
		ECM = "J/ALQ-8",		-- ECM Type | Tactical Electronic Warfare System (TEWS)
		DISPENSER = "AN/ALE-47"	-- CMDS Type
--		IRCM = "",
	}, -- end of Countermeasures

	laserEquipment = {
		laserRangefinder = false
	}, -- end of laserEquipment

	Failures = {
		{id = "asc",		label = _("ASC"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "autopilot",	label = _("AUTOPILOT"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "hydro",		label = _("HYDRO"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "l_engine",	label = _("L-ENGINE"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "r_engine",	label = _("R-ENGINE"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "radar",		label = _("RADAR"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
	  --{id = "eos",		label = _("EOS"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
	  --{id = "helmet",		label = _("HELMET"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "mlws",		label = _("MLWS"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "rws",		label = _("RWS"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "ecm",		label = _("ECM"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "hud",		label = _("HUD"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "mfd",		label = _("MFD"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100}
	}, -- end of Failures

	HumanRadio = {
		frequency		= 251.0,			-- Default Radio Frequency
		editable		= true,
		minFrequency	= 225.000,			-- Radio Min Frequency
		maxFrequency	= 399.975,			-- Radio Max Frequency
		modulation		= MODULATION_AM
	}, -- end of HumanRadio

	PanelRadio = { -- Mission editor radio panel
		[1] = {
			name = _("R1 (UHF) AN/ARC-164"), -- 225.000 - 399.975 MHz UHF AM
			range = { -- AM
				min = 225.0,
				max = 399.975,
				modulation = MODULATION_AM
			}, -- end of range
			channels = {
				[1] = {name = _("Channel 1"),		default = 251.0, connect = true}, -- default
				[2] = {name = _("Channel 2"),		default = 264.0},	-- min. water : 135.0, 264.0
				[3] = {name = _("Channel 3"),		default = 265.0},	-- nalchik : 136.0, 265.0
				[4] = {name = _("Channel 4"),		default = 256.0},	-- sochi : 127.0, 256.0
				[5] = {name = _("Channel 5"),		default = 254.0},	-- maykop : 125.0, 254.0
				[6] = {name = _("Channel 6"),		default = 250.0},	-- anapa : 121.0, 250.0
				[7] = {name = _("Channel 7"),		default = 270.0},	-- beslan : 141.0, 270.0
				[8] = {name = _("Channel 8"),		default = 257.0},	-- krasnodar-pashk. : 128.0, 257.0
				[9] = {name = _("Channel 9"),		default = 255.0},	-- gelenjik : 126.0, 255.0
				[10] = {name = _("Channel 10"),		default = 262.0},	-- kabuleti : 133.0, 262.0
				[11] = {name = _("Channel 11"),		default = 259.0},	-- gudauta : 130.0, 259.0
				[12] = {name = _("Channel 12"),		default = 268.0},	-- soginlug : 139.0, 268.0
				[13] = {name = _("Channel 13"),		default = 269.0},	-- vaziani : 140.0, 269.0
				[14] = {name = _("Channel 14"),		default = 260.0},	-- batumi : 131.0, 260.0
				[15] = {name = _("Channel 15"),		default = 263.0},	-- kutaisi : 134.0, 263.0
				[16] = {name = _("Channel 16"),		default = 261.0},	-- senaki : 132.0, 261.0
				[17] = {name = _("Channel 17"),		default = 267.0},	-- lochini : 138.0, 267.0
				[18] = {name = _("Channel 18"),		default = 251.0},	-- krasnodar-center : 122.0, 251.0
				[19] = {name = _("Channel 19"),		default = 253.0},	-- krymsk : 124.0, 253.0
				[20] = {name = _("Channel 20"),		default = 266.0},	-- mozdok : 137.0, 266.0
			} -- end of channels
		}, -- end of [1]
		[2] = {
			name = _("R2 (UHF) AN/ARC-164"), -- 225.000 - 399.975 MHz UHF AM
			range = { -- AM
				min = 225.0,
				max = 399.975,
				modulation = MODULATION_AM
			}, -- end of range
			channels = {
				[1] = {name = _("Channel 1"),		default = 251.0, connect = true}, -- default
				[2] = {name = _("Channel 2"),		default = 264.0},	-- min. water : 135.0, 264.0
				[3] = {name = _("Channel 3"),		default = 265.0},	-- nalchik : 136.0, 265.0
				[4] = {name = _("Channel 4"),		default = 256.0},	-- sochi : 127.0, 256.0
				[5] = {name = _("Channel 5"),		default = 254.0},	-- maykop : 125.0, 254.0
				[6] = {name = _("Channel 6"),		default = 250.0},	-- anapa : 121.0, 250.0
				[7] = {name = _("Channel 7"),		default = 270.0},	-- beslan : 141.0, 270.0
				[8] = {name = _("Channel 8"),		default = 257.0},	-- krasnodar-pashk. : 128.0, 257.0
				[9] = {name = _("Channel 9"),		default = 255.0},	-- gelenjik : 126.0, 255.0
				[10] = {name = _("Channel 10"),		default = 262.0},	-- kabuleti : 133.0, 262.0
				[11] = {name = _("Channel 11"),		default = 259.0},	-- gudauta : 130.0, 259.0
				[12] = {name = _("Channel 12"),		default = 268.0},	-- soginlug : 139.0, 268.0
				[13] = {name = _("Channel 13"),		default = 269.0},	-- vaziani : 140.0, 269.0
				[14] = {name = _("Channel 14"),		default = 260.0},	-- batumi : 131.0, 260.0
				[15] = {name = _("Channel 15"),		default = 263.0},	-- kutaisi : 134.0, 263.0
				[16] = {name = _("Channel 16"),		default = 261.0},	-- senaki : 132.0, 261.0
				[17] = {name = _("Channel 17"),		default = 267.0},	-- lochini : 138.0, 267.0
				[18] = {name = _("Channel 18"),		default = 251.0},	-- krasnodar-center : 122.0, 251.0
				[19] = {name = _("Channel 19"),		default = 253.0},	-- krymsk : 124.0, 253.0
				[20] = {name = _("Channel 20"),		default = 266.0},	-- mozdok : 137.0, 266.0
			} -- end of channels
		}, -- end of [2]
	}, -- end of PanelRadio

	AddPropAircraft = { -- Aircraft Additional Properties
		{
			id = "HelmetMountedDevice",
			control = 'comboList',
			label = _('Helmet Mounted Device'),
			values = {
				{id = 0, dispName = _("Not installed")},
				{id = 1, dispName = _("JHMCS")},
				{id = 2, dispName = _("NVG")},
			},
			defValue	= 1,
			wCtrl		= 150,
			playerOnly = true
		},
	}, -- end of AddPropAircraft

	Guns = {
		gun_mount("M_61",
			{
				count				= 940,
				max_burst_length	= 940,
				rates				= {6000, 4200},
				recoil_coeff		= 1.0,
			},
			{
				muzzle_pos = {3.209, 0.372, 1.749},
				muzzle_pos_connector = "GUN_POINT",
				ejector_dir = {-2.0, -5.0, 0.0},
				ejector_pos = {-0.5, -0.5, 0.0},
				effects = {
					{
						name = "FireEffect",
						arg = 350,
						duration = 0.02,
						attenuation = 2,
						light_pos = {0.5, 0, 0}
					},
					{
						name = "SmokeEffect",
						gas_deflector = true,
						smoke_dir = {0, -3, 10}
					}
				}
			}
		) -- end of gun_mount
	}, -- end of Guns

	ammo_type_default = 1,
	ammo_type = {
		_("HEI High Explosive Incendiary"),
		_("HEI-T High Explosive Incendiary-Tracer"),
		_("AP Armor Piercing"),
		_("TP Target Practice-Tracer"),
		_("SAPHEI High Explosive Armor Piercing PGU"),
		_("TP Target Practice-Tracer PGU"),
	}, -- end of ammo_type

	Pylons = {
	--		  ID	Type	X		Y		Z
		pylon(1,	0,		 0.660,	-0.078,	-3.325,
			{
				connector		= "Pylon1",
				use_full_connector_position = true,	-- if TRUE, then the position is read from the 3D model 
				DisplayName		= "2A",
				FiX = 0.0,
				FiY = 0.0,
				FiZ = 0.0 -- pitch angle (Z) for ALL weapons, and depending on the value of use_full_connector_position
			},
			AAMW
		),
		pylon(2,	0,		-0.155,	-0.343,	-2.944,
			{
				connector		= "Pylon2",
				use_full_connector_position = true,
				DisplayName		= "2",
				arg				= 309,
				arg_value		= 0,
			},
			WING
		),
		pylon(3,	0,		 0.660,	-0.078,	-2.563,
			{
				connector		= "Pylon3",
				use_full_connector_position = true,
				DisplayName		= "2B",
			},
			AAMW
		),
		pylon(4,	1,		-2.590,	-0.760,	-1.470,
			{
				connector		= "Pylon4",
				use_full_connector_position = true,
				DisplayName		= "3",
			},
			AAM
		),
		pylon(5,	1,		 1.250,	-0.750,	-1.545,
			{
				connector		= "Pylon5",
				use_full_connector_position = true,
				DisplayName		= "4",
			},
			AAM
		),
		pylon(6,	0,		 0.184,	-1.030,	 0.000,
			{
				connector		= "Pylon6",
				use_full_connector_position = true,
				DisplayName		= "6",
				arg				= 313,
				arg_value		= 0,
			},
			Centerline
		),
		pylon(7,	1,		-2.590,	-0.760,	 1.470,
			{
				connector		= "Pylon7",
				use_full_connector_position = true,
				DisplayName		= "7",
			},
			AAM
		),
		pylon(8,	1,		 1.250,	-0.750,	 1.545,
			{
				connector		= "Pylon8",
				use_full_connector_position = true,
				DisplayName		= "8",
			},
			AAM
		),
		pylon(9,	0,		 0.660,	-0.078,	 2.563,
			{
				connector		= "Pylon9",
				use_full_connector_position = true,
				DisplayName		= "8A",
			},
			AAMW
		),
		pylon(10,	0,		-0.155,	-0.343,	 2.944,
			{
				connector		= "Pylon10",
				use_full_connector_position = true,
				DisplayName		= "8",
				arg				= 317,
				arg_value		= 0,
			},
			WING
		),
		pylon(11,	0,		 0.660,	-0.078,	 3.325,
			{
				connector		= "Pylon11",
				use_full_connector_position = true,
				DisplayName		= "8B",
			},
			AAMW
		),
	}, -- end of Pylons

	Tasks = {
		aircraft_task(CAP),
		aircraft_task(Escort),
		aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
		aircraft_task(GroundAttack),
		aircraft_task(CAS),
		aircraft_task(AFAC),
		aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
	}, -- end of Tasks
	DefaultTask = aircraft_task(CAP),

	net_animation = { -- Add Model Draw Args for Network Transmitting to This draw_args Table. (16 limit)
		2,		-- NWS
		25,		-- Hook
		89,		-- Nozzle Left
		90,		-- Nozzle Right
		274,	-- Intake Left
		275,	-- Intake Right
	}, -- end of net_animation

	SFM_Data = {
		aerodynamics = {
			Cy0				= 0.00,		-- 迎角ゼロでの揚力係数
			Mzalfa			= 6.00,		-- 水平尾翼ピッチ係数
			Mzalfadt		= 1.00,		-- 主翼ピッチ係数
			kjx				= 2.95,		-- ロールレートの加速度定数 (ラジアン/秒)
			kjz				= 0.00125,	-- 不明なピッチ定数 All planes use 0.00125.
			Czbe			= -0.016,	-- 方向安定係数
			cx_gear			= 0.0268,	-- 着陸脚の抗力係数
			cx_flap			= 0.060,	-- フラップの抗力係数
			cy_flap			= 0.400,	-- フラップの揚力係数
			cx_brk			= 0.060,	-- エアブレーキの抗力係数
			table_data = {
			--	M		Mach	マッハ数
			--	Cx0		CDmin	最小抗力係数
			--	Cya		CLα		揚力傾斜
			--	B		K'		誘導抗力係数
			--	B4		K''		粘性抵抗係数
			--	Omxmax	P		ロール率
			--	Aldop			安定性/操縦性のための視覚効果設定
			--	Cymax	CLmax	αstall に対応する最大揚力係数

			--	M		Cx0			Cya			B		B4			Omxmax		Aldop		Cymax
				{0.0,	0.0215,		0.055,		0.080,	0.220,		0.650,		25.0,		1.20},
				{0.2,	0.0215,		0.055,		0.080,	0.220,		1.800,		25.0,		1.20},
				{0.4,	0.0215,		0.055,		0.080,	0.220,		3.000,		25.0,		1.20},
				{0.6,	0.0215,		0.055,		0.050,	0.280,		4.200,		25.0,		1.20},
				{0.7,	0.0215,		0.055,		0.050,	0.280,		4.200,		23.0,		1.15},
				{0.8,	0.0215,		0.055,		0.050,	0.280,		4.200,		21.7,		1.10},
				{0.9,	0.0230,		0.058,		0.090,	0.200,		4.200,		20.1,		1.07},
				{1.0,	0.0320,		0.062,		0.170,	0.150,		4.200,		18.9,		1.04},
				{1.1,	0.0430,		0.062,		0.235,	0.090,		3.780,		17.4,		1.02},
				{1.2,	0.0460,		0.062,		0.285,	0.080,		2.940,		17.0,		1.00},
				{1.3,	0.0470,		0.060,		0.290,	0.100,		2.100,		16.0,		0.92},
				{1.4,	0.0470,		0.056,		0.300,	0.136,		1.800,		15.0,		0.80},
				{1.6,	0.0470,		0.052,		0.340,	0.210,		1.080,		13.0,		0.70},
				{1.8,	0.0460,		0.042,		0.340,	2.430,		0.960,		12.0,		0.55},
				{2.2,	0.0420,		0.037,		0.490,	3.500,		0.840,		10.0,		0.37},
				{2.5,	0.0420,		0.033,		0.600,	4.700,		0.840,		 9.0,		0.30},
				{3.9,	0.0400,		0.023,		0.900,	6.000,		0.840,		 7.0,		0.20},
			} -- end of table_data
		}, -- end of aerodynamics
		engine = {
			Nmg			= 66.0,			-- アイドル時エンジン回転数
			MinRUD		= 0.00,			-- 最小スロットル位置
			MaxRUD		= 1.00,			-- 最大スロットル位置
			MaksRUD		= 0.85,			-- ミリタリー出力位置
			ForsRUD		= 0.91,			-- A/B出力位置
			type		= "TurboJet",	-- Type of Engines | 0:"TurboJet", 2:"Piston" 3:"TurboProp", 4:"TurboFan", 5:"TurboShaft"
			hMaxEng		= 19.5,			-- 最高動作高度 (km)
			dcx_eng		= 0.0114,		-- Drag Coefficient for Engine
			cemax		= 1.24,			-- Mil. Fuel Consumption (kg/s) (for AI)
			cefor		= 2.56,			-- A/B Fuel Consumption (kg/s) (for AI)
			dpdh_m		= 6000,			-- Altitude Coefficient for Max Thrust
			dpdh_f		= 14000.0,		-- Altitude Coefficient for A/B Thrust
			table_data = {
			--	M		= Mach Number
			--	Pmax	= Mil. Thrust (kN * 1000)
			--	Pfor	= A/B Thrust (kN * 1000)

			--   M		Pmax		Pfor
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000}
			}, -- end of table_data
		} -- end of engine
	}, -- end of SFM_Data

	Damage = { -- Index meaning see in Scripts\Aircrafts\_Common\Damage.lua
		[0]		= {critical_damage = 5,		args = {146}},									-- NOSE_CENTER
		[1]		= {critical_damage = 3,		args = {296}},									-- NOSE_LEFT_SIDE
		[2]		= {critical_damage = 3,		args = {297}},									-- NOSE_RIGHT_SIDE
		[3]		= {critical_damage = 8,		args = { 65}},									-- COCKPIT
		[4]		= {critical_damage = 2,		args = {298}},									-- CABIN_LEFT_SIDE
		[5]		= {critical_damage = 2,		args = {301}},									-- CABIN_RIGHT_SIDE
		[7]		= {critical_damage = 2,		args = {249}},									-- GUN
		[8]		= {critical_damage = 3,		args = {265}},									-- GEAR_FRONT
		[9]		= {critical_damage = 3,		args = {154}},									-- FUSELAGE_LEFT_SIDE
		[10]	= {critical_damage = 3,		args = {153}},									-- FUSELAGE_RIGHT_SIDE
		[11]	= {critical_damage = 1,		args = {167}},									-- ENGINE_L_IN
		[12]	= {critical_damage = 1,		args = {161}},									-- ENGINE_R_IN
		[13]	= {critical_damage = 2,		args = {169}},									-- MTG_L_BOTTOM
		[14]	= {critical_damage = 2,		args = {163}},									-- MTG_R_BOTTOM
		[15]	= {critical_damage = 2,		args = {267}},									-- GEAR_L
		[16]	= {critical_damage = 2,		args = {266}},									-- GEAR_R
		[17]	= {critical_damage = 2,		args = {168}},									-- ENGINE_L_OUT
		[18]	= {critical_damage = 2,		args = {162}},									-- ENGINE_R_OUT
		[20]	= {critical_damage = 2,		args = {183}},									-- AIR_BRAKE_R
		[23]	= {critical_damage = 5,		args = {223}},									-- WING_L_OUT
		[24]	= {critical_damage = 5,		args = {213}},									-- WING_R_OUT
		[25]	= {critical_damage = 2,		args = {226}},									-- AILERON_L
		[26]	= {critical_damage = 2,		args = {216}},									-- AILERON_R
		[29]	= {critical_damage = 5,		args = {224},	deps_cells = {23, 25}},			-- WING_L_CENTER
		[30]	= {critical_damage = 5,		args = {214},	deps_cells = {24, 26}},			-- WING_R_CENTER
		[35]	= {critical_damage = 6,		args = {225},	deps_cells = {23, 29, 25, 37}},	-- WING_L_IN
		[36]	= {critical_damage = 6,		args = {215},	deps_cells = {24, 30, 26, 38}},	-- WING_R_IN
		[37]	= {critical_damage = 2,		args = {228}},									-- FLAP_L
		[38]	= {critical_damage = 2,		args = {218}},									-- FLAP_R
		[39]	= {critical_damage = 2,		args = {244},	deps_cells = {53}},				-- FIN_L_TOP
		[40]	= {critical_damage = 2,		args = {241},	deps_cells = {54}},				-- FIN_R_TOP
		[43]	= {critical_damage = 2,		args = {243},	deps_cells = {39, 53}},			-- FIN_L_BOTTOM
		[44]	= {critical_damage = 2,		args = {242},	deps_cells = {40, 54}},			-- FIN_R_BOTTOM
		[51]	= {critical_damage = 2,		args = {240}},									-- ELEVATOR_L
		[52]	= {critical_damage = 2,		args = {238}},									-- ELEVATOR_R
		[53]	= {critical_damage = 2,		args = {248}},									-- RUDDER_L
		[54]	= {critical_damage = 2,		args = {247}},									-- RUDDER_R
		[56]	= {critical_damage = 2,		args = {158}},									-- TAIL_LEFT_SIDE
		[57]	= {critical_damage = 2,		args = {157}},									-- TAIL_RIGHT_SIDE
		[59]	= {critical_damage = 3,		args = {148}},									-- NOSE_BOTTOM
		[61]	= {critical_damage = 2,		args = {147}},									-- FUEL_TANK_LEFT_SIDE
		[82]	= {critical_damage = 2,		args = {152}},									-- FUSELAGE_BOTTOM
		[83]	= {critical_damage = 2,		args = {134}},									-- WHEEL_F
		[84]	= {critical_damage = 3,		args = {135}},									-- WHEEL_R
		[85]	= {critical_damage = 3,		args = {136}},									-- WHEEL_L
	}, -- end of Damage

	DamageParts = {
		[1] = "F-15-OBLOMOK-WING-R",	-- Wing R
		[2] = "F-15-OBLOMOK-WING-L",	-- Wing L
	}, -- end of DamageParts

	lights_data = {
		typename = "collection",
		lights = {
			[WOLALIGHT_NAVLIGHTS] = {
				typename = "collection",
				lights = {
					{ -- Vtail (White)
						typename = "Argument",
						argument = 192,
						connector = "BANO_0",
					},-- end of Vtail

					{ -- Left Wing (Red)
						typename = "Argument",
						connector = "BANO_1",
						argument = 190,
						controller = "Strobe",
						power_up_t = 0.3,
						cool_down_t = 0.6,
						period = 1.0,
						flash_time = 0.7,
					}, -- end of Left Wing

					{ -- Right Wing (Green)
						typename = "Argument",
						connector = "BANO_2",
						argument = 191,
						controller = "Strobe",
						mode = 1,
						power_up_t = 0.3,
						cool_down_t = 0.6,
						period = 1.0,
						flash_time = 0.7,
					} -- end of Right Wing
				}, -- end of lights
			}, -- end of WOLALIGHT_NAVLIGHTS

			[WOLALIGHT_SPOTS] = {
				typename = "collection",
				lights = {
					{ -- Landing Light
						typename = "Argument",
						argument = 209,
						connector = "MAIN_SPOT_PTR",
					} -- end of Landing Light
				}, -- end of lights
			}, -- end of WOLALIGHT_SPOTS

			[WOLALIGHT_TAXI_LIGHTS] = {
				typename = "collection",
				lights = {
					{ -- Taxi Light
						typename = "Argument",
						argument = 208,
						connector = "MAIN_SPOT_PTR",
					} -- end of Taxi Light
				}, -- end of lights
			}, -- end of WOLALIGHT_TAXI_LIGHTS

			[WOLALIGHT_STROBES] = {
				typename = "collection",
				lights = {
					{ -- Anti-collision Light
						typename = "collection",
						lights = {
							{ -- Left
								typename = "Argument",
								connector = "RESERV1_BANO_1",
								dir_correction = {azimuth = math.rad(-55.0)},
								argument = 199,
								proto = lamp_prototypes.SMI_2KM,
								period = 1.33333,
								phase_shift = 0
							}, -- end of Left

							{ -- Right
								typename = "natostrobelight",
								connector = "RESERV_BANO_1",
								dir_correction = {azimuth = math.rad(55.0)},
								proto = lamp_prototypes.SMI_2KM,
								period = 1.33333,
								phase_shift = 0
							}, -- end of Right

							{ -- Tail
								typename = "Omni",
								connector = "RESERV2_BANO_1",
								proto = lamp_prototypes.SMI_2KM,
							}, -- end of Tail
						},
					} -- end of Anti-collision Light
				}, -- end of lights
			}, -- end of WOLALIGHT_STROBES

			[WOLALIGHT_FORMATION_LIGHTS] = {
				typename = "argumentlight",
				argument = 88,
			}, -- end of WOLALIGHT_FORMATION_LIGHTS
		} -- end of lights
	}, -- end of lights_data

	ColdStartDefaultControls = {
		[9]			=  1.0,
		[10]		=  1.0,
		[11]		= -0.2,
		[12]		= -0.2,
		[15]		= -1.0,
		[16]		= -1.0,
		[17]		=  0.5,
		[18]		= -0.5,
	} -- end of ColdStartDefaultControls

} -- end of F15_J

add_aircraft(F15_J)