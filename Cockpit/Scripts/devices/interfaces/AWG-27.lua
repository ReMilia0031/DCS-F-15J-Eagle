-- AN/AWG-27 Programmable Armament Control Set (PACS)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()	
	dev:performClickableAction(AWG27_commands.BTN_S0,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S1,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S2,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S3,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S4,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S5,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S6,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S7,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S8,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S9,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S10,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S11,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S12,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S13,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_S14,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_STA8,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_RCFT,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_STA5,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_LCFT,			0, false)
	dev:performClickableAction(AWG27_commands.BTN_STA2,			0, false)
	dev:performClickableAction(AWG27_commands.MPCD_PWR_CNTL,	0, false)
	dev:performClickableAction(AWG27_commands.MPCD_BRT_CNTL,	0, false)
	dev:performClickableAction(AWG27_commands.MPCD_CONT_CNTL,	0, false)
    dev:performClickableAction(AWG27_commands.MASTERARM,		-1, false)
	dev:performClickableAction(AWG27_commands.STOR_JETT,		0, false)
	dev:performClickableAction(AWG27_commands.STOR_JETT_EXEC,	0, false)
	dev:performClickableAction(AWG27_commands.EMER_JETT,		0, false)

	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(AWG27_commands.MPCD_PWR_CNTL, 0.20, false)
	elseif birth=="GROUND_COLD" then
	end

end
------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
	if command == ARN111_commands.TCN_XY then
		TCN_XY = value
	end

	if command == device_commands.CLIC_JETTINSON_TANK and value ==  1 or command == device_commands.CLIC_JETTINSON_TANK2 and value == 1 then
		dispatch_action(nil,Keys.iCommandPlaneJettisonFuelTanks)
	end
	if get_cockpit_draw_argument_value(320) > 0 and get_cockpit_draw_argument_value(320) < 0.29 then
		if command == AWG27_commands.STOR_JETT then
			if value == 1 then
				dispatch_action(nil,Keys.iCommandPlaneJettisonWeapons)
			end
		end
	elseif get_cockpit_draw_argument_value(320) < -0.29 then
		if command == AWG27_commands.STOR_JETT then
			if value == 1 then
				dispatch_action(nil,Keys.iCommandPlaneJettisonFuelTanks)
			end
		end
	end

--[[ draw_args not defined
]]
end
------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()



end