--[[cockpit_args = {

-- Controls
	MIRRORS				= 3,
	STICK_HANDLE_LAT	= 71,
	STICK_HANDLE_LONG	= 74,
	THROTTLE_L_HANDLE	= 104,
	THROTTLE_R_HANDLE	= 105,
	CANOPY_CNTL			= 181,
	RUDDER_PEDAL		= 500,

-- Instruments Gauges
	NDL_AMI_CASSPD		= 8,
	NDL_AMI_MACSPD		= 179,

	NDL_ANGLE_OF_ATTACK	= 7,

	NDL_ACCEL			= 6,

	NDL_ALTITUDE		= 10,
	IND_ALTITUDE_10000	= 11,
	IND_ALTITUDE_1000	= 520,
	IND_ALTITUDE_100	= 521,
	IND_ALTITUDE_10		= 9,

	NDL_VELOCITY		= 24,

	NDL_ENG_RPM_L		= 16,
	IND_ENG_RPM_L100	= 525,
	IND_ENG_RPM_L10		= 526,
	IND_ENG_RPM_L1		= 527,

	NDL_ENG_RPM_R		= 17,
	IND_ENG_RPM_R100	= 528,
	IND_ENG_RPM_R10		= 529,
	IND_ENG_RPM_R1		= 530,

	NDL_ENG_FTIT_L		= 12,
	IND_ENG_FTIT_L1000	= 540,
	IND_ENG_FTIT_L100	= 541,
	IND_ENG_FTIT_L10	= 542,

	NDL_ENG_FTIT_R		= 14,
	IND_ENG_FTIT_R1000	= 543,
	IND_ENG_FTIT_R100	= 544,
	IND_ENG_FTIT_R10	= 545,

	NDL_ENG_FF_L		= 531,
	IND_ENG_FF_L10000	= 533,
	IND_ENG_FF_L1000	= 534,
	IND_ENG_FF_L100		= 535,

	NDL_ENG_FF_R		= 532,
	IND_ENG_FF_R10000	= 536,
	IND_ENG_FF_R1000	= 537,
	IND_ENG_FF_R100		= 538,

	NDL_ENG_NOZ_L		= 107,
	NDL_ENG_NOZ_R		= 108,

	NDL_ENG_HYD_PC1		= 109,
	NDL_ENG_HYD_PC2		= 110,
	NDL_ENG_HYD_UTL		= 111,

	NDL_ENG_OIL_L		= 112,
	NDL_ENG_OIL_R		= 113,

	NDL_CLOCK_HOURS		= 19,
	NDL_CLOCK_MINITUES	= 18,
	NDL_CLOCK_SECOUNDS	= 37,
	NDL_CLOCK_SECOUNDS	= 509,

	NDL_FUEL_QTY		= 22,
	IND_FUEL_QTY_10000	= 260,
	IND_FUEL_QTY_1000	= 261,
	IND_FUEL_QTY_100	= 262,
	IND_FUEL_QTY_L1000	= 263,
	IND_FUEL_QTY_L100	= 264,
	IND_FUEL_QTY_R1000	= 265,
	IND_FUEL_QTY_R100	= 266,

	NDL_FUEL_QTY_BNGO	= 1000,

	NDL_PITCH_RATIO		= 128,

	NDL_STBY_ASI		= 522,

	NDL_STBY_ALT10000	= 523,
	NDL_STBY_ALT1000	= 524,
	NDL_STBY_ALT100		= 539,

	NDL_CABIN_ALT		= 114,

	NDL_OXY_PRS			= 363,
	NDL_OXY_QTY			= 376,

	IND_ADI_GS_WRN		= 118,	-- Glide Slope Warning Flag
	NDL_ADI_GS_IND		= 73,	-- Glide Slope Indicator
	NDL_ADI_PI_STR		= 28,	-- Pitch Steering Bar
	IND_ADI_CS_WRN		= 118,	-- Course Warning Flag
	NDL_ADI_PITCH		= 81,	-- Pitch Scale
	NDL_ADI_BN_STR		= 27,	-- Bank Steering Bar
	NDL_ADI_BN_STR		= 30,	-- Bank Scale
	NDL_ADI_BN_PTR		= 148,	-- Bank Pointer
	IND_ADI_BN_SLP		= 25,	-- Slip Indicator
	IND_ADI_BN_TRN		= 31,	-- Turn Indicator
	IND_ADI_PWR_WRN		= 31,	-- Power Off Warning Flag

	IND_HSI_RNG1000		= 267,	-- Range Indicator
	IND_HSI_RNG100		= 268,
	IND_HSI_RNG10		= 269,
	IND_HSI_RNG1		= 270,
	NDL_HSI_PTR1		= 139,	-- Bearing Pointer No.1
	IND_HSI_CRS_WRN		= 141,	-- Course Deviation Warning Flag
	IND_HSI_CRS_ARW		= 35,	-- Course Deviation Arrow
	NDL_HSI_PTR2		= 140,	-- Bearing Pointer No.2
	IND_HSI_TOFR		= 278,	-- To-From Indicator
	IND_HSI_HDG			= 144,	-- Heading Marker
	IND_HSI_CRS100		= 275,	-- Course Selector Window
	IND_HSI_CRS10		= 276,
	IND_HSI_CRS1		= 277,
	IND_HSI_COMP		= 32,	-- Compass Card
	IND_HSI_DEVI		= 36,	-- Course Deviation Scale
	IND_HSI_RNG_WRN		= 142,	-- Range Indicator Warning Flag
	IND_HSI_PWR_WRN		= 143,	-- Power Off Flag

	R1_CHAN_10			= 348,
	R1_CHAN_01			= 349,
	R1_FREQ_100			= 350,
	R1_FREQ_10			= 351,
	R1_FREQ_1			= 352,
	R1_FREQ_01			= 353,
	R1_FREQ_001			= 354,
	R1_FREQ_0001		= 355,

-- Warn/Caution/Adv Lights
	LT_AAR_RDY			= 0,

	LT_LDG_N			= 39,
	LT_LDG_L			= 40,
	LT_LDG_R			= 41,

	LT_FLAP_Y			= 42,
	LT_FLAP_G			= 43,

	LT_CAS_TO			= 100,
	LT_MASTER_CAUT		= 117,

	LT_FIRE_L			= 126,

	LT_TEWS_AI			= 137,
	LT_TEWS_SAM			= 138

	LT_LOOK_SHOOT		= 162,

	LT_COCKPIT			= 180,

	LT_CAUT_SPD_BK_OUT	= 200,
	LT_CAUT_RUDR_LMTR	= 201,
	LT_CAUT_BST_SYS		= 202,
	LT_CAUT_TOT_TEMP	= 203,
	LT_CAUT_LBST_PMP	= 204,
	LT_CAUT_L_INLET		= 205,
	LT_CAUT_IFF_MODE_4	= 206,
	LT_CAUT_L_GEN_OUT	= 207,
	LT_CAUT_HYDRAULIC	= 208,
	LT_CAUT_PTH_RTO		= 209,
	LT_CAUT_CAS_YAW		= 210,
	LT_CAUT_L_BLEED		= 211,
	LT_CAUT_FUEL_LOW	= 212,
	LT_CAUT_ECS			= 213,
	LT_CAUT_FUEL_HOT	= 214,
	LT_CAUT_ATTITUDE	= 215,
	LT_CAUT_R_BST_PMP	= 216,
	LT_CAUT_R_INLET		= 217,
	LT_CAUT_AV_BIT		= 218,
	LT_CAUT_R_GEN_OUT	= 219,
	LT_CAUT_OIL_PRESS	= 220,
	LT_CAUT_ROLL_RATIO	= 221,
	LT_CAUT_L_EEC		= 222,
	LT_CAUT_CAS_ROLL	= 223,
	LT_CAUT_R_BLEED		= 224,
	LT_CAUT_BINGO		= 225,
	LT_CAUT_HOOK		= 226,
	LT_CAUT_JFS_LOW		= 227,
	LT_CAUT_EMER_BST	= 228,
	LT_CAUT_INLET_ICE	= 229,
	LT_CAUT_ANTI_SKID	= 230,
	LT_CAUT_R_EEC		= 231,
	LT_CAUT_CAS_PITCH	= 232,
	LT_CAUT_WSHLD_HOT	= 233,
	LT_CAUT_OXY_LOW		= 234,
	LT_CAUT_AUTO_PLT	= 235,

	LT_FIRE_AMAD		= 242,

	LT_MODE_AG			= 243,
	LT_MODE_ADI			= 244,
	LT_MODE_VI			= 245,

	LT_MKR_BCN			= 246,

	LT_TEWSDISP_LEFT	= 247,
	LT_TEWSDISP_TAIL	= 248,
	LT_TEWSDISP_RIGHT	= 249,
	LT_TEWSDISP_FWD		= 250,

	LT_CANO_UNLK		= 251,

	LT_TEWS_IND_PROG	= 252,
	LT_TEWS_IND_MIMIM	= 253,
	LT_TEWS_IND_CHAFF	= 254,
	LT_TEWS_IND_FRARE	= 255,
	LT_TEWS_IND_SPARE1	= 256,	-- Fire Warn R
	LT_TEWS_IND_SPARE2	= 257,

	LT_JFS_READY		= 504,

-- 38	???

},]]

--[[
external_args = {
	GEAR_N				= 0,
	GEAR_N_STRUT		= 1,
	GEAR_N_STEER		= 2,
	GEAR_L				= 3,
	GEAR_L_STRUT		= 4,
	GEAR_R				= 5,
	GEAR_R_STRUT		= 6,

	FLAP_L				= 9,
	FLAP_R				= 10,
	AILRON_L			= 11,
	AILRON_R			= 12,

	STABILATOR_L		= 15,
	STABILATOR_R		= 16,
	RUDDER_L			= 17,
	RUDDER_R			= 18,

	AAR_PORT			= 22,

	TAIL_HOOK			= 25,

	AFTERBURN_L			= 28,
	AFTERBURN_R			= 29,

	NUMBER_010			= 31,
	NUMBER_001			= 32,

	CANOPY				= 38,
	PILOT_HORIZ			= 39,

	FRONT_SEAT			= 50,

	NUMBER_100			= 52,

	DAM_CANOPY			= 65,

	INTAKE_BYPASS_DOOR	= 78,

	INTAKE_RAMP_3RD		= 86,
	INTAKE_RAMP_1ST		= 87,
	FORMATION_LT		= 88,
	NOZZLE_L			= 89,
	NOZZLE_R			= 90,
	COCKPIT_STEP		= 91,

	WHEEL_ROT_N			= 101,
	WHEEL_ROT_L			= 102,
	WHEEL_ROT_R			= 103,

	COCKPIT				= 114,

	DAM_NOSE			= 146,
	DAM_BODY_FWD_R		= 147,
	DAM_NOSE_LO_FWD		= 148,

	DAM_BODY_FWD_C		= 152,
	DAM_INTAKE_L		= 153,
	DAM_INTAKE_R		= 154,

	DAM_BODY_AFT_UP_R	= 157,
	DAM_BODY_AFT_UP_L	= 158,

	DAM_ENGINE_L		= 161,
	DAM_BODY_CTR_UP_R	= 162,
	DAM_BODY_AFT_LO_L	= 163,

	DAM_ENGINE_R		= 167,
	DAM_BODY_CTR_UP_R	= 168,
	DAM_BODY_AFT_LO_R	= 169,

	AIRBRAKE			= 182,
	DAM_AIRBRAKE		= 183,

	LT_NAVIGATION_L		= 190,
	LT_NAVIGATION_R		= 191,
	LT_NAVIGATION_T		= 192,

	LT_ANTI_COLLISION	= 199,

	LT_TAXY				= 208,
	LT_LANDING			= 209,

	DAM_WING_OUT_R		= 213,
	DAM_WING_MID_R		= 214,
	DAM_WING_IN_R		= 215,
	DAM_AILRON_R		= 216,

	DAM_FLAP_R			= 218,

	DAM_WING_OUT_L		= 223,
	DAM_WING_MID_L		= 224,
	DAM_WING_IN_L		= 225,
	DAM_AILRON_L		= 226,

	DAM_FLAP_L			= 228,

	DAM_STAB_R			= 238,

	DAM_STAB_L			= 240,
	DAM_VTAIL_UP_R		= 241,
	DAM_VTAIL_MID_R		= 242,
	DAM_VTAIL_MID_L		= 243,
	DAM_VTAIL_UP_L		= 244,

	DAM_RUDDER_R		= 247,
	DAM_RUDDER_L		= 248,
	DAM_BODY_FWD_L		= 249,

	DAM_BODY_LO_AFT		= 265,
	DAM_BODY_CTR_LO_R	= 266,
	DAM_BODY_CTR_LO_R	= 267,

	DAM_NOSE_FWD_L		= 296,
	DAM_NOSE_FWD_R		= 297,
	DAM_NOSE_AFT_L		= 298,

	DAM_NOSE_AFT_R		= 301,

	STA_4C				= 314,

	STA_3C				= 316,

	STA_6C				= 318,

	STA_7C				= 320,
	STA_7C				= 321,

	TURBINE_ROT_L		= 324,
	TURBINE_ROT_R		= 325,

	RIO_HORIZ			= 337,

	SERVICE_BAY			= 428,

	REAR_SEAT			= 472,
}
]]