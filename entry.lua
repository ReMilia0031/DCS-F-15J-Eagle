declare_plugin("F_15",
	{
	installed			= true,					-- if false that will be place holder, or advertising
	state				= "installed",			-- MOD Status
	dirName				= current_mod_path,		-- Directory Name
	fileMenuName		= "F-15 Series",
	displayName			= "F-15 Series",		-- Module Manager
	shortName			= "F-15 Series",
	update_id			= "F-15 Series",
	version				= "0.1",
	image				= "F-15_Series.png",
	developerName		= "ReMZero Kagrazaka",
	developerLink		= "kotonozaka.xyz",
	info				= _("The Mitsubishi F-15J/DJ Eagle is a twin-engine, all-weather air superiority fighter based on the McDonnell Douglas F-15 Eagle in use by the Japan Air Self-Defense Force (JASDF)."),
	-- infoWaitScreen	= _(""),

	encyclopedia_path = current_mod_path..'/Encyclopedia',

--------------------------------------------------
Skins = {
		{
			name	= _("F-15 Series"),
			dir		= "Skins/1",
		},
	},

LogBook = {
		{
			name	= _("F-15J"),
			type	= "F-15J",
		},
		--[[{
			name	= _("F-15E_RM"),
			type	= "F-15E_RM_AA",
		},
		{
			name	= _("F-15E_RM"),
			type	= "F-15E_RM_AG",
		},]]
	},

Options = {
		{
			name	= _("F-15J"),
			nameId	= "F-15J",
			dir		= "Options",
			CLSID	= "{F_15J_Options}"
		},
	},

InputProfiles = {
		["F-15J"]		= current_mod_path .. "/Input/F-15J",
		-- ["F-15E_RM_AG"]	= current_mod_path .. '/Input/F-15E_RM_AA',
		-- ["F-15E_RM_AA"]	= current_mod_path .. '/Input/F-15E_RM_AA',
	},
})

--------------------------------------------------
mount_vfs_model_path	(current_mod_path .. "/Shapes")
mount_vfs_texture_path	(current_mod_path .. "/Textures")
mount_vfs_model_path	(current_mod_path .. "/Cockpit/Shape")
mount_vfs_liveries_path	(current_mod_path .. "/Liveries")
mount_vfs_texture_path	(current_mod_path .. "/Skins/1/ME")

-- set_manual_path('F-15J', current_mod_path .. '/Doc/manual')

--------------------------------------------------
-- dofile (current_mod_path .. "/Scripts/F-15A.lua")
dofile (current_mod_path .. "/Scripts/F-15J.lua")
-- dofile (current_mod_path .. "/Scripts/F-15E_AA.lua")
-- dofile (current_mod_path .. "/Scripts/F-15E_AG.lua")

--------------------------------------------------
dofile (current_mod_path .. "/Scripts/Views.lua")
make_view_settings ("F-15J", ViewSettings, SnapViews)
-- make_view_settings ("F-15E_RM_AA", ViewSettings, SnapViews)
-- make_view_settings ("F-15E_RM_AG", ViewSettings, SnapViews)

make_flyable ("F-15J",			current_mod_path .. "/Cockpit/Scripts/",		{nil, old = 6},		current_mod_path .. "/Scripts/Comm.lua")
-- make_flyable ("F-15E_RM_AA",	current_mod_path .. '/Cockpit/KneeboardRight/',	{nil, old = 6},		current_mod_path .. '/Scripts/Comm.lua')
-- make_flyable ("F-15E_RM_AG",	current_mod_path .. '/Cockpit/KneeboardRight/',	{nil, old = 17},	current_mod_path .. '/Scripts/Comm.lua')

--------------------------------------------------
--[[
./Scripts/Database/WsTypes.lua
nil, old =
	2 = MiG-29
	3 = Su-27
	4 = Su-33
	6 = F-15C
	16 = Su-25A
	17 = A-10A
	49 = MiG-29G
	50 = MiG-29S
	54 = Su-25T
]]

--------------------------------------------------
plugin_done()