local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID-------
devices = {}

devices["ASK6_ADC"]		= counter()
devices["ASN108_AHRS"]	= counter()
devices["ASN109_INS"]	= counter()
devices["ASW38_AFCS"]	= counter()
devices["AWG27_MPCD"]	= counter()
devices["AVQ20_HUD"]	= counter()
devices["AXQ16_VTRS"]	= counter()
devices["ALE45_CMDS"]	= counter()
devices["ALQ135_ICMS"]	= counter()
devices["ALQ128_EWWS"]	= counter()
devices["APG82_RADAR"]	= counter()
devices["ALR56C_RWR"]	= counter()
devices["ARC164_COMM"]	= counter()
devices["ARN111_TCN"]	= counter()
devices["ARN108_ILS"]	= counter()
devices["APX76_IFF"]	= counter()
devices["KY58"]			= counter()
devices["INTERCOMM"]	= counter()
devices["FLT_CNTL"]		= counter()
devices["ENG_CNTL"]		= counter()
devices["PWR_CNTL"]		= counter()
devices["FUEL_CNTL"]	= counter()
devices["ECS_UNIT"]		= counter()
devices["LIGHT_CNTL"]	= counter()
devices["MAIN_INST"]	= counter()
devices["VSD_CNTL"]		= counter()
devices["BIT_SYS"]		= counter()