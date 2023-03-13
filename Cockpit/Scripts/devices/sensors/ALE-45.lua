-- AN/ALE-45 Coundermeasures Dispenser Set

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")

local dev = GetSelf()
local sensor_data = get_base_data()
local birth = LockOn_Options.init_conditions.birth_place
local update_time_step = 0.006
make_default_activity(update_time_step)

local aircraft              = get_aircraft_type()
--------------------------------------------------------------------
--Variable declaration
--------------------------------------------------------------------
local   cmd_type        =   0       --  1:Chaff  0:Both  -1:Flare     
local   cmd_mode        =   0       --  0:Automatic  1:Semi-Automatic    2:Man-Only  3:Standby   4:Off
local   cmd_stat        =   0       --  0:Off   1:Dispensing
local   cmd_stat_p      =   0       --  cmd_stat previous state
local   cmd_timer       =   0       --  timer chaff
local   cmd_timer_s     =   1.5     --  timer value 
local   CMD_ONOFF       =   10000   --  command definition
--------------------------------------------------------------------
dev:listen_command(CMD_ONOFF)       --  listening for command

------------------------------------------------------------------FUNCTION-POST-INIT---------------------------------------------------------------------------------------------------
function post_initialize()
    dev:performClickableAction(ALE45_commands.CMD_MODE, 4, false)
    dev:performClickableAction(ALE45_commands.DSA_SEL, 0, false)

    if birth=="GROUND_HOT" or birth=="AIR_HOT" then
    elseif birth=="GROUND_COLD" then
    end
end

------------------------------------------------------------------FUNCTION-SETCOMMAND---------------------------------------------------------------------------------------------------
function SetCommand(command,value)
    if command == ALE45_commands.CMD_MODE then
		cmd_mode = round(value*10, 0)
        if cmd_mode ~= 1 then
			cmd_stat = cmd_stat_p
        end
    end
    if command == ALE45_commands.DSA_SEL then
		cmd_type = value
    end

    if command == CMD_ONOFF then
		if cmd_mode == 1 then
			cmd_timer = cmd_timer_s
		elseif cmd_mode == 2 then
			if cmd_type == 1 then
				dispatch_action(nil,Keys.iCommandPlaneDropChaffOnce)
			elseif cmd_type == 0 then
				dispatch_action(nil,Keys.iCommandPlaneDropSnarOnce)
			elseif cmd_type == -1 then
				dispatch_action(nil,Keys.iCommandPlaneDropFlareOnce)
			end
		end
		
		if cmd_mode ~= 1 then
			cmd_timer = 0
		end
		
		if cmd_mode == 1 and cmd_stat == cmd_stat_p then
			cmd_stat = cmd_stat+1 
		else
			cmd_stat = cmd_stat_p
		end
     end        
end

------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()
    if cmd_timer > 0 then
		cmd_timer = cmd_timer - update_time_step
        if cmd_timer <= 0 then
			cmd_timer = 0
            if cmd_type == 1 then
				dispatch_action(nil,Keys.iCommandPlaneDropChaffOnce) 
            elseif cmd_type == 0 then
				dispatch_action(nil,Keys.iCommandPlaneDropSnarOnce)
            elseif cmd_type == -1 then
				dispatch_action(nil,Keys.iCommandPlaneDropFlareOnce)
            end

            if cmd_stat == 1 then              
				cmd_timer = cmd_timer_s 
            elseif cmd_stat == 0 or cmd_mode ~= 1 then
				cmd_timer = 0                            
            end
        end
    end
end
need_to_be_closed = false 