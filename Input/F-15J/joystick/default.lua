local res = external_profile("Config/Input/Aircrafts/base_joystick_binding.lua")
ignore_features(res.keyCommands,{
"dragchute", "shiptakeoff"
})
join(res.keyCommands,{

-- Flight Control

-- Systems
{down = iCommandPlaneJettisonFuelTanks, name = _('Jettison Fuel Tanks'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel Brake Left On/Off'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Systems')},
{down = iCommandPlaneFSQuantityIndicatorSelectorMAIN, name = _('Fuel Quantity Selector'), category = _('Systems')},
{down = iCommandPlaneFSQuantityIndicatorTest, up = iCommandPlaneFSQuantityIndicatorTest, value_down = 1, value_up = 0, name = _('Fuel Quantity Test'), category = _('Systems')},
{down = iCommandPlaneFSQuantityIndicatorSelectorINT,	up = iCommandPlaneFSQuantityIndicatorSelectorINT, value_down = 1,  value_up = 0, 	name = _('Bingo Fuel Index, CW'),  category = _('Systems')},
{down = iCommandPlaneFSQuantityIndicatorSelectorINT,	up = iCommandPlaneFSQuantityIndicatorSelectorINT, value_down = -1, value_up = 0, 	name = _('Bingo Fuel Index, CCW'), category = _('Systems')},

-- Modes
{down = iCommandPlaneModeBVR,				name = _('(2) Long Range Search(LRS)Mode'), category = _('Modes')},
{down = iCommandPlaneModeVS,				name = _('(3) Close Air Combat Vertical Scan Mode'), category = _('Modes')},
{down = iCommandPlaneModeBore,				name = _('(4) Automatic Acquisition Mode'), category = _('Modes')},
{down = iCommandPlaneModeHelmet,			name = _('(5) Close Air Combat HMD Helmet Mode'), category = _('Modes')},
{down = iCommandPlaneModeFI0,				name = _('(6) Longitudinal Missile Aiming Mode/FLOOD mode'), category = _('Modes')},
{down = iCommandPlaneModeGround,			name = _('(7) Air-To-Ground Mode'), category = _('Modes')},
{down = iCommandPlaneModeGrid,				name = _('(8) Gunsight Reticle Switch'), category = _('Modes')},

-- Sensors
{down = iCommandSensorReset, name = _('Radar - Return To Search/NDTWS'), category = _('Sensors')},
{down = iCommandRefusalTWS, name = _('Unlock TWS Target'), category = _('Sensors')},
{down = iCommandPlaneRadarChangeMode, name = _('Radar RWS/TWS Mode Select'), category = _('Sensors')},
{down = iCommandPlaneRadarCenter, name = _('Target Designator To Center'), category = _('Sensors')},
{down = iCommandPlaneChangeRadarPRF, name = _('Radar Pulse Repeat Frequency Select'), category = _('Sensors')},
{pressed = iCommandSelecterLeft, up = iCommandSelecterStop, name = _('Scan Zone Left'), category = _('Sensors')},
{pressed = iCommandSelecterRight, up = iCommandSelecterStop, name = _('Scan Zone Right'), category = _('Sensors')},
{down = iCommandPlaneZoomIn, name = _('Display Zoom In'), category = _('Sensors')},
{down = iCommandPlaneZoomOut, name = _('Display Zoom Out'), category = _('Sensors')},

--{pressed = iCommandPlaneIncreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = _('Target Specified Size Increase'), category = _('Sensors')},
--{pressed = iCommandPlaneDecreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = _('Target Specified Size Decrease'), category = _('Sensors')},
{pressed = iCommandSelecterUp, up = iCommandSelecterStop, name = _('Antenna Elevation Control Up'), category = _('Sensors')},
{pressed = iCommandSelecterDown, up = iCommandSelecterStop, name = _('Antenna Elevation Control Down'), category = _('Sensors')},


-- Weapons
{down = iCommandPlaneSalvoOnOff, name = _('Salvo Mode'), category = _('Weapons')},
{combos = {{key = 'JOY_BTN2'}}, down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff, name = _('Weapon Release'), category = _('Weapons')},
{down = iCommandChangeGunRateOfFire, name = _('Cannon Rate Of Fire / Cut Of Burst select'), category = _('Weapons')},

-- Communications
{down = iCommandPlaneRefuelingReadyPreContact, name = _('A/A refueling - "Ready for precontact" radio call'), category = _('Communications')},

----------------------------------------------------------------------------------------------------

-- HUD Control
-- HOTAS Stick
{down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButton, name = _('Nose Gear Maneuvering Range'), category = _('Systems')},
{down = iCommandPlaneAirRefuel, name = _('Refueling Boom'), category = _('Systems')},
{pressed = iCommandPlaneRadarUp, up = iCommandPlaneRadarStop, name = _('Target Designator Up'), category = _('Sensors')},
{pressed = iCommandPlaneRadarDown, up = iCommandPlaneRadarStop, name = _('Target Designator Down'), category = _('Sensors')},
{pressed = iCommandPlaneRadarLeft, up = iCommandPlaneRadarStop, name = _('Target Designator Left'), category = _('Sensors')},
{pressed = iCommandPlaneRadarRight, up = iCommandPlaneRadarStop, name = _('Target Designator Right'), category = _('Sensors')},
{combos = {{key = 'JOY_BTN3'}}, down = iCommandPlaneChangeLock, up = iCommandPlaneChangeLockUp, name = _('Target Designator Control Pless (Target Lock)'), category = _('Sensors')},

{down = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('Nose Wheel Steering'), category = _('Systems')},

-- ILS/TACAN Control Panel
-- CAS Control Panel
{down = iCommandPlaneStabCancel, name = _('Autopilot Disengage'), category = _('Autopilot')},
{down = iCommandHelicopter_PPR_button_T_up, name = _('Pitch CAS Control Switch'), category = _('Autopilot')},
{down = iCommandHelicopter_PPR_button_K_up, name = _('Roll CAS Control Switch'), category = _('Autopilot')},
{down = iCommandHelicopter_PPR_button_H_up, name = _('Yaw CAS Control Switch'), category = _('Autopilot')},
{down = iCommandPlaneAutopilot, name = _('Pitch/Roll Attitude Hold Switch'), category = _('Autopilot')},
{down = iCommandPlaneStabHbar, name = _('Altitude Hold Switch'), category = _('Autopilot')},
{down = iCommandPlaneTrimOn, up = iCommandPlaneTrimOff, name = _('T/O Trim Setting Button'), category = _('Flight Control')},

-- Throttle Quadrant
-- External Light Control Panel
{down = iCommandPlaneAntiCollisionLights, name = _('Anti-collision lights'), category = _('Systems')},

-- Integrated Communications Control Panel
{down = iCommandPlaneThreatWarnSoundVolumeDown, name = _('RWR/SPO Sound Signals Volume Down'), category = _('Sensors')},
{down = iCommandPlaneThreatWarnSoundVolumeUp, name = _('RWR/SPO Sound Signals Volume Up'), category = _('Sensors')},

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
{down = iCommandPlaneRadarOnOff, name = _('Radar On/Off'), category = _('Sensors')},
{down = iCommandDecreaseRadarScanArea, name = _('Radar Azimuth Scan Decrease'), category = _('Sensors')},
{down = iCommandIncreaseRadarScanArea, name = _('Radar Azimuth Scan Increase'), category = _('Sensors')},
-- == Non-Cooperative Target Recognition (NCTR) Enable Switch
-- == VMAX Switch
-- Fuel Control Panel
-- Miscellaneius Control Panel
-- == Canopy jettison Handle

-- Oxygen Regulator
-- ECS Panel
-- Tenperture Panel
-- == Canopy Control Handle
-- Interior Lights Control Panel
-- TEWS Pod Control Panel
-- Countermeasures Dispenser(CMD) Control Panel
-- Engine Start Fuel Switch
-- Compass Control Panel
-- TEWS Power Control Panel
{down = iCommandChangeRWRMode, name = _('RWR/SPO Mode Select'), category = _('Sensors')},
-- Navigation Control Panel
-- Engine Control Panel

})
-- joystick axes 
join(res.axisCommands,{
{action = iCommandPlaneSelecterHorizontalAbs, name = _('TDC Slew Horizontal')},
{action = iCommandPlaneSelecterVerticalAbs	, name = _('TDC Slew Vertical')},
{action = iCommandPlaneRadarHorizontalAbs	, name = _('Radar Horizontal')},
{action = iCommandPlaneRadarVerticalAbs		, name = _('Radar Vertical')},

{action = iCommandPlaneMFDZoomAbs 			, name = _('MFD Range')},
{action = iCommandPlaneBase_DistanceAbs 	, name = _('Base/Distance')},

{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},
})
return res
