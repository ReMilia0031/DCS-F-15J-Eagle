local function counter()
	count = count + 1
	return count
end

Keys = {
	ViewExplosion						= 27,

	iCommandPlaneSAUAutomatic					= 58,	-- Level Flight
	iCommandPlaneSAUHBarometric					= 59,	-- Altitude Hold (Baro Altitude)
	iCommandPlaneSAUHRadio						= 60,	-- Altitude Hold (Radar Altitude)
	iCommandPlaneSAUHorizon						= 61,	-- Bringing to the horizon
	iCommandPlaneAutopilot						= 62,
	iCommandPlaneAUTOnOff						= 63,	-- Enable/Disable Auto Throttle
	iCommandPlaneAUTIncrease					= 64,	-- Increase set speed
	iCommandPlaneAUTDecrease					= 65,	-- Decrease set speed

	iCommandPlaneGear							= 68,
	iCommandPlaneHook							= 69,
	iCommandPlanePackWing						= 70,	-- Folding wings
	iCommandPlaneFonar							= 71,	-- Canopy Toggle
	iCommandPlaneFlaps							= 72,
	iCommandPlaneAirBrake						= 73,	-- Airbrake Toggle
	iCommandPlaneWheelBrakeOn					= 74,
	iCommandPlaneWheelBrakeOff					= 75,
	iCommandPlaneParachute						= 76,
	iCommandPlaneDropSnar						= 77,	-- Jettion Canopy
	iCommandPlaneWingtipSmokeOnOff				= 78,	-- Smoke System
	iCommandPlaneFuelOn							= 79,
	iCommandPlaneFuelOff						= 80,
	iCommandPlaneSalvoOnOff						= 81,	-- Salvo mode
	iCommandPlaneJettisonWeapons				= 82,	-- Dropping weapons in pairs
	iCommandPlaneEject							= 83,	-- Ejection
	iCommandPlaneFire							= 84,	-- Gun Trigger
	iCommandPlaneFireOff						= 85,
	iCommandPlaneRadarOnOff						= 86,	-- Radar
	iCommandPlaneEOSOnOff						= 87,	-- Electro-Optical
	iCommandPlaneRadarLeft						= 88,	-- Radar Antenna Azimuth
	iCommandPlaneRadarRight						= 89,
	iCommandPlaneRadarUp						= 90,	-- Radar Antenna Elevation
	iCommandPlaneRadarDown						= 91,
	iCommandPlaneRadarCenter					= 92,	 -- Radar AZ/EL Center
	iCommandPlaneTrimLeft						= 93,
	iCommandPlaneTrimRight						= 94,
	iCommandPlaneTrimUp							= 95,
	iCommandPlaneTrimDown						= 96,
	iCommandPlaneTrimCancel						= 97,
	iCommandPlaneTrimLeftRudder					= 98,
	iCommandPlaneTrimRightRudder				= 99,
	iCommandPlaneChangeLock						= 100,	-- Switching sub-modes / Capture
	iCommandPlaneChangeWeapon					= 101,	-- Switching sub-modes / enumeration of weapons
	iCommandPlaneChangeTarget					= 102,	-- Перебор целей
	iCommandPlaneZoomIn							= 103,	-- Zoom MFD +
	iCommandPlaneZoomOut						= 104,	-- Zoom MFD -
	iCommandPlaneModeNAV						= 105,	-- Switching to navigation mode
	iCommandPlaneModeBVR						= 106,	-- Transition to the mode of long-range air combat
	iCommandPlaneModeVS							= 107,	-- Switching to close air combat mode (VS)
	iCommandPlaneModeBore						= 108,	-- Switching to close air combat mode (ring)
	iCommandPlaneModeHelmet						= 109,	-- Switching to close air combat mode (helmet)
	iCommandPlaneModeFI0						= 110,	-- Change to mode FI0
	iCommandPlaneModeGround						= 111,	-- Switching to ground attack mode
	iCommandPlaneModeGrid						= 112,	-- Switching to grid mode
	iCommandPlaneModeCannon						= 113,	-- Turning on / off the gun
	iCommandPlaneDoAndHome						= 114,	-- Complete the mission and return to base
	iCommandPlaneDoAndBack						= 115,	-- Complete the task and come back to me
	iCommandPlaneFormation						= 116,	-- Идти рассеянным/плотным строем
	iCommandPlaneJoinUp							= 117,	-- Собраться
	iCommandPlaneAttackMyTarget					= 118,	-- attack my target
	iCommandPlaneCoverMySix						= 119,	-- Cover me from behind
	iCommandPlaneShipTakeOff					= 120,	-- take off from an aircraft carrier
	iCommandPlaneCobra							= 121,

	iCommandActiveJamming						= 136,
	iCommandLandDetailsIncrease					= 137,	-- Debugging Detail Increase (Non-simulation Action)
	iCommandLandDetailsDecrease					= 138,	-- Debugging Detail Decrease (Non-simulation Action)
	iCommandSelecterLeft						= 139,
	iCommandSelecterRight						= 140,
	iCommandSelecterUp							= 141,
	iCommandSelecterDown						= 142,
	iCommandRefusalTWS							= 143,	-- STT Unlock
	iCommandPlaneResetMasterWarning				= 144,
	iCommandPlaneFlapsOn						= 145,	-- Flaps Extend
	iCommandPlaneFlapsOff						= 146,	-- Flaps Retract
	iCommandPlaneAirBrakeOn						= 147,	-- Airbrake Extend
	iCommandPlaneAirBrakeOff					= 148,	-- Airbrake Retract

	iCommandPlaneAirRefuel						= 155,
	iCommandBrightnessILS						= 156,	-- HUD brightness

	iCommandPlaneAUTIncreaseLeft				= 161,
	iCommandPlaneAUTDecreaseLeft				= 162,
	iCommandPlaneAUTIncreaseRight				= 163,
	iCommandPlaneAUTDecreaseRight				= 164,
	
	iCommandPlaneJettisonFuelTanksUp			= 170,
	iCommandPlaneJettisonWeaponsUp				= 171,

	iCommandPlaneLightsOnOff					= 175,	-- Turn on/off the lights
	iCommandPlaneDropSnarOnce					= 176,	-- CMS Dispence Onse

	iCommandPlaneJettisonFuelTanks				= 178,
	iCommandPlaneWingmenCommand					= 179,	-- Calling the Command Panel

	iCommandPlaneDown							= 186,
	iCommandPlaneUp								= 187,
	iCommandPlaneLeft							= 188,
	iCommandPlaneRight							= 189,

	iCommandPlaneUpStart						= 193,
	iCommandPlaneUpStop							= 194,
	iCommandPlaneDownStart						= 195,
	iCommandPlaneDownStop						= 196,
	iCommandPlaneLeftStart						= 197,
	iCommandPlaneLeftStop						= 198,
	iCommandPlaneRightStart						= 199,
	iCommandPlaneRightStop						= 200,
	iCommandPlaneLeftRudderStart				= 201,
	iCommandPlaneLeftRudderStop					= 202,
	iCommandPlaneRightRudderStart				= 203,
	iCommandPlaneRightRudderStop				= 204,

	iCommandPlaneTrimStop						= 215,
	iCommandSelecterUpRight						= 226,
	iCommandSelecterDownRight					= 227,
	iCommandSelecterDownLeft					= 228,
	iCommandSelecterUpLeft						= 229,
	iCommandSelecterStop						= 230,
	iCommandPlaneRadarUpRight					= 231,
	iCommandPlaneRadarDownRight					= 232,
	iCommandPlaneRadarDownLeft					= 233,
	iCommandPlaneRadarUpLeft					= 234,
	iCommandPlaneRadarStop						= 235,

	iCommandPlaneHUDFilterOnOff					= 247,	-- Raise / lower the HUD Filter (Ka-50)

	iCommandPlaneMasterCaution					= 252,
	iCommandPlaneScalesReject					= 253,	-- Scales Reject / limited display on HUD (Ка-50)
	iCommandPlaneBettyRepeat					= 254,	-- Repeat Betty messages (Ка-50)

	iCommandThreatMissilePadlock				= 258,
	iCommandAllMissilePadlock					= 259,

	iCommandDecreaseRadarScanArea				= 262,
	iCommandIncreaseRadarScanArea				= 263,

	iCommandAWACSHomeBearing					= 267,
	iCommandAWACSTankerBearing					= 268,
	iCommandAWACSBanditBearing					= 269,
	iCommandAWACSDeclare						= 270,
	iCommandEasyRadarOnOff						= 271,
	iCommandAutoLockOnNearestAircraft			= 272,
	iCommandAutoLockOnCenterAircraft			= 273,
	iCommandAutoLockOnNextAircraft				= 274,
	iCommandAutoLockOnPreviousAircraft			= 275,
	iCommandAutoLockOnNearestSurfaceTarget		= 276,
	iCommandAutoLockOnCenterSurfaceTarget		= 277,
	iCommandAutoLockOnNextSurfaceTarget			= 278,
	iCommandAutoLockOnPreviousSurfaceTarget		= 279,
	iCommandChangeGunRateOfFire					= 280,
	iCommandChangeRippleQuantity				= 281,
	iCommandChangeRippleInterval				= 282,
	iCommandSwitchMasterArm						= 283,
	iCommandChangeReleaseMode					= 284,
	iCommandPlaneRadarChangeMode				= 285,
	iCommandChangeRWRMode						= 286,

	iCommandFlightClockReset					= 288,

	iCommandAutopilotEmergOFF_up				= 297,

	iCommandPlaneCockpitIllumination			= 300,
	iCommandHelicopter_PPR_button_K_up			= 301,
	iCommandHelicopter_PPR_button_H_up			= 302,
	iCommandHelicopter_PPR_button_T_up			= 303,
	iCommandHelicopter_PPR_button_B_up			= 304,
	iCommandHelicopter_PPR_button_DIR_up		= 305,

	iCommandChangeRippleIntervalDown			= 308,	-- Changing the interval for dropping bombs
	iCommandEnginesStart						= 309,
	iCommandEnginesStop							= 310,
	iCommandLeftEngineStart						= 311,
	iCommandRightEngineStart					= 312,
	iCommandLeftEngineStop						= 313,
	iCommandRightEngineStop						= 314,
	iCommandPowerOnOff							= 315,	-- Aircraft Master Power
	iCommandAltimeterPressureIncrease			= 316,
	iCommandAltimeterPressureDecrease			= 317,
	iCommandAltimeterPressureStop				= 318,

	iCommandPlaneHeadLightOnOff					= 328,	-- Langing Gear Light
	iCommandPlaneLockPadlock					= 329,	-- Follow the nearest object
	iCommandPlaneUnlockPadlock					= 330,	-- Stop following the object

	iCommandPlaneLaunchPermissionOverride		= 349,
	iCommandPlanePickleOn						= 350,	-- Rocket launch/bomb drop
	iCommandPlanePickleOff						= 351,

	iCommandPlaneDropFlareOnce					= 357,	-- One-time Dropping Frales
	iCommandPlaneDropChaffOnce					= 358,	-- One-time Dropping Chaff

	iCommandCockpitClickModeOnOff				= 363,
	iCommandPlaneCMDDispence					= 364,	-- CMD Dispence
	iCommandPlaneCMDDispenceOff					= 365,
	iCommandPlaneCMDDispenceStop				= 366,	-- CMD stop the release
	iCommandPlaneCMDDispenceStopOff				= 367,
	iCommandPlaneCMDChangeRippleQuantity		= 368,	-- CMD change number in the series
	iCommandPlaneCMDChangeRippleQuantityOff		= 369,
	iCommandPlaneCMDChangeRippleInterval		= 370,	-- CMD change interval in the series
	iCommandPlaneCMDChangeRippleIntervalOff		= 371,
	iCommandPlaneCMDChangeBurstAmount			= 372,	-- CMD tools change the number of series
	iCommandPlaneCMDChangeBurstAmountOff		= 373,
	iCommandPlaneCMDCancelCurrentProgram		= 374,	-- CMD program reset
	iCommandPlaneCMDCancelCurrentProgramOff		= 375,
	iCommandPlaneCMDChangeBoard					= 376,	-- CMD aircraft selection
	iCommandPlaneCMDShowAmountOrProgram			= 377,	-- CMD means change of indication - the presence of traps or the current program
	iCommandPlaneCancelWeaponsDelivery			= 378,	-- Resetting the Avionics Mode (Ka-50)
	iCommandPlaneMasterCautionOff				= 379,
	iCommandPlane_SpotLight_hor_stop			= 380,
	iCommandSelectWeapon_hor_up					= 381,
	iCommandSelectWeapon_vert_up				= 382,

	iCommandAutoLockOnClear						= 384,
	iCommandHelicopterHover_up					= 385,
	iCommandPlaneStabTangBank					= 386,	-- Pitch and roll Stabilization
	iCommandPlaneStabHbarBank					= 387,	-- Hbar and roll Stabilization
	iCommandPlaneStabHorizon					= 388,	-- Pitch and roll Stabilization
	iCommandPlaneStabHbar						= 389,	-- Hbar Stabilization
	iCommandPlaneStabHrad						= 390,	-- Hrad Stabilization
	iCommandActiveIRJamming						= 391,	-- IR Jammer
	iCommandPlaneLaserRangerOnOff				= 392,	-- Laser Rangefinder
	iCommandPlaneNightTVOnOff					= 393,	-- IR or LLTV
	iCommandPlaneChangeRadarPRF					= 394,	-- Change the pulse repetition frequency of the radar

	iCommandPlaneStabCancel						= 408,	-- Resetting all stabilization and autopilot modes
	iCommandPlaneThreatWarnSoundVolumeDown		= 409,	-- Reducing the volume of RWR
	iCommandPlaneThreatWarnSoundVolumeUp		= 410,	-- Increasing the volume of RWR
	iCommandViewLaserOnOff						= 411,
	iCommandPlaneIncreaseBase_Distance			= 412,	-- Target base increase
	iCommandPlaneDecreaseBase_Distance			= 413,	-- Target base decrease
	iCommandPlaneStopBase_Distance				= 414,

	iCommandPlaneAutopilotOverrideOn			= 427,
	iCommandPlaneAutopilotOverrideOff			= 428,
	iCommandPlaneRouteAutopilot					= 429,
	iCommandPlaneGearUp							= 430,
	iCommandPlaneGearDown						= 431,
	iCommandViewNightVisionGogglesOn			= 438,
	iCommandPlaneDesignate_CageOn				= 439,
	iCommandPlaneDesignate_CageOff				= 440,
	iCommandPlaneDesignate_CageOn_vertical		= 441,
	iCommandPlaneDesignate_CageOn_horizontal	= 442,
	iCommandPlaneDLK_Target1					= 443,	-- Data Link Panel PRTz (ka-50)
	iCommandPlaneDLK_Target2					= 444,
	iCommandPlaneDLK_Target3					= 445,
	iCommandPlaneDLK_RefPoint					= 446,
	iCommandPlaneDLK_Wingman1					= 447,
	iCommandPlaneDLK_Wingman2					= 448,
	iCommandPlaneDLK_Wingman3					= 449,
	iCommandPlaneDLK_Wingman4					= 450,
	iCommandPlaneDLK_All						= 451,
	iCommandPlaneDLK_Erase						= 452,
	iCommandPlaneDLK_Ingress					= 453,
	iCommandPlaneDLK_SendMemory					= 454,
	iCommandPlaneNavChangePanelModeRight		= 455,	-- NAV panel controls (Ка-50)
	iCommandPlaneNavChangePanelModeLeft			= 456,
	iCommandPlaneNavSetFixtakingMode			= 457,
	iCommandPlaneNav_DLK_OnOff					= 458,
	iCommandPlaneNav_PB1						= 459,
	iCommandPlaneNav_PB2						= 460,
	iCommandPlaneNav_PB3						= 461,
	iCommandPlaneNav_PB4						= 462,
	iCommandPlaneNav_PB5						= 463,
	iCommandPlaneNav_PB6						= 464,
	iCommandPlaneNav_PB7						= 465,
	iCommandPlaneNav_PB8						= 466,
	iCommandPlaneNav_PB9						= 467,
	iCommandPlaneNav_PB0						= 468,
	iCommandPlaneNav_Steerpoints				= 469,
	iCommandPlaneNav_INU_realign				= 470,
	iCommandPlaneNav_POS_corrMode				= 471,
	iCommandPlaneNav_INU_precise_align			= 472,
	iCommandPlaneNav_Airfields					= 473,
	iCommandPlaneNav_INU_normal_align			= 474,
	iCommandPlaneNav_Targets					= 475,
	iCommandPlaneNav_Enter						= 476,
	iCommandPlaneNav_Cancel						= 477,
	iCommandPlaneNav_POS_init					= 478,
	iCommandPlaneNav_SelfCoord					= 479,
	iCommandPlaneNav_CourseTimeRange			= 480,
	iCommandPlaneNav_Wind						= 481,
	iCommandPlaneNav_THeadingTimeRangeF			= 482,
	iCommandPlaneNav_BearingRangeT				= 483,

	iCommandPlaneCockpitIlluminationPanels		= 493,
	iCommandPlaneCockpitIlluminationGauges		= 494,
	iCommandPlane_ABRIS_Power					= 495,	-- ARBIS (Ka-50)
	iCommandPlane_ABRIS_BT_1					= 496,
	iCommandPlane_ABRIS_BT_2					= 497,
	iCommandPlane_ABRIS_BT_3					= 498,
	iCommandPlane_ABRIS_BT_4					= 499,
	iCommandPlane_ABRIS_BT_5					= 500,
	iCommandPlane_ABRIS_Axis_Increase			= 501,
	iCommandPlane_ABRIS_Axis_Decrease			= 502,
	iCommandPlane_ABRIS_Axis_Push				= 503,
	iCommandPlane_ABRIS_Brightness_Increase		= 504,
	iCommandPlane_ABRIS_Brightness_Decrease 	= 505,
	iCommandPlane_RouteMode						= 506,
	iCommandPlane_DescentMode					= 507,
	iCommandPlane_DescentModeOff				= 508,
	iCommandPlane_LockOn_start					= 509,
	iCommandPlane_LockOn_finish					= 510,
	iCommandPlane_SpotLight_left				= 511,
	iCommandPlane_SpotLight_right				= 512,
	iCommandPlane_SpotLight_up					= 513,
	iCommandPlane_SpotLight_down				= 514,
	iCommandPlane_SpotLight_stop				= 515,
	iCommandPlaneRotorTipLights					= 516,
	iCommandPlane_SpotSelect_switch				= 517,
	iCommandPlaneAntiCollisionLights			= 518,
	iCommandPlaneNavLights_CodeModeOn			= 519,
	iCommandPlaneNavLights_CodeModeOff			= 520,
	iCommandPlaneFormationLights				= 521,
	iCommandPlane_EngageAirDefenses				= 522,
	iCommandPlane_EngageGroundTargets			= 523,
	iCommandPlane_AutomaticTracking_Gunsight_switch	= 524,
	iCommandPlane_K041_Power					= 525, --ka-50
	iCommandPlane_AutomaticTurn					= 526, --ka-50
	iCommandPlane_GroundMovingTarget			= 527,
	iCommandPlane_AirborneTarget				= 528,
	iCommandPlane_HeadOnAspect					= 529,
	iCommandPlane_ChangeDeliveryMode_right		= 530,
	iCommandPlane_ChangeDeliveryMode_left		= 531,
	iCommandPlane_WeaponMode_Manual_Auto		= 532,
	iCommandPlane_WeaponMode_switch				= 533,
	iCommandPlane_AmmoTypeSelect				= 534,
	iCommandPlane_FireRate						= 535,
	iCommandPlaneDropSnarOnceOff				= 536,
	iCommandHelicopterHover						= 537,
	iCommandAutopilotEmergOFF					= 538,
	iCommandPlane_HOTAS_CoolieUp				= 539,	-- HOTAS
	iCommandPlane_HOTAS_CoolieDown				= 540,
	iCommandPlane_HOTAS_CoolieLeft				= 541,
	iCommandPlane_HOTAS_CoolieRight				= 542,
	iCommandPlane_HOTAS_CoolieOff				= 543,
	iCommandPlane_HOTAS_TargetManagementSwitchUp	= 544,
	iCommandPlane_HOTAS_TargetManagementSwitchDown	= 545,
	iCommandPlane_HOTAS_TargetManagementSwitchLeft	= 546,
	iCommandPlane_HOTAS_TargetManagementSwitchRight	= 547,
	iCommandPlane_HOTAS_TargetManagementSwitchOff	= 548,
	iCommandPlane_HOTAS_DataManagementSwitchUp		= 549,
	iCommandPlane_HOTAS_DataManagementSwitchDown	= 550,
	iCommandPlane_HOTAS_DataManagementSwitchLeft	= 551,
	iCommandPlane_HOTAS_DataManagementSwitchRight	= 552,
	iCommandPlane_HOTAS_DataManagementSwitchOff		= 553,
	iCommandPlane_HOTAS_TriggerSecondStage		= 554,
	iCommandPlane_HOTAS_TriggerFirstStage		= 555,
	iCommandPlane_HOTAS_CMS_Up					= 556,
	iCommandPlane_HOTAS_CMS_Down				= 557,
	iCommandPlane_HOTAS_CMS_Left				= 558,
	iCommandPlane_HOTAS_CMS_Right				= 559,
	iCommandPlane_HOTAS_CMS_Off					= 560,
	iCommandPlane_HOTAS_MasterModeControlButton	= 561,
	iCommandPlane_HOTAS_NoseWheelSteeringButton	= 562,
	iCommandPlane_HOTAS_BoatSwitchForward		= 563,
	iCommandPlane_HOTAS_BoatSwitchAft			= 564,
	iCommandPlane_HOTAS_BoatSwitchCenter		= 565,
	iCommandPlane_HOTAS_ChinaHatForward			= 566,
	iCommandPlane_HOTAS_ChinaHatAft				= 567,
	iCommandPlane_HOTAS_PinkySwitchForward		= 568,
	iCommandPlane_HOTAS_PinkySwitchAft			= 569,
	iCommandPlane_HOTAS_PinkySwitchCenter		= 570,
	iCommandPlane_HOTAS_LeftThrottleButton		= 571,
	iCommandPlane_HOTAS_MIC_SwitchUp			= 572,
	iCommandPlane_HOTAS_MIC_SwitchDown			= 573,
	iCommandPlane_HOTAS_MIC_SwitchLeft			= 574,
	iCommandPlane_HOTAS_MIC_SwitchRight			= 575,
	iCommandPlane_HOTAS_MIC_SwitchOff			= 576,
	iCommandPlane_HOTAS_SpeedBrakeSwitchForward = 577,
	iCommandPlane_HOTAS_SpeedBrakeSwitchAft		= 578,
	iCommandPlane_HOTAS_SpeedBrakeSwitchCenter	= 579,
	iCommandPlane_ADF_Homer_change				= 580,	-- ARK-25(Ka-50)
	iCommandPlane_ADF_Channel_next				= 581,
	iCommandPlane_ADF_Channel_prevous			= 582,
	iCommandPlane_ADF_Mode_change				= 583,
	
	iCommandPlane_ADF_Receiver_Mode_change		= 585,
	iCommandPlane_ADF_Volume_up					= 586,
	iCommandPlane_ADF_Volume_down				= 587,
	iCommandPlane_ADF_Test						= 588,
	iCommandPlane_HOTAS_ChinaHatOff				= 589,
	iCommandHelicopter_PPR_button_K				= 590,
	iCommandHelicopter_PPR_button_H				= 591,
	iCommandHelicopter_PPR_button_T				= 592,
	iCommandHelicopter_PPR_button_B				= 593,
	iCommandHelicopter_PPR_button_DIR			= 594,
	iCommandPPR_BAR_RV							= 595,
	iCommandSelected_Engine_start 				= 596,
	iCommandSelected_Engine_stop				= 597,
	iCommandAPU_stop							= 598,
	iCommandEngine_Select						= 599,
	iCommandLeft_Engine_Break					= 600,
	iCommandRight_Engine_Break					= 601,
	iCommandRotor_Break							= 605,
	iCommandPlane_HOTAS_NoseWheelSteeringButtonOff	= 606,
	iCommandR_800_1st_wheel_up					= 607,	-- R-800 (Ka-50)
	iCommandR_800_1st_wheel_down				= 608,
	iCommandR_800_2nd_wheel_up					= 609,
	iCommandR_800_2nd_wheel_down				= 610,
	iCommandR_800_3rd_wheel_up					= 611,
	iCommandR_800_3rd_wheel_down				= 612,
	iCommandR_800_4th_wheel_up					= 613,
	iCommandR_800_4th_wheel_down				= 614,
	iCommandR_800_Noise_Reductor_on_off			= 615,
	iCommandR_800_Modulation_change				= 616,
	iCommandR_800_50_100_switch					= 617,
	iCommandR_800_ADF_Sound_switch				= 618,
	iCommandR_800_Emergency_Radio				= 619,
	iCommandR_800_Test							= 620,
	iCommandR_800_Power_on_off					= 621,
	iCommandR_828_Channel_next					= 622,	-- R-828 (Ka-50)
	iCommandR_828_Channel_prevous				= 623,
	iCommandR_828_Noise_Reductor_on_off			= 624,
	iCommandR_828_ASU							= 625,
	iCommandR_828_volume_up						= 626,
	iCommandR_828_volume_down					= 627,
	iCommandR_828_Power_on_off					= 628,
	iCommandSPU9_SPU_9_on_off					= 629,	-- SPU-9 (Ka-50)
	iCommandSPU9_radio_change					= 630,
	
	iCommandPlane_HOTAS_MasterModeControlButtonUP	= 633,
	iCommandPlane_HOTAS_TDC_depress_on				= 634,
	iCommandPlane_HOTAS_TDC_depress_off				= 635,

	iCommandPlane_HOTAS_TriggerSecondStage_Off	= 638,
	iCommandPlane_HOTAS_TriggerFirstStage_Off 	= 639,
	iCommandDLK_Self_ID_change					= 640,	-- (Ka-50)
	iCommandDLK_mode_change						= 641,

	iCommandPlaneRightMFD_OSB1					= 672,
	
	iCommandGroundPowerDC						= 704,	-- (Ka-50)
	iCommandGroundPowerDC_Cover					= 705,
	iCommandPowerBattery1						= 706,
	iCommandPowerBattery1_Cover					= 707,
	iCommandPowerBattery2						= 708,
	iCommandPowerBattery2_Cover					= 709,
	iCommandGroundPowerAC						= 710,
	iCommandPowerGeneratorLeft					= 711,
	iCommandPowerGeneratorRight					= 712,
	iCommandElectricalPowerInverter				= 713,
	iCommandDatalinkTLK							= 714,
	iCommandDatalinkUHF_TLK						= 715,
	iCommandDatalinkUHF_SA						= 716,
	iCommandFuelPumpsTankForward				= 717,
	iCommandFuelPumpsTankRear					= 718,
	iCommandFuelExternalPumpsTanksInner			= 719,
	iCommandFuelExternalPumpsTanksOuter			= 720,
	iCommandFuelmeterPower						= 721,
	iCommandLeftEngineFuelValveShutOff			= 722,
	iCommandLeftEngineFuelValveShutOffCover		= 723,
	iCommandRightEngineFuelValveShutOff			= 724,
	iCommandRightEngineFuelValveShutOffCover	= 725,
	iCommandAPUFuelValveShutOff					= 726,
	iCommandAPUFuelValveShutOffCover			= 727,
	iCommandFuelCrossfeedValve					= 728,
	iCommandFuelCrossfeedValveCover				= 729,
	iCommandEjectingSystemPower1				= 730,
	iCommandEjectingSystemPower1Cover			= 731,
	iCommandEjectingSystemPower2				= 732,
	iCommandEjectingSystemPower3				= 733,
	iCommandWeaponsControlSystem				= 734,
	iCommandWeaponsControlSystemCover			= 735,
	iCommandMainHydraulics						= 736,
	iCommandMainHydraulicsCover					= 737,
	iCommandIFF_Power							= 738,
	iCommandIFF_PowerCover						= 739,
	iCommandTargetingNavigationSystemsPower		= 740,
	iCommandElectronicControlSystemLeftEngine	= 741,
	iCommandElectronicControlSystemLeftEngineCover	= 742,
	iCommandElectronicControlSystemRightEngine		= 743,
	iCommandElectronicControlSystemRightEngineCover = 744,
	iCommandHeadingMethodSwitch					= 745,
	iCommandHUDBrightnessUp						= 746,
	iCommandHUDBrightnessDown					= 747,
	iCommandHUDTest								= 748,
	iCommandHUDTest_up							= 749,
	iCommandEmergencyGear						= 750,
	iCommandEmergencyGearCover					= 751,
	iCommandMechClock_LeftLever_Down			= 752,
	iCommandMechClock_LeftLever_Down_up			= 753,
	iCommandMechClock_LeftLever_Up				= 754,
	iCommandMechClock_LeftLever_TurnLeft		= 755,
	iCommandMechClock_LeftLever_TurnRight		= 756,
	iCommandMechClock_RightLever_Down			= 757,
	iCommandMechClock_RightLever_Down_up		= 758,
	iCommandMechClock_RightLever_Rotate_left	= 759,
	iCommandMechClock_RightLever_Rotate_right	= 760,
	iCommandBKOMode								= 761,
	iCommandLampsControl						= 762,
	iCommandRotorRPMHigh						= 763,
	iCommandHSI_CourseRotaryLeft				= 764,
	iCommandHSI_CourseRotaryRight				= 765,
	iCommandHSI_HeadingRotaryLeft				= 766,
	iCommandHSI_HeadingRotaryRight				= 767,
	iCommandHSI_Test							= 768,
	iCommandHSI_Test_up							= 769,
	iCommandHSI_SteeringSelection				= 770,
	iCommandADI_ZeroPitchTrimLeft				= 771,
	iCommandADI_ZeroPitchTrimRight				= 772,
	iCommandADI_Test							= 773,
	iCommandADI_Test_up							= 774,
	iCommandADI_TestCover						= 775,
	iCommandRALT_DangerousAltitudeRotaryLeft	= 776,
	iCommandRALT_DangerousAltitudeRotaryRight	= 777,
	iCommandRALT_Test							= 778,
	iCommandRALT_Test_up						= 779,
	iCommandPlaneDLK_Target1_up					= 780,
	iCommandPlaneDLK_Target2_up					= 781,
	iCommandPlaneDLK_Target3_up					= 782,
	iCommandPlaneDLK_RefPoint_up				= 783,
	iCommandPlaneDLK_Wingman1_up				= 784,
	iCommandPlaneDLK_Wingman2_up				= 785,
	iCommandPlaneDLK_Wingman3_up				= 786,
	iCommandPlaneDLK_Wingman4_up				= 787,
	iCommandPlaneDLK_All_up						= 788,
	iCommandPlaneDLK_Erase_up					= 789,
	iCommandPlaneDLK_Ingress_up					= 790,
	iCommandPlaneDLK_SendMemory_up				= 791,
	iCommandADF_Test_up							= 792,
	iCommandR_800_Test_up						= 793,
	iCommandR_828_ASU_up						= 794,
	iCommandPlane_AutomaticTurn_up				= 795,
	iCommandPlane_GroundMovingTarget_up			= 796,
	iCommandPlane_AirborneTarget_up				= 797,
	iCommandPlane_HeadOnAspect_up				= 798,
	iCommandPlane_CancelWeaponsDelivery_up		= 799,
	iCommandLampsControl_up						= 800,
	iCommandRotorRPMHigh_up						= 801,
	iCommandSelected_Engine_start_up			= 802,
	iCommandSelected_Engine_stop_up				= 803,
	iCommandAPU_stop_up							= 804,
	iCommandPlane_ABRIS_BT_1_up					= 805,
	iCommandPlane_ABRIS_BT_2_up					= 806,
	iCommandPlane_ABRIS_BT_3_up					= 807,
	iCommandPlane_ABRIS_BT_4_up					= 808,
	iCommandPlane_ABRIS_BT_5_up					= 809,
	iCommandPlane_ABRIS_Axis_Increase_up		= 810,
	iCommandPlane_ABRIS_Axis_Decrease_up		= 811,
	iCommandPlane_ABRIS_Axis_Push_up			= 812,
	iCommandADIAHRIllumination					= 813,
	iCommandControlPanelIllumination			= 814,
	iCommandCockpitIllumination					= 815,
	
	iCommandHelicopter_Engines_Anti_Icing_Dust_Protection_System = 819,
	iCommandHelicopter_TC_RPM						= 820,
	iCommandHelicopter_TC_RPM_Cover					= 821,
	iCommandPlane_HOTAS_BoatSwitchOff				= 822,
	iCommandPlane_HOTAS_BoatSwitchForwardMomentary	= 823,
	iCommandPlane_HOTAS_BoatSwitchAftMomentary		= 824,
	iCommandSelectWeapon_External				= 825,
	iCommandSelectWeapon_ALL					= 826,
	iCommandSelectWeapon_AA						= 827,
	iCommandSignalFlares_switch_OnOff			= 828,
	iCommandSignalFlares_GREEN					= 829,
	iCommandSignalFlares_RED					= 830,
	iCommandSignalFlares_WHITE					= 831,
	iCommandSignalFlares_YELLOW					= 832,
	iCommandGaugesIlluminationButtonDown		= 833,
	iCommandGaugesIlluminationButtonUp			= 834,
	iCommandCockpitShowPilotOnOff				= 835,
	iCommandEasyRadarScaleUp					= 836,
	iCommandEasyRadarScaleOut					= 837,
	iCommandEngineLaunchMethodSelect			= 838,

	iCommandPlane_Helmet_Brightess_Up			= 840,
	iCommandPlane_Helmet_Brightess_Down			= 841,
	iCommandPlane_I251_Brightness_Up			= 842,	--I-251 (Ka-50)
	iCommandPlane_I251_Brightness_Down			= 843,
	iCommandPlane_I251_Contrast_Up				= 844,
	iCommandPlane_I251_Contrast_Down			= 845,
	iCommandPlane_I251_Background_WhiteBlack	= 846,
	iCommandPlane_LaserCode_Next				= 847,
	iCommandPlane_LaserCode_Previous			= 848,
	iCommandReloadTables						= 849,
	iCommandPlane_JettisonMode_explosion		= 850,
	iCommandPlane_ShowControls					= 851,

	iCommandPlane_ReadjustFreeTurbineRPM_Up		= 853,
	iCommandPlane_ReadjustFreeTurbineRPM_Down	= 854,
	iCommandPlaneWheelParkingBrake				= 855,
	
	iCommandPlaneNav_PB0_off					= 858,	--ARBIS (Ka-50)
	iCommandPlaneNav_PB1_off					= 859,
	iCommandPlaneNav_PB2_off					= 860,
	iCommandPlaneNav_PB3_off					= 861,
	iCommandPlaneNav_PB4_off					= 862,
	iCommandPlaneNav_PB5_off					= 863,
	iCommandPlaneNav_PB6_off					= 864,
	iCommandPlaneNav_PB7_off					= 865,
	iCommandPlaneNav_PB8_off					= 866,
	iCommandPlaneNav_PB9_off					= 867,
	iCommandPlaneNav_Steerpoints_off			= 868,
	iCommandPlaneNav_INU_realign_off			= 869,
	iCommandPlaneNav_POS_corrMode_off			= 870,
	iCommandPlaneNav_INU_precise_align_off		= 871,
	iCommandPlaneNav_Airfields_off				= 872,
	iCommandPlaneNav_INU_normal_align_off		= 873,
	iCommandPlaneNav_Targets_off				= 874,
	iCommandPlaneNav_Enter_off					= 875,
	iCommandPlaneNav_Cancel_off					= 876,
	iCommandPlaneNav_POS_init_off				= 877,
	iCommandPlaneNav_SelfCoord_off				= 878,
	iCommandPlaneNav_CourseTimeRange_off		= 879,
	iCommandPlaneNav_Wind_off					= 880,
	iCommandPlaneNav_THeadingTimeRangeF_off		= 881,
	iCommandPlaneNav_BearingRangeT_off			= 882,
	iCommandCPT_MECH_WindscreenWiper_Speed		= 883,
	iCommandAccel_Reset							= 884,
	iCommandLWS_Reset							= 885,
	iCommandLaserRangeModeSwitchCover			= 886,
	iCommandLaserRangeModeSwitch				= 887,
	iCommandLaserRangeReset						= 888,
	iCommandAGR_Power							= 889,
	iCommandWEAP_INTERF_MasterSimulate			= 890,
	iCommandCPT_MECH_VMG_HYDRO_EKRAN_Cover		= 891,
	iCommandCPT_MECH_VMG_HYDRO_EKRAN			= 892,
	iCommandLWS_BIT_On							= 893,
	iCommandIlluminationInterf_Control_Panel_Illumination = 894,
	iCommandLWS_Power							= 895,
	iCommandUV26_PowerCover						= 896,	--UV-26 (Ka-50)
	iCommandUV26_Power							= 897,
	iCommandUV26_BITCover						= 898,
	iCommandUV26_BIT							= 899,
	iCommandC061K_power							= 900,	--C061 (Ka-50)
	iCommandC061K_heat							= 901,
	iCommandVMS_ALMAZ_UP_Check					= 902,
	iCommandEjectInterface_Circuit_Test			= 903,
	iCommandENG_INTERF_Right_Engine_RT_12_6		= 904,
	iCommandENG_INTERF_Left_Engine_RT_12_6		= 905,
	iCommandENG_INTERF_EngVibrDetectorBIT		= 906,
	iCommandENG_INTERF_TempIndTestwRunningEng	= 907,
	iCommandENG_INTERF_TempIndTestwStoppedEng	= 908,
	iCommandFuelSysInterf_FuelQuantityIndTestOn	=909,
	iCommandPitotAoAHeat						= 910,
	iCommandPitotRam							= 911,
	iCommandHelicopter_Rotor_Anti_Icing_Dust_Protection_System = 912,
	iCommandVMS_ALMAZ_UP_EmergencyOn			= 913,
	iCommandVMS_ALMAZ_UP_SpeechInfoOff			= 914,
	iCommandVMS_ALMAZ_UP_Repeat					= 915,
	iCommandSHKVAL_scan_vel_up					= 916,
	iCommandSHKVAL_scan_vel_down				= 917,
	iCommandSHKVAL_windscreen_wiper				= 918,
	iCommandPVI_BRIGHTNESS_LEVER_up				= 919,
	iCommandPVI_BRIGHTNESS_LEVER_down			= 920,
	iCommandFireExting_LeftEngineExting			= 921,
	iCommandFireExting_APUExting				= 922,
	iCommandFireExting_RightEngineExting		= 923,
	iCommandFireExting_VentilatorExting			= 924,
	iCommandFireExting_ExtinguishersToDown		= 925,
	iCommandFireExting_ExtinguishersCover		= 926,
	iCommandFireExting_Signals					= 927,
	iCommandFireExting_Reservoirs				= 928,
	iCommandFireExting_ReservoirsCover			= 929,
	iCommandIlluminationInterf_Cockpit_Illumination = 930,
	iCommandFireExting_TestGroups				= 931,
	iCommandAGR_Test							= 932,
	iCommandAGR_Oriet							= 933,
	iCommandAGR_axis_left						= 934,
	iCommandAGR_axis_right						= 935,
	iCommandIlluminationInterf_Cockpit_Night_Illumination_brightness_up		= 936,
	iCommandIlluminationInterf_Cockpit_Night_Illumination_brightness_down	= 937,
	iCommandIlluminationInterf_Panels_Illumination_brightness_up			= 938,
	iCommandIlluminationInterf_Panels_Illumination_brightness_down			= 939,
	iCommandIlluminationInterf_ADI_AHR_Illumination_brightness_up			= 940,
	iCommandIlluminationInterf_ADI_AHR_Illumination_brightness_down			= 941,
	iCommandIlluminationInterf_Control_Panel_Illumination_brightness_up		= 942,
	iCommandIlluminationInterf_Control_Panel_Illumination_brightness_down	= 943,
	iCommandNAVINTERF_HeadingCourse				= 944,
	iCommandPlaneDLK_None						= 945,
	iCommandPlaneDLK_None_up					= 946,
	iCommandWeaponsBallisticSelectorRight		= 947,
	iCommandWeaponsBallisticSelectorLeft		= 948,
	iCommand_ZMS_3_MagVarRotaryRight			= 949,
	iCommand_ZMS_3_MagVarRotaryLeft				= 950,
	iCommandEjectInterface_Circuit_SelectRight	= 951,
	iCommandEjectInterface_Circuit_SelectLeft	= 952,
	iCommandCPT_MECH_PitotSystemHeatTest		= 953,
	iCommandFireDetectorsTest1stGroup			= 954,
	iCommandFireDetectorsTest2ndGroup			= 955,
	iCommandFireDetectorsTest3rdGroup			= 956,
	iCommandPlaneTrimOn							= 957,
	iCommandPlaneTrimOff						= 958,

	iCommandPlaneWheelBrakeLeftOn				= 961,
	iCommandPlaneWheelBrakeLeftOff				= 962,
	iCommandPlaneWheelBrakeRightOn				= 963,
	iCommandPlaneWheelBrakeRightOff				= 964,

	iCommandThrottleIncrease					= 1032,
	iCommandThrottleDecrease					= 1033,
	iCommandThrottleStop						= 1034,

	iCommandThrottle1Increase					= 1035,
	iCommandThrottle1Decrease					= 1036,
	iCommandThrottle1Stop						= 1037,

	iCommandThrottle2Increase					= 1038,
	iCommandThrottle2Decrease					= 1039,
	iCommandThrottle2Stop						= 1040,
	iCommandPlane_HOTAS_CMS_Zaxis 				= 1041,
	iCommandPlane_HOTAS_CMS_Zaxis_Off			= 1042,

	iCommandPlaneFSQuantityIndicatorSelectorINT = 1092,
	iCommandPlaneFSQuantityIndicatorSelectorMAIN= 1093,

	iCommandPlaneFSQuantityIndicatorSelectorEXTCTR=	1096,
	iCommandPlaneFSQuantityIndicatorTest		= 1097,

	iCommandPlaneUFC_STEER_DOWN					= 1315,

	iCommandPlane_HOTAS_LeftThrottleButton_Off	= 1557,
	iCommandSPU9_PTT_on							= 1589,
	iCommandSPU9_PTT_off						= 1590,

	iCommandPlane_P_51_WarEmergencyPower		= 1601,

	iCommandToggleMirrors						= 1625,
	iCommandToggleReceiveMode					= 1626,

	iCommandClockElapsedTimeReset				= 1629,

	iCommandSensorReset							= 1635,
	iCommandReloadShaders						= 1644,
	iCommandModalAutopilotCycle					= 1680,
	iCommandPlaneTeleport						= 1683,

	iCommandPlaneThrustCommon					= 2004,
	iCommandPlaneThrustLeft						= 2005,
	iCommandPlaneThrustRight					= 2006,

	--Axis
	iCommandPlaneRadarHorizontal				= 2025,
	iCommandPlaneRadarVertical					= 2026,
	iCommandPlaneRadarHorizontalAbs				= 2027,
	iCommandPlaneRadarVerticalAbs				= 2028,
	iCommandPlaneMFDZoom						= 2029,
	iCommandPlaneMFDZoomAbs						= 2030,
	iCommandPlaneSelecterHorizontal				= 2031,
	iCommandPlaneSelecterVertical				= 2032,
	iCommandPlaneSelecterHorizontalAbs			= 2033,
	iCommandPlaneSelecterVerticalAbs			= 2034,
	
	iCommandPlaneBase_Distance					= 2040,
	iCommandPlaneBase_DistanceAbs				= 2041,
	
	iCommandLeftEngineBrake_ByAxis				= 2099,
	iCommandRightEngineBrake_ByAxis				= 2100,
	iCommandRotorEngineBrake_ByAxis				= 2101,
}


count = 3500

FLT_CNTL_commands = {
	PITCH_RATIO		= counter(),
	LDG_GEAR		= counter(),
	EMER_GEAR		= counter(),
	EMER_BRAKE		= counter(),
	ROLL_RATIO		= counter(),
	ANTISKID		= counter(),
	RUD_TRIM		= counter(),
}

PWR_CNTL_commands = {
	GND_PWR_1		= counter(),
	GND_PWR_2		= counter(),
	GND_PWR_3		= counter(),
	GND_PWR_4		= counter(),
	GND_PWR_CC		= counter(),
	ENG_GEN_L		= counter(),
	ENG_GEN_R		= counter(),
	EMER_GEN		= counter(),
	EXT_PWR_CNTL	= counter(),
}

ENG_CNTL_commands = {
	DEEC_L			= counter(),
	DEEC_R			= counter(),
	STARTER_CNTL	= counter(),
	ENG_MSTR_L		= counter(),
	ENG_MSTR_R		= counter(),
	JFS_CNTL		= counter(),
	ENG_FF_L		= counter(),
	ENG_FF_R		= counter(),
	INLET_L			= counter(),
	INLET_R			= counter(),
}

ECS_commands = {
	WSHLD_ANTI_ICE	= counter(),
	PITOT_HEAT		= counter(),
	ENG_HEAT		= counter(),
	ANTI_FOG_TEMP	= counter(),
	CKPT_TEMP_MODE	= counter(),
	CKPT_TEMP		= counter(),
	AIR_SOURCE		= counter(),
	OXY_TEST		= counter(),
	OXY_EMER		= counter(),
	OXY_DLTR		= counter(),
	OXY_SPLY		= counter(),
	EMER_VENT		= counter(),
}

FUEL_CNTL_commands = {
	CNTL_CONF		= counter(),
	CNTL_CNTR		= counter(),
	CNTL_WING		= counter(),
	FUEL_DUMP		= counter(),
	EXT_TRANS		= counter(),
	CONF_EMERTR		= counter(),
	CNTL_SLIPWAY	= counter(),
}

LT_CNTL_commands = {
	EXT_ACOL		= counter(),
	EXT_FORM		= counter(),
	EXT_POSN		= counter(),
	EXT_LDG			= counter(),
	INT_CNSL_L		= counter(),
	INT_CNSL_R		= counter(),
	INT_INST_AUX	= counter(),
	INT_INST_FLT	= counter(),	-- ADI, HSI, ASI, Altimeter, VSI, AOA, Clock, Accelerometer
	INT_INST_ENG	= counter(),	-- Tachometer, FTIT, Fuel Flow, Hydraulic, Oil Press, Nozzle, Fuel Quantity
	INT_INST_STBY	= counter(),	-- Standby ASI, ADI, ALT
	INT_WARN_LT		= counter(),	-- Warning, Caution, BIT, Advisory
	INT_FLOOD		= counter(),
	INT_LT_TEST		= counter(),
}

BIT_commands = {
	BIT_SEL		= counter(),
	RCALL		= counter(),
	INITIATE	= counter(),
	CC_RESET	= counter(),
}

INST_commands = {
	ADI_REF			= counter(),
	ADI_TRIM		= counter(),
	HSI_HDG			= counter(),
	HSI_CRS			= counter(),
	STEER_MODE_SEL	= counter(),
	LENG_OVTEMP		= counter(),
	RENG_OVTEMP		= counter(),
	AMAD_OVTEMP		= counter(),
	FIRE_MODE		= counter(),
	MIRROR_CNTL		= counter(),
}

ARN108_commands = {
	ILS_PWR			= counter(),
}

ARN111_commands = {
	TCN_XY			= counter(),
}

ASW38_commands = {
	CAS_PITCH		= counter(),
	CAS_ROLL		= counter(),
	CAS_YAW			= counter(),
	ALT_HOLD		= counter(),
	ATT_HOLD		= counter(),
	TO_TRIM			= counter(),
}

ARC164_commands = {
	R1_CHAN			= counter(),
	R1_FREQ_1		= counter(),
	R1_FREQ_2		= counter(),
	R1_FREQ_3		= counter(),
	R1_VOL			= counter(),
	R1_MODE			= counter(),
	R2_MODE			= counter(),
	R2_TRANS		= counter(),
	R2_DSPL			= counter(),
	R2_CHAN			= counter(),
	R1_ADF			= counter(),
	R1_GREC			= counter(),
	R1_ANT			= counter(),
	R2_ANT			= counter(),
}

ALR56C_commands = {
	RWR_PWR			= counter(),
	RWR_MODE		= counter(),
	TONE_DSBL		= counter(),
	TEWS_INT		= counter(),
}

ALE45_commands = {
	CMD_MODE		= counter(),
	DSA_SEL			= counter(),
}

KY58_commands = {
	KY58_PWR		= counter(),
	KY58_MODE		= counter(),
	KY58_DELAY		= counter(),
}

ICS_commands = {
	ICS_FUNC		= counter(),
}

APX76_commands = {
	AAI_MASTER		= counter(),
	IFF_MASTER		= counter(),
	MODE_4_SEL		= counter(),
	MODE_4_FUNC		= counter(),
	MODE_1_SEL		= counter(),
	MODE_2_SEL		= counter(),
	MODE_3A_SEL		= counter(),
	MODE_C_SEL		= counter(),
	MODE_4_SEL		= counter(),
	IFF_ANT_SEL		= counter(),
}

ALQ135_commands = {
	ICMS_MODE		= counter(),
	ICMS_PWR		= counter(),
	ICMS_SET1		= counter(),
	ICMS_SET2		= counter(),
	ICMS_SET3		= counter(),
}

APG82_commands = {
	RDR_POWER		= counter(),
	FRAME_STORE		= counter(),
	SPL_MODE		= counter(),
	RDR_RANGE		= counter(),
	EL_SCAN			= counter(),
	AZ_SCAN			= counter(),
	RDR_MODE_SEL	= counter(),
	MODE_AG			= counter(),
	MODE_ADI		= counter(),
	MODE_VI			= counter(),
}

ASN108_commands = {
	CMPS_NS			= counter(),
	AHRS_ERECT		= counter(),
	CMPS_SYNC		= counter(),
	LAT_CNTL		= counter(),
	AHRS_MODE		= counter(),
}

ALQ128_commands = {
	EWWS_PWR		= counter(),
	EWWS_TONE		= counter(),
	EWWS_PODS		= counter(),
}

ASN109_commands = {
	NCI_MARK		= counter(),
	NCI_OFLY		= counter(),
	NCI_UPDT		= counter(),
	NCI_OFST		= counter(),
	NCI_BTN1		= counter(),
	NCI_BTN2		= counter(),
	NCI_BTN3		= counter(),
	NCI_BTN4		= counter(),
	NCI_BTN5		= counter(),
	NCI_BTN6		= counter(),
	NCI_BTN7		= counter(),
	NCI_BTN8		= counter(),
	NCI_BTN9		= counter(),
	NCI_BTN0		= counter(),
	NCI_CLR			= counter(),
	NCI_ENTR		= counter(),
	NCI_RDY			= counter(),
	NCI_INT			= counter(),
	NCI_DATA		= counter(),
	NCI_MODE		= counter(),
}

AVQ20_commands = {
	BRT_MODE		= counter(),
	SYM_REJ			= counter(),
	RTCL_MODE		= counter(),
	COLOR_MODE		= counter(),
	SYM_BRT			= counter(),
	STBY_RTCL		= counter(),
	RTCL_DEPR		= counter(),
}

AXQ16_commands = {
	VTRS_HUD		= counter(),
	VTRS_MODE		= counter(),
	VTRS_SEL		= counter(),
}

VSD_commands = {
	VSD_SYM_BRT		= counter(),
	VSD_CONT_LVL	= counter(),
	VSD_BRT_MODE	= counter(),
}

AWG27_commands = {
	BTN_S0			= counter(),
	BTN_S1			= counter(),
	BTN_S2			= counter(),
	BTN_S3			= counter(),
	BTN_S4			= counter(),
	BTN_S5			= counter(),
	BTN_S6			= counter(),
	BTN_S7			= counter(),
	BTN_S8			= counter(),
	BTN_S9			= counter(),
	BTN_S10			= counter(),
	BTN_S11			= counter(),
	BTN_S12			= counter(),
	BTN_S13			= counter(),
	BTN_S14			= counter(),
	BTN_STA8		= counter(),
	BTN_RCFT		= counter(),
	BTN_STA5		= counter(),
	BTN_LCFT		= counter(),
	BTN_STA2		= counter(),
	MPCD_PWR_CNTL	= counter(),
	MPCD_BRT_CNTL	= counter(),
	MPCD_CONT_CNTL	= counter(),
	MASTERARM		= counter(),
	STOR_JETT		= counter(),
	STOR_JETT_EXEC	= counter(),
	EMER_JETT		= counter(),
}

device_commands = {
	CLIC_HUD_BRT				= counter(),
	CLIC_HUD_COLOR_F15			= counter(),
	CLIC_EMERGENCY_BRAKES_ONE	= counter(),
	CLIC_EMERGENCY_BRAKES_LONG	= counter(),
	CLIC_EMERGENCY_BRAKES		= counter(),
	CLIC_JETTINSON				= counter(),
	CLIC_WAYPOINT				= counter(),
	CLIC_NAVMODES				= counter(),
	CLIC_RCHAN					= counter(),
	CLIC_RFREQ_1				= counter(),
	CLIC_RFREQ_2				= counter(),
	CLIC_RFREQ_3				= counter(),
	CLIC_RUHF					= counter(),
	CLIC_RVOL					= counter(),
	CLIC_RCOMMENU				= counter(),
	CLIC_RMODE					= counter(),
	CLIC_RWR_MODE				= counter(),
	CLIC_RWR_SOUND				= counter(),
	CLIC_TAKEOFFTRIMF15			= counter(),
	CLIC_RPORT					= counter(),
	CLIC_MODE_F15				= counter(),
	CLIC_JETTINSON_TANK			= counter(),
	CLIC_JETTINSON_TANK2		= counter(),
	CMD_MODE					= counter(),
	CLIC_CMD					= counter(),
	CLIC_MIRROR					= counter(),
	CLIC_RADAR_POWER			= counter(),
	CLIC_RADAR_RANGE			= counter(),
	CLIC_RADAR_EL_SCAN			= counter(),
	CLIC_RADAR_AZ_SCAN			= counter(),
	CLIC_RADAR_MODE_SEL			= counter(),
	CLIC_RADAR_SPL_MODE			= counter(),
	CLIC_GEAR					= counter(),
	CLIC_LENG					= counter(),
	CLIC_RENG					= counter(),
	_180						= counter(),
	_271						= counter(),
}