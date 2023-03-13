--AN/ARC-164 UHF Communications System (After to 1F-15-857)

dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."utils.lua")
--dofile(lfs.writedir() .. 'Mods\\Services\\DCS-SRS\\Scripts\\DCS-SimpleRadioStandalone.lua')

local update_time_step = 0.02
make_default_activity(update_time_step)
sensor_data = get_base_data()
local dev = GetSelf()


--------------------------------------------------------------------
local R1_CHAN_10		= get_param_handle("R1_CHAN_10")
local R1_CHAN_01		= get_param_handle("R1_CHAN_01")
local R1_FREQ_100		= get_param_handle("R1_FREQ_100")
local R1_FREQ_10		= get_param_handle("R1_FREQ_10")
local R1_FREQ_1			= get_param_handle("R1_FREQ_1")
local R1_FREQ_01		= get_param_handle("R1_FREQ_01")
local R1_FREQ_001		= get_param_handle("R1_FREQ_001")
local R1_FREQ_0001		= get_param_handle("R1_FREQ_0001")
local R1_SRS_TEST		= get_param_handle("R1_SRS_TEST")

local var_r1_chan		= 0
local var_r1_freq_100	= 0
local var_r1_freq_1		= 0
local r1_freq3			= 0
local var_r1_freq_01	= 0
local var_r1_freq_001	= 0
local r1_draw_chan		= 0
local r1_draw_freq1		= 0
local r1_draw_freq2		= 0
local r1_draw_freq3		= 0
local r1_draw_freq3m	= 0
local r1_draw_freq3c	= 0
local r1_freq_srs

function r1_draw_chan(count)
	local tens = math.floor(count/10 + 0.02)
	local ones = math.floor(count%10 + 0.01)
	R1_CHAN_10:set(tens/10)
	R1_CHAN_01:set(ones/10)
end

function r1_draw_freq1(count)
	local tens = math.floor(count/10 + 0.02)
	local ones = math.floor(count%10 + 0.01)
	R1_FREQ_100:set(tens/10)
	R1_FREQ_10:set(ones/10)
end

function r1_draw_freq2(count)
	local ones	= math.floor(count%10 + 0.02)
	R1_FREQ_1:set(ones/10)
end

function r1_draw_freq3m(count)
	local cents = math.floor(count/100 + 0.02)
	local ones	= math.floor(count%10 + 0.01)
	R1_FREQ_01:set(cents/10)
	R1_FREQ_0001:set(ones/10)
end

function r1_draw_freq3c(count)
	local tens = math.floor(count/10 + 0.02)
	R1_FREQ_001:set(tens/10)
end

function update_r1_display()
	r1_draw_chan(var_r1_chan)
	r1_draw_freq1(var_r1_freq_100)
	r1_draw_freq2(var_r1_freq_1)
	r1_draw_freq3m(var_r1_freq_01)
	r1_draw_freq3c(var_r1_freq_001)
end

function update_r1_srs()
	R1_SRS_TEST:set(r1_freq_srs)
end

----------FUNCTION-POST-INIT----------
--[[ R1 Mode Selector
	0.0	Time-of-day			[T]
	0.1 Active Manual		[AM]
	0.2 Active Channnel		[AC]
	0.3 Preset Freq Select	[CHAN]
	0.4 Manual Freq Select	[MAN]
	0.5	Guard Freq select	[G] (243.000 MHz)
]]
--[[ R2 Mode Selector
	-0.2 Turns Off R2 Radio	[OFF]
	-0.1 Manual Freq Select	[MAN]
	0.0	Preset Freq Select	[CHAN]
	0.1 AM Band Guard Freq	[G-AM]
	0.2 FM Band Guard Freq	[G-VHF FM]
]]

function post_initialize()
	dev:performClickableAction(ARC164_commands.R1_CHAN,		0.1, false)
	dev:performClickableAction(ARC164_commands.R1_FREQ_1,	0.455, false)
	dev:performClickableAction(ARC164_commands.R1_FREQ_2,	0.6, false)
	dev:performClickableAction(ARC164_commands.R1_FREQ_3,	0.6, false)
	dev:performClickableAction(ARC164_commands.R1_MODE,		0.0, false)
	dev:performClickableAction(ARC164_commands.R1_VOL,		0.0, false)

	dev:performClickableAction(ARC164_commands.R2_MODE,		-0.2, false)
	dev:performClickableAction(ARC164_commands.R2_TRANS,	0, false)
	dev:performClickableAction(ARC164_commands.R2_DSPL,		0, false)
	dev:performClickableAction(ARC164_commands.R2_CHAN,		0, false)

	dev:performClickableAction(ARC164_commands.R1_ADF,		0, false)
	dev:performClickableAction(ARC164_commands.R1_GREC,		0, false)
	dev:performClickableAction(ARC164_commands.R1_ANT,		0, false)
	dev:performClickableAction(ARC164_commands.R2_ANT,		0, false)

	local birth = LockOn_Options.init_conditions.birth_place
	if birth=="GROUND_HOT" or birth=="AIR_HOT" then
		dev:performClickableAction(ARC164_commands.R1_MODE,	0.5, false)
		dev:performClickableAction(ARC164_commands.R1_VOL,	0.66, false)
	dev:performClickableAction(ARC164_commands.R2_MODE,		0.0, false)
	elseif birth=="GROUND_COLD" then
	end
end

----------FUNCTION-SETCOMMAND----------
function SetCommand(command,value)
	if command == ARC164_commands.R1_FREQ_3 then
		r1_freq3 = round(r1_freq3 + 50*value)
		var_r1_freq_01 = r1_freq3 % 1000
		var_r1_freq_001 = r1_freq3 % 100
	end
	if command == ARC164_commands.R1_FREQ_2 then
		var_r1_freq_1 = round(var_r1_freq_1 + 50*value)
		var_r1_freq_1 = var_r1_freq_1 % 10
	end
	if command == ARC164_commands.R1_FREQ_1 then
		var_r1_freq_100 = round(var_r1_freq_100 + 50*value)
		var_r1_freq_100 = var_r1_freq_100 % 100
	end

	if command == ARC164_commands.R1_CHAN then
		var_r1_chan = round(var_r1_chan + 50*value)
		var_r1_chan = var_r1_chan % 10
	end
	r1_freq_srs = var_r1_freq_100*10 + var_r1_freq_1 + var_r1_freq_01/1000
end

------------------------------------------------------------------FUNCTION-UPDATE---------------------------------------------------------------------------------------------------
function update()
	update_r1_display()
	update_r1_srs()
end

need_to_be_closed = false -- close lua state after initialization


