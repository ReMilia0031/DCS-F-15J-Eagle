dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

--  MODULATION_AM = base.MODULATION_AM
--  MODULATION_FM = base.MODULATION_FM
--  MODULATION_AM_AND_FM = base.MODULATION_AM_AND_FM
local dev = GetSelf()
local update_time_step = 0.05 --update will be called 20/second
make_default_activity(update_time_step)

dev:listen_command(ARC164_commands.R1_FREQ_4)
dev:listen_command(ARC164_commands.R1_FREQ_3)
dev:listen_command(ARC164_commands.R1_FREQ_2)
dev:listen_command(ARC164_commands.R1_FREQ_1)

dev:listen_command(Keys.COM1_Freq_higher_025)
dev:listen_command(Keys.COM1_Freq_higher_05)
dev:listen_command(Keys.COM1_Freq_higher_1)
dev:listen_command(Keys.COM1_Freq_higher_10)
dev:listen_command(Keys.COM1_Freq_higher_100)

dev:listen_command(Keys.COM1_Freq_lower_025)
dev:listen_command(Keys.COM1_Freq_lower_05)
dev:listen_command(Keys.COM1_Freq_lower_1)
dev:listen_command(Keys.COM1_Freq_lower_10)
dev:listen_command(Keys.COM1_Freq_lower_100)

local COM1_switch_025_param		= get_param_handle("COM_025_SWITCH")
local COM1_switch_05_param		= get_param_handle("COM_05_SWITCH")
local COM1_switch_1_param		= get_param_handle("COM_1_SWITCH")
local COM1_switch_10_param		= get_param_handle("COM_10_SWITCH")
local COM1_switch_100_param		= get_param_handle("COM_100_SWITCH")

local COM1_100er 	= 0
local COM1_10er		= 0
local COM1_1er		= 0
local COM1_05er		= 0
local COM1_025er	= 0

local added_frequencies = 0
local uhf_radio_device = nil

function keys_Freq_up_025(value)

	if(COM1_025er == 0.00)then
		COM1_025er = 0.05
	else
		COM1_025er = 0.0
	end

	COM1_switch_025_param:set(COM1_025er)
	COM1_switch_025_param:set(COM1_025er)

	adding_all_freqs_up()

end

function keys_Freq_up_05(value)

	if(COM1_05er <= 0.8)then
		COM1_05er = COM1_05er + 0.10
	else
		COM1_05er = 0.9
	end

	COM1_switch_05_param:set(COM1_05er)
	COM1_switch_05_param:set(COM1_05er)


	adding_all_freqs_up()
end

function keys_Freq_up_1(value)

	if(COM1_1er <= 8.0) then
		COM1_1er = COM1_1er + 1.0
	else
		COM1_1er = 9.0
	end

	COM1_switch_1_param:set(COM1_1er)
	COM1_switch_1_param:set(COM1_1er)

	adding_all_freqs_up()
end

function keys_Freq_up_10(value)

	if(COM1_10er <= 80.0) then
		COM1_10er = COM1_10er + 10.0
	else
		COM1_10er = 90.0
	end

	COM1_switch_10_param:set(COM1_10er)
	COM1_switch_10_param:set(COM1_10er)

	adding_all_freqs_up()
end

function keys_Freq_up_100(value)

	if(COM1_100er <= 200.0) then
		COM1_100er = COM1_100er + 100.0
	else
		COM1_100er = 300.0
	end

	COM1_switch_100_param:set(COM1_100er)
	COM1_switch_100_param:set(COM1_100er)

	adding_all_freqs_up()
end

function keys_Freq_down_025(value)
	if(COM1_025er == 0.05) then
		COM1_025er = 0.00
	else
		COM1_025er = 0.05
	end

	COM1_switch_025_param:set(COM1_025er)
	COM1_switch_025_param:set(COM1_025er)

	adding_all_freqs_up()

end

function keys_Freq_down_05(value)

	if(COM1_05er >= 0.1)then
		COM1_05er = COM1_05er - 0.1
	else
		COM1_05er = 0.0
	end

	COM1_switch_05_param:set(COM1_05er)
	COM1_switch_05_param:set(COM1_05er)

	adding_all_freqs_up()
end

function keys_Freq_down_1(value)

	if(COM1_1er >= 1.0)then
		COM1_1er = COM1_1er - 1.0
	else
		COM1_1er = 0.0
	end

	COM1_switch_1_param:set(COM1_1er)
	COM1_switch_1_param:set(COM1_1er)

	adding_all_freqs_up()
end

function keys_Freq_down_10(value)

	if(COM1_10er >= 10.0)then
		COM1_10er = COM1_10er - 10.0
	else
		COM1_10er = 0.0
	end

	COM1_switch_10_param:set(COM1_10er)
	COM1_switch_10_param:set(COM1_10er)

	adding_all_freqs_up()
end

function keys_Freq_down_100(value)

	if(COM1_100er >= 100.0)then
		COM1_100er = COM1_100er - 100.0
	else
		COM1_100er = 00.0
	end

	COM1_switch_100_param:set(COM1_100er)
	COM1_switch_100_param:set(COM1_100er)

	adding_all_freqs_up()

end

function adding_all_freqs_up()

	added_frequencies = (COM1_100er + COM1_10er + COM1_1er + COM1_05er + COM1_025er) * 1000000.0

	uhf_radio_device:set_frequency(added_frequencies)
	--print_message_to_user("Freq. at param is: "..tostring(COM1_100er + COM1_10er + COM1_1er + COM1_05er + COM1_025er))
	--print_message_to_user("Value of added and multiplied Freqs:" ..tostring(added_frequencies))
	--print_message_to_user("Actual Frequency set: " ..tostring(uhf_radio_device:get_frequency()))
end


command_table = {

	[Keys.COM1_Freq_higher_025] 		= keys_Freq_up_025,
	[Keys.COM1_Freq_higher_05] 			= keys_Freq_up_05,
	[Keys.COM1_Freq_higher_1] 			= keys_Freq_up_1,
	[Keys.COM1_Freq_higher_10]			= keys_Freq_up_10,
	[Keys.COM1_Freq_higher_100] 		= keys_Freq_up_100,

	[Keys.COM1_Freq_lower_025] 		= keys_Freq_down_025,
	[Keys.COM1_Freq_lower_05] 		= keys_Freq_down_05,
	[Keys.COM1_Freq_lower_1] 		= keys_Freq_down_1,
	[Keys.COM1_Freq_lower_10]		= keys_Freq_down_10,
	[Keys.COM1_Freq_lower_100] 		= keys_Freq_down_100,

}

function SetCommand(command, value)

	if command_table[command] then
		command_table[command](value)
	end
end

function post_initialize()

	uhf_radio_device = GetDevice(devices.ARC164_COMM)

	COM1_100er = 200.0
	COM1_10er = 60.0
	COM1_1er = 1.0
	COM1_05er = 0.0
	COM1_025er = 0.00

	COM1_switch_100_param:set(200)
	COM1_switch_100_param:set(200)
	COM1_switch_10_param:set(60)
	COM1_switch_10_param:set(60)
	COM1_switch_1_param:set(1)
	COM1_switch_1_param:set(1)
	COM1_switch_05_param:set(0.0)
	COM1_switch_05_param:set(0.0)
	COM1_switch_025_param:set(0.00)
	COM1_switch_025_param:set(0.00)

	uhf_radio_device:set_frequency(251E6)

end

function update()
end

need_to_be_closed = false -- close lua state after initialization
