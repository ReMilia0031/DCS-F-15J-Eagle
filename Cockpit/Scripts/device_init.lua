dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.common_script_path.."tools.lua")

attributes = {"support_for_cws"}

MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua", {} }
creators = {}

creators[devices.ASK6_ADC]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/ASK-6.lua"}
creators[devices.ASN108_AHRS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/ASN-108.lua"}
creators[devices.ASN109_INS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/ASN-109.lua"}
creators[devices.ASW38_AFCS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/ASW-38.lua"}
creators[devices.AWG27_MPCD]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/AWG-27.lua"}
creators[devices.AVQ20_HUD]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/AVQ-20.lua"}
creators[devices.AXQ16_VTRS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/AXQ-16.lua"}
creators[devices.ALE45_CMDS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/sensors/ALE-45.lua"}
creators[devices.ALQ135_ICMS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/sensors/ALQ-135.lua"}
creators[devices.ALQ128_EWWS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/sensors/ALQ-128.lua"}
creators[devices.APG82_RADAR]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/sensors/APG-82.lua"}
creators[devices.ALR56C_RWR]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/sensors/ALR-56C.lua"}
creators[devices.ARC164_COMM]	= {"avUHF_ARC_164",	LockOn_Options.script_path.. "devices/radio/ARC-164.lua"}
creators[devices.ARN111_TCN]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/radio/ARN-111.lua"}
creators[devices.ARN108_ILS]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/radio/ARN-108.lua"}
creators[devices.APX76_IFF]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/radio/APX-76.lua"}
creators[devices.KY58]			= {"avLuaDevice",	LockOn_Options.script_path.. "devices/radio/KY-58.lua"}
creators[devices.INTERCOMM]		= {"avIntercom",	LockOn_Options.script_path.. "devices/radio/Intercom.lua"}

creators[devices.FLT_CNTL]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/FLT_CNTL.lua"}
creators[devices.ENG_CNTL]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/ENG_CNTL.lua"}
creators[devices.PWR_CNTL]		= {"avSimpleElectricSystem", LockOn_Options.script_path.. "devices/interfaces/PWR_CNTL.lua"}
creators[devices.ECS_UNIT]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/ECS_UNIT.lua"}
creators[devices.FUEL_CNTL]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/FUEL_CNTL.lua"}
creators[devices.LIGHT_CNTL]	= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/LIGHT_CNTL.lua"}
creators[devices.MAIN_INST]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/MAIN_INST.lua"}
creators[devices.VSD_CNTL]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/VSD_CNTL.lua"}
creators[devices.BIT_SYS]		= {"avLuaDevice",	LockOn_Options.script_path.. "devices/interfaces/BIT_SYSTEM.lua"}


---------------------------------------------
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
---------------------------------------------
