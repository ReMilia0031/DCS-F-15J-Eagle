local res = external_profile("Config/Input/Aircrafts/base_keyboard_binding.lua")
ignore_features(res.keyCommands,{
"dragchute", "shiptakeoff"
})
join(res.keyCommands,{

-- Flight Control

-- Systems
{combos = {{key = 'G'}},							down = iCommandPlaneGear,					name = _('Landing Gear Control Handle'),					category = _('Systems')},
{combos = {{key = 'R', reformers = {'LAlt'}}},		down = iCommandPlaneJettisonFuelTanks,		name = _('Jettison Fuel Tanks'), category = _('Systems')},
{combos = {{key = 'A', reformers = {'LCtrl'}}},		down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel Brake Left On/Off'), category = _('Systems')},
{combos = {{key = 'A', reformers = {'LAlt'}}},		down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Systems')},
{combos = {{key = 'T', reformers = {'LShift'}}},	down = iCommandClockElapsedTimeReset,		name = _('Elapsed Time Clock Start/Stop/Reset'), category = _('Systems')},
{combos = {{key = 'D', reformers = {'LShift'}}},	down = iCommandPlaneFSQuantityIndicatorSelectorMAIN, name = _('Fuel Quantity Selector'), category = _('Systems')},
{combos = {{key = 'D', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlaneFSQuantityIndicatorTest, up = iCommandPlaneFSQuantityIndicatorTest, value_down = 1, value_up = 0, name = _('Fuel Quantity Test'), category = _('Systems')},
{combos = {{key = 'D', reformers = {'LAlt'}}},		down = iCommandPlaneFSQuantityIndicatorSelectorINT,	up = iCommandPlaneFSQuantityIndicatorSelectorINT, value_down = 1,  value_up = 0, 	name = _('Bingo Fuel Index, CW'),  category = _('Systems')},
{combos = {{key = 'D', reformers = {'LCtrl'}}},		down = iCommandPlaneFSQuantityIndicatorSelectorINT,	up = iCommandPlaneFSQuantityIndicatorSelectorINT, value_down = -1, value_up = 0, 	name = _('Bingo Fuel Index, CCW'), category = _('Systems')},
{combos = {{key = 'G', reformers = {'LAlt'}}},		down = iCommandPlaneHook,					name = _('Hook Control Switch'), category = _('Systems')},

-- Modes
{combos = {{key = '1'}},							down = iCommandPlaneModeNAV,				name = _('(1) Navigation Modes'),					category = _('Modes')},
{combos = {{key = '2'}},							down = iCommandPlaneModeBVR,				name = _('(2) Long Range Search(LRS) Mode'), category = _('Modes')},
{combos = {{key = '3'}},							down = iCommandPlaneModeVS,					name = _('(3) Close Air Combat Vertical Scan Mode'), category = _('Modes')},
{combos = {{key = '4'}},							down = iCommandPlaneModeBore,				name = _('(4) Automatic Acquisition Mode'), category = _('Modes')},
{combos = {{key = '5'}},							down = iCommandPlaneModeHelmet,				name = _('(5) Close Air Combat HMD Helmet Mode'), category = _('Modes')},
{combos = {{key = '6'}},							down = iCommandPlaneModeFI0,				name = _('(6) Longitudinal Missile Aiming Mode/FLOOD mode'), category = _('Modes')},
{combos = {{key = '7'}},							down = iCommandPlaneModeGround,				name = _('(7) Air-To-Ground Mode'), category = _('Modes')},
{combos = {{key = '8'}},							down = iCommandPlaneModeGrid,				name = _('(8) Gunsight Reticle Switch'), category = _('Modes')},

-- Sensors
{combos = {{key = 'Back'}},							down = iCommandSensorReset,					name = _('Radar - Return To Search/NDTWS'), category = _('Sensors')},
{													down = iCommandRefusalTWS,					name = _('Unlock TWS Target'), category = _('Sensors')},
{combos = {{key = 'I', reformers = {'RAlt'}}},		down = iCommandPlaneRadarChangeMode,		name = _('Radar RWS/TWS Mode Select'), category = _('Sensors')},
{combos = {{key = 'I', reformers = {'RCtrl'}}},		down = iCommandPlaneRadarCenter,			name = _('Target Designator To Center'), category = _('Sensors')},
{combos = {{key = 'I', reformers = {'RShift'}}},	down = iCommandPlaneChangeRadarPRF,			name = _('Radar Pulse Repeat Frequency Select'), category = _('Sensors')},
{combos = {{key = ',', reformers = {'RShift'}}},	pressed = iCommandSelecterLeft,		up = iCommandSelecterStop, name = _('Scan Zone Left'), category = _('Sensors')},
{combos = {{key = '/', reformers = {'RShift'}}},	pressed = iCommandSelecterRight,	up = iCommandSelecterStop, name = _('Scan Zone Right'), category = _('Sensors')},
{combos = {{key = '='}},							down = iCommandPlaneZoomIn,					name = _('Display Zoom In'), category = _('Sensors')},
{combos = {{key = '-'}},							down = iCommandPlaneZoomOut,				name = _('Display Zoom Out'), category = _('Sensors')},
--{combos = {{key = '=', reformers = {'RAlt'}}},	pressed = iCommandPlaneIncreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = _('Target Specified Size Increase'), category = _('Sensors')},
--{combos = {{key = '-', reformers = {'RAlt'}}},	pressed = iCommandPlaneDecreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = _('Target Specified Size Decrease'), category = _('Sensors')},

-- Weapons
{combos = {{key = 'V', reformers = {'LCtrl'}}},		down = iCommandPlaneSalvoOnOff,				name = _('Salvo Mode'), category = _('Weapons')},
{combos = {{key = 'Space', reformers = {'RAlt'}}},	down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff, name = _('Weapon Release'), category = _('Weapons')},
{combos = {{key = 'C', reformers = {'LShift'}}},	down = iCommandChangeGunRateOfFire,			name = _('Gun Rate Switch (HI/LO)'), category = _('Weapons')},

-- Communications
{down = iCommandPlaneRefuelingReadyPreContact, name = _('A/A refueling - "Ready for precontact" radio call'), category = _('Communications')},

----------------------------------------------------------------------------------------------------

-- HUD Control
{combos = {{key = 'H', reformers = {'RCtrl'}}},		down = iCommandBrightnessILS,				name = _('HUD Color Control Switch'),								category = _('Systems') , features = {"HUDcolor"}},
{combos = {{key = 'H', reformers = {'RCtrl','RShift'}}}, pressed = iCommandHUDBrightnessUp,		name = _('HUD Symbol Control up'),						category = _('Systems') , features = {"HUDbrightness"}},
{combos = {{key = 'H', reformers = {'RShift','RAlt'}}}, pressed = iCommandHUDBrightnessDown,	name = _('HUD Symbol Control down'),					category = _('Systems') , features = {"HUDbrightness"}},

{down = BRT_MODE, name = _('Brightness Mode Control'), category = _('HUD Control Panel')},
{down = SYM_REJ, name = _('Symbol Reject Control'), category = _('HUD Control Panel')},
{down = RTCL_MODE, name = _('Reticle Mode Control'), category = _('HUD Control Panel')},
{down = COLOR_MODE, name = _('Day/Night Select'), category = _('HUD Control Panel')},
{down = SYM_BRT, name = _('Symbol Brightness Control'), category = _('HUD Control Panel')},
{down = STBY_RTCL, name = _('Standby Reticle Brightness'), category = _('HUD Control Panel')},
{down = RTCL_DEPR, name = _('Reticle Depression Setting'), category = _('HUD Control Panel')},

-- HOTAS Stick
{combos = {{key = 'S'}}, down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButton, name = _('Nose Gear Maneuvering Range'), category = _('Systems')},
{combos = {{key = ';', reformers = {'RShift'}}},	pressed = iCommandSelecterUp,		up = iCommandSelecterStop, name = _('Antenna Elevation Control Up'), category = _('Sensors')},
{combos = {{key = '.', reformers = {'RShift'}}},	pressed = iCommandSelecterDown,		up = iCommandSelecterStop, name = _('Antenna Elevation Control Down'), category = _('Sensors')},
{combos = {{key = ';'}}, pressed = iCommandPlaneRadarUp, up = iCommandPlaneRadarStop,			name = _('Target Designator Control Up'), category = _('Sensors')},
{combos = {{key = '.'}}, pressed = iCommandPlaneRadarDown, up = iCommandPlaneRadarStop,			name = _('Target Designator Control Down'), category = _('Sensors')},
{combos = {{key = ','}}, pressed = iCommandPlaneRadarLeft, up = iCommandPlaneRadarStop,			name = _('Target Designator Control Left'), category = _('Sensors')},
{combos = {{key = '/'}}, pressed = iCommandPlaneRadarRight, up = iCommandPlaneRadarStop,		name = _('Target Designator Control Right'), category = _('Sensors')},
{combos = {{key = 'Enter'}},						down = iCommandPlaneChangeLock, up = iCommandPlaneChangeLockUp, name = _('Target Designator Control Pless (Target Lock)'), category = _('Sensors')},
{combos = {{key = 'B'}},							down = iCommandPlaneAirBrake,				name = _('Airbrake'),								category = _('Systems') , features = {"airbrake"}},

{combos = {{key = 'Q', reformers = {'LAlt'}}},		down = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('Nose Wheel Steering'), category = _('Systems')},
{combos = {{key = '.', reformers = {'RCtrl'}}},	pressed = iCommandPlaneTrimUp,			up = iCommandPlaneTrimStop, name = _('Trim Control Nose Up'),			category = _('Flight Control')},
{combos = {{key = ';', reformers = {'RCtrl'}}},	pressed = iCommandPlaneTrimDown,		up = iCommandPlaneTrimStop, name = _('Trim Control Nose Down'),		category = _('Flight Control')},
{combos = {{key = ',', reformers = {'RCtrl'}}},	pressed = iCommandPlaneTrimLeft,		up = iCommandPlaneTrimStop, name = _('Trim Control Left Wing Down'),	category = _('Flight Control')},
{combos = {{key = '/', reformers = {'RCtrl'}}},	pressed = iCommandPlaneTrimRight,		up = iCommandPlaneTrimStop, name = _('Trim Control Right Wing Down'),	category = _('Flight Control')},

-- ILS/TACAN Control Panel
{down = ILS_PWR, name = _('ILS Volume Control'), category = _('ILS/TACAN Control Panel')},
{down = TCN_XY, name = _('TACAN XY Selector'), category = _('ILS/TACAN Control Panel')},

-- CAS Control Panel
{combos = {{key = '9', reformers = {'LAlt'}}},		down = iCommandPlaneStabCancel,				name = _('Autopilot Disengage'), category = _('Autopilot')},
{combos = {{key = '1', reformers = {'LCtrl'}}},		down = iCommandHelicopter_PPR_button_T_up,	name = _('Pitch CAS Control Switch'), category = _('Autopilot')},
{combos = {{key = '2', reformers = {'LCtrl'}}},		down = iCommandHelicopter_PPR_button_K_up,	name = _('Roll CAS Control Switch'), category = _('Autopilot')},
{combos = {{key = '3', reformers = {'LCtrl'}}},		down = iCommandHelicopter_PPR_button_H_up,	name = _('Yaw CAS Control Switch'), category = _('Autopilot')},
{combos = {{key = 'A'}, {key = '1', reformers = {'LAlt'}}}, down = iCommandPlaneAutopilot,		name = _('Pitch/Roll Attitude Hold Switch'), category = _('Autopilot')},
{combos = {{key = 'H'}, {key = '2', reformers = {'LAlt'}}}, down = iCommandPlaneStabHbar,		name = _('Altitude Hold Switch'), category = _('Autopilot')},
{combos = {{key = 'T', reformers = {'LAlt'}}},		down = iCommandPlaneTrimOn, up = iCommandPlaneTrimOff, name = _('T/O Trim Setting Button'), category = _('Flight Control')},

-- Throttle Quadrant
{combos = {{key = 'F'}},							down = iCommandPlaneFlaps,					name = _('Flaps Control'),							category = _('Systems')},

-- External Light Control Panel
{combos = {{key = 'L', reformers = {'RCtrl'}}},		down = iCommandPlaneLightsOnOff,			name = _('Position Light Control'),						category = _('Systems')},
{combos = {{key = 'L', reformers = {'RCtrl','RAlt'}}}, down = iCommandPlaneAntiCollisionLights, name = _('Anti-Collision Light Control'), category = _('Systems')},

-- Integrated Communications Control Panel
{combos = {{key = ',', reformers = {'RAlt'}}},		down = iCommandPlaneThreatWarnSoundVolumeDown, name = _('TEWS Volume Down'), category = _('Sensors')},
{combos = {{key = '.', reformers = {'RAlt'}}},		down = iCommandPlaneThreatWarnSoundVolumeUp,name = _('TEWS Volume Up'), category = _('Sensors')},

-- KY-58 Control Panel
-- Anti-G Panel
-- Ground Power Panel
-- == Armament Safety Override Switch
-- BIT Panel
-- == Emergency Air Refueling Switch
-- Take Command/ICS Control Panel (F-15D)
-- Interrogator Control Panel
-- IFF Control Panel
-- == IFF Antenna Select Switch
-- == Electronic Warfare Warning System(EWWS) Enable Switch
-- TEWS Panel
-- == Seat Adjust Switch
-- Radar Control Panel
{combos = {{key = 'I'}},							down = iCommandPlaneRadarOnOff,				name = _('Radar On/Off'), category = _('Sensors')},
{combos = {{key = '-', reformers = {'RCtrl'}}},		down = iCommandDecreaseRadarScanArea,		name = _('Radar Azimuth Scan Decrease'), category = _('Sensors')},
{combos = {{key = '=', reformers = {'RCtrl'}}},		down = iCommandIncreaseRadarScanArea,		name = _('Radar Azimuth Scan Increase'), category = _('Sensors')},


-- == Non-Cooperative Target Recognition (NCTR) Enable Switch
-- == VMAX Switch
-- Fuel Control Panel
{combos = {{key = 'R', reformers = {'LCtrl'}}},		down = iCommandPlaneAirRefuel,				name = _('Slipway Switch'), category = _('Systems')},
{combos = {{key = 'R'}},							down = iCommandPlaneFuelOn, up = iCommandPlaneFuelOff, name = _('Fuel Dump'),					category = _('Systems') , features = {"fueldump"}},

-- Miscellaneius Control Panel
-- == Canopy jettison Handle

-- Oxygen Regulator
-- ECS Panel
-- Tenperture Panel
-- == Canopy Control Handle
-- Interior Lights Control Panel
{combos = {{key = 'L'}},							down = iCommandPlaneCockpitIllumination,	name = _('Interior Light Control'),					category = _('Systems')},

-- TEWS Pod Control Panel
-- Countermeasures Dispenser(CMD) Control Panel
-- Engine Start Fuel Switch
-- Compass Control Panel
-- TEWS Power Control Panel
{combos = {{key = 'R', reformers = {'RShift'}}},	down = iCommandChangeRWRMode,				name = _('RWR Power'), category = _('Sensors')},
-- Navigation Control Panel
-- Engine Control Panel



})
return res
