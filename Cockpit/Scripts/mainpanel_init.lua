
shape_name		   = "Cockpit_F-15_J"
is_EDM			   = true
new_model_format   = true
ambient_light    = {255,255,255}
ambient_color_day_texture    = {72, 100, 160}
ambient_color_night_texture  = {40, 60 ,150}
ambient_color_from_devices   = {50, 50, 40}
ambient_color_from_panels	 = {35, 25, 25}

dusk_border = 0.4
draw_pilot = false

external_model_canopy_arg	 = 38

use_external_views = false

day_texture_set_value   = 0.0
night_texture_set_value = 0.1

local controllers = LoRegisterPanelControls()
-- Instruments

-- Airspeed/Mach Ingicator

-- Standby Airspeed Indicator

-- Altimeter

-- Standby Altimeter

-- Standby Magnetic Compass

-- Vertical Velocity Indicator

-- Accelerometer

-- Standby Attitude Indicator

-- Angle of Attack (AOA) Indicator

-- Attitude Director Indicator

-- Horizontal Situation Indicator (HSI)

-- Tachometers

-- Fan Turbine Inlet Temperture (FTIT) Indicator

-- Fuel Flow Indicator
NDL_ENG_FF_L					= CreateGauge("parameter")
NDL_ENG_FF_L.arg_number			= 531
NDL_ENG_FF_L.input				= {0.0,100.0}
NDL_ENG_FF_L.output				= {0.0,1.0}
NDL_ENG_FF_L.parameter_name		= "IND_ENG_FF_L"

NDL_ENG_FF_R					= CreateGauge("parameter")
NDL_ENG_FF_R.arg_number			= 532
NDL_ENG_FF_R.input				= {0.0,100.0}
NDL_ENG_FF_R.output				= {0.0,1.0}
NDL_ENG_FF_R.parameter_name		= "IND_ENG_FF_R"

-- Oil Pressure Indicator
NDL_ENG_OIL_L					= CreateGauge("parameter")
NDL_ENG_OIL_L.arg_number		= 112
NDL_ENG_OIL_L.input				= {0.0,100.0}
NDL_ENG_OIL_L.output			= {0.0,1.0}
NDL_ENG_OIL_L.parameter_name	= "IND_OIL_PRESS_L"

NDL_ENG_OIL_R					= CreateGauge("parameter")
NDL_ENG_OIL_R.arg_number		= 113
NDL_ENG_OIL_R.input				= {0.0,100.0}
NDL_ENG_OIL_R.output			= {0.0,1.0}
NDL_ENG_OIL_R.parameter_name	= "IND_OIL_PRESS_R"

-- Exhaust Nozzle Position Indicator

-- Fuel Quantity Indicator

-- Hydraulic Pressure Indicators
NDL_ENG_HYD_PC1					= CreateGauge("parameter")
NDL_ENG_HYD_PC1.arg_number		= 109
NDL_ENG_HYD_PC1.input				= {0.0,100.0}
NDL_ENG_HYD_PC1.output			= {0.0,1.0}
NDL_ENG_HYD_PC1.parameter_name	= "IND_HYD_PRESS_L"

NDL_ENG_HYD_PC1					= CreateGauge("parameter")
NDL_ENG_HYD_PC1.arg_number		= 110
NDL_ENG_HYD_PC1.input				= {0.0,100.0}
NDL_ENG_HYD_PC1.output			= {0.0,1.0}
NDL_ENG_HYD_PC1.parameter_name	= "IND_HYD_PRESS_R"

-- Pitch Ratio Indicator

-- Cockpit Pressure Altimeter

-- Oxygen Pressure Gage

-- Oxygen Quantity Gage


-- Main Communications Control Panel
R1_CHAN_10					= CreateGauge("parameter")
R1_CHAN_10.arg_number		= 348
R1_CHAN_10.input			= {0.0, 1.0}
R1_CHAN_10.output			= {0.0, 1.0}
R1_CHAN_10.parameter_name	= "R1_CHAN_10"

R1_CHAN_01					= CreateGauge("parameter")
R1_CHAN_01.arg_number		= 349
R1_CHAN_01.input			= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}             --Animation calibration.
R1_CHAN_01.output			= {0.4,0.5,0.6,0.7,0.8,0.9,1.0,0.1,0.2,0.3,0.39}            --Animation calibration.
R1_CHAN_01.parameter_name	= "R1_CHAN_01"


R1_FREQ_100					= CreateGauge("parameter")
R1_FREQ_100.arg_number		= 350
R1_FREQ_100.input			= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
R1_FREQ_100.output			= {0.8,0.9,1.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.79}
R1_FREQ_100.parameter_name	= "R1_FREQ_100"

R1_FREQ_10					= CreateGauge("parameter")
R1_FREQ_10.arg_number		= 351
R1_FREQ_10.input			= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
R1_FREQ_10.output			= {0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.0,0.1,0.2,0.29}
R1_FREQ_10.parameter_name	= "R1_FREQ_10"

R1_FREQ_1					= CreateGauge("parameter")
R1_FREQ_1.arg_number		= 352
R1_FREQ_1.input				= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
R1_FREQ_1.output			= {0.4,0.5,0.6,0.7,0.8,0.9,1.0,0.1,0.2,0.3,0.39}
R1_FREQ_1.parameter_name	= "R1_FREQ_1"

R1_FREQ_01					= CreateGauge("parameter")
R1_FREQ_01.arg_number		= 353
R1_FREQ_01.input			= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
R1_FREQ_01.output			= {0.7,0.8,0.9,0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.69}
R1_FREQ_01.parameter_name	= "R1_FREQ_01"

R1_FREQ_001					= CreateGauge("parameter")
R1_FREQ_001.arg_number		= 354
R1_FREQ_001.input			= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
R1_FREQ_001.output			= {0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.0,0.1,0.2,0.29}
R1_FREQ_001.parameter_name	= "R1_FREQ_001"

R1_FREQ_0001					= CreateGauge("parameter")
R1_FREQ_0001.arg_number		= 355
R1_FREQ_0001.input			= {0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0}
R1_FREQ_0001.output			= {0.5,0.6,0.7,0.8,0.9,0.0,0.1,0.2,0.3,0.4,0.49}
R1_FREQ_0001.parameter_name	= "R1_FREQ_0001"


--ADV Lights


LT_CAUT_SPD_BK_OUT					= CreateGauge("parameter")
LT_CAUT_SPD_BK_OUT.arg_number		= 200
LT_CAUT_SPD_BK_OUT.input			= {0.0,1.0}
LT_CAUT_SPD_BK_OUT.output			= {0.0,1.0}
LT_CAUT_SPD_BK_OUT.parameter_name	= "LT_CAUT_SPD_BK_OUT"

	-- LT_CAUT_RUDR_LMTR	= 201,
	
LT_CAUT_BST_SYS					= CreateGauge("parameter")
LT_CAUT_BST_SYS.arg_number		= 202
LT_CAUT_BST_SYS.input			= {0.0,1.0}
LT_CAUT_BST_SYS.output			= {0.0,1.0}
LT_CAUT_BST_SYS.parameter_name	= "LT_CAUT_BST_SYS"


	-- LT_CAUT_TOT_TEMP	= 203,
	
LT_CAUT_LBST_PMP					= CreateGauge("parameter")
LT_CAUT_LBST_PMP.arg_number		= 204
LT_CAUT_LBST_PMP.input			= {0.0,1.0}
LT_CAUT_LBST_PMP.output			= {0.0,1.0}
LT_CAUT_LBST_PMP.parameter_name	= "LT_CAUT_LBST_PMP"
	
LT_CAUT_L_INLET					= CreateGauge("parameter")
LT_CAUT_L_INLET.arg_number		= 205
LT_CAUT_L_INLET.input			= {0.0,1.0}
LT_CAUT_L_INLET.output			= {0.0,1.0}
LT_CAUT_L_INLET.parameter_name	= "LT_CAUT_L_INLET"
	
LT_CAUT_IFF_MODE_4					= CreateGauge("parameter")
LT_CAUT_IFF_MODE_4.arg_number		= 205
LT_CAUT_IFF_MODE_4.input			= {0.0,1.0}
LT_CAUT_IFF_MODE_4.output			= {0.0,1.0}
LT_CAUT_IFF_MODE_4.parameter_name	= "LT_CAUT_IFF_MODE_4"

	-- LT_CAUT_L_GEN_OUT	= 207,
	
LT_CAUT_HYDRAULIC					= CreateGauge("parameter")
LT_CAUT_HYDRAULIC.arg_number		= 208
LT_CAUT_HYDRAULIC.input			= {0.0,1.0}
LT_CAUT_HYDRAULIC.output			= {0.0,1.0}
LT_CAUT_HYDRAULIC.parameter_name	= "LT_CAUT_HYDRAULIC"


	-- LT_CAUT_PTH_RTO		= 209,
	-- LT_CAUT_CAS_YAW		= 210,
	
LT_CAUT_L_BLEED					= CreateGauge("parameter")
LT_CAUT_L_BLEED.arg_number		= 211
LT_CAUT_L_BLEED.input			= {0.0,1.0}
LT_CAUT_L_BLEED.output			= {0.0,1.0}
LT_CAUT_L_BLEED.parameter_name	= "LT_CAUT_L_BLEED"

	-- LT_CAUT_FUEL_LOW	= 212,
	-- LT_CAUT_ECS			= 213,
	-- LT_CAUT_FUEL_HOT	= 214,
	-- LT_CAUT_ATTITUDE	= 215,
	
LT_CAUT_RBST_PMP					= CreateGauge("parameter")
LT_CAUT_RBST_PMP.arg_number		= 216
LT_CAUT_RBST_PMP.input			= {0.0,1.0}
LT_CAUT_RBST_PMP.output			= {0.0,1.0}
LT_CAUT_RBST_PMP.parameter_name	= "LT_CAUT_RBST_PMP"
	-- LT_CAUT_R_INLET		= 217,
	-- LT_CAUT_AV_BIT		= 218,
	-- LT_CAUT_R_GEN_OUT	= 219,
	-- LT_CAUT_OIL_PRESS	= 220,
LT_CAUT_OIL_PRESS					= CreateGauge("parameter")
LT_CAUT_OIL_PRESS.arg_number		= 220
LT_CAUT_OIL_PRESS.input			= {0.0,1.0}
LT_CAUT_OIL_PRESS.output			= {0.0,1.0}
LT_CAUT_OIL_PRESS.parameter_name	= "LT_CAUT_OIL_PRESS"

	-- LT_CAUT_ROLL_RATIO	= 221,
LT_CAUT_L_EEC					= CreateGauge("parameter")
LT_CAUT_L_EEC.arg_number		= 222
LT_CAUT_L_EEC.input			= {0, 1}
LT_CAUT_L_EEC.output			= {0.0,1.0}
LT_CAUT_L_EEC.parameter_name	= "LT_CAUT_L_EEC"

	-- LT_CAUT_CAS_ROLL	= 223,
LT_CAUT_R_BLEED					= CreateGauge("parameter")
LT_CAUT_R_BLEED.arg_number		= 224
LT_CAUT_R_BLEED.input			= {0.0,1.0}
LT_CAUT_R_BLEED.output			= {0.0,1.0}
LT_CAUT_R_BLEED.parameter_name	= "LT_CAUT_R_BLEED"

	-- LT_CAUT_BINGO		= 225,
	-- LT_CAUT_HOOK		= 226,
	-- LT_CAUT_JFS_LOW		= 227,
LT_CAUT_EMER_BST					= CreateGauge("parameter")
LT_CAUT_EMER_BST.arg_number		= 228
LT_CAUT_EMER_BST.input			= {0.0,1.0}
LT_CAUT_EMER_BST.output			= {0.0,1.0}
LT_CAUT_EMER_BST.parameter_name	= "LT_CAUT_EMER_BST"
	-- LT_CAUT_INLET_ICE	= 229,
	-- LT_CAUT_ANTI_SKID	= 230,
LT_CAUT_R_EEC					= CreateGauge("parameter")
LT_CAUT_R_EEC.arg_number		= 231
LT_CAUT_R_EEC.input			= {0, 1}
LT_CAUT_R_EEC.output			= {0.0,1.0}
LT_CAUT_R_EEC.parameter_name	= "LT_CAUT_R_EEC"
	-- LT_CAUT_CAS_PITCH	= 232,
	-- LT_CAUT_WSHLD_HOT	= 233,
	-- LT_CAUT_OXY_LOW		= 234,
	-- LT_CAUT_AUTO_PLT	= 235,
	
	
LT_JFS_READY					= CreateGauge("parameter")
LT_JFS_READY.arg_number		= 504
LT_JFS_READY.input			= {0.0,1.0}
LT_JFS_READY.output			= {0.0,1.0}
LT_JFS_READY.parameter_name	= "LT_JFS_READY"


need_to_be_closed = false