
local WING = {
	{CLSID = "LAU-115_2*LAU-127_AIM-9L"},				-- AIM-9L *2
	{CLSID = "LAU-115_2*LAU-127_AIM-9M"},				-- AIM-9M *2
	{CLSID = "LAU-115_2*LAU-127_AIM-9X"},				-- AIM-9X *2
	{CLSID = "LAU-115_2*LAU-127_CATM-9M"},				-- CATM-9M *2

	{CLSID = "LAU-115_2*LAU-127_AIM-120B"},				-- AIM-120B *2
	{CLSID = "LAU-115_2*LAU-127_AIM-120C"},				-- AIM-120C *2

	{CLSID = "{AGM-154A}", arg_increment = 1.0},								-- AGM-154A
	{CLSID = "{AGM-154B}", arg_increment = 1.0},								-- AGM-154B
	{CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}", arg_increment = 1.0},	-- AGM-154C

	{CLSID = "{AGM_45A}"},								-- AGM-45A
	{CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515404}"},	-- AGM-45B

	{CLSID = "{C40A1E3A-DD05-40D9-85A4-217729E37FAE}"},	-- AGM-62

	{CLSID = "LAU_117_AGM_65A"},						-- AGM-65A
	{CLSID = "LAU_117_AGM_65B"},						-- AGM-65B
	{CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"},	-- AGM-65D
	{CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}"},	-- AGM-65E
	{CLSID = "LAU_117_AGM_65F"},						-- AGM-65F
	{CLSID = "LAU_117_AGM_65G"},						-- AGM-65G
	{CLSID = "LAU_117_AGM_65H"},						-- AGM-65H
	{CLSID = "LAU_117_AGM_65L"},						-- AGM-65L
	{CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"},	-- AGM-65K
	{CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}"},	-- AGM-65D*2
	{CLSID = "LAU_88_AGM_65H_2_R"},						-- AGM-65H*2
	{CLSID = "{DAC53A2F-79CA-42FF-A77A-F5649B601308}"},	-- AGM-65D*3
	{CLSID = "LAU_88_AGM_65H_3"},						-- AGM-65H*3
	{CLSID = "LAU_117_CATM_65K"},						-- CATM-65K
	{CLSID = "LAU_117_TGM_65D"},						-- TGM-65D
	{CLSID = "LAU_117_TGM_65G"},						-- TGM-65G
	{CLSID = "LAU_117_TGM_65H"},						-- TGM-65H

	{CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}"},	-- AGM-84A
	{CLSID = "{AGM_84D}"},								-- AGM-84D
	{CLSID = "{AGM_84E}"},								-- AGM-84E
	{CLSID = "{AGM_84H}"},								-- AGM-84H

	{CLSID = "{AGM_86C}"},								-- AGM-86C
	{CLSID = "{769A15DF-6AFB-439F-9B24-5B7A45C59D16}"},	-- AGM-86D

	{CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C9C}"},	-- AGM-88

	{CLSID = "{ee368869-c35a-486a-afe7-284beb7c5d52}"},	-- AGM-114
	{CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}"},	-- AGM-119

	{CLSID = "BRU-42_3*BDU-33"},						-- BDU-33*3
	{CLSID = "{BDU-50LD}"},								-- BDU-50LD
	{CLSID = "{BDU-50HD}"},								-- BDU-50HD
	{CLSID = "{BDU-50LGB}"},							-- BDU-50LGB

	{CLSID = "ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}"},	-- Mk-20

	{CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}"},	-- Mk-81
	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},	-- Mk-82
	{CLSID = "{Mk82AIR}"},								-- Mk-82AIR
	{CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}"},	-- Mk-83
	{CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"},	-- Mk-84
	{CLSID = "{Mk_84AIR_GP}"},							-- Mk-84AIR
	{CLSID = "{Mk_84AIR_TP}"},							-- Mk-84AIR

	{CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}"},	-- Mk-82*3
	{CLSID = "{BRU-42_3*Mk-82AIR}"},					-- Mk-82AIR*3

	{CLSID = "{CBU-52B}"},								-- CBU-52
	{CLSID = "{CBU-87}"},								-- CBU-87
	{CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"},	-- CBU-97
	{CLSID = "{CBU_103}"},								-- CBU-103
	{CLSID = "{CBU_105}"},								-- CBU-105

	{CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"},	-- GBU-10
	{CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"},	-- GBU-12
	{CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}"},	-- GBU-16
	{CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}"},	-- GBU-24
	{CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"},	-- GBU-27
	{CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}"},	-- GBU-28
	{CLSID = "{GBU-31}"},								-- GBU-31(V)1/B
	{CLSID = "{GBU-31V3B}"},							-- GBU-31(V)3/B
	{CLSID = "{GBU_32_V_2B}"},							-- GBU-32
	{CLSID = "{GBU-38}"},								-- GBU-38
	{CLSID = "{GBU_54_V_1B}"},							-- GBU-54

	{CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}"},						-- BLU-107

	{CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SUU-25

	{CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}"}, -- MK1
	{CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}"}, -- MK5
	{CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}"}, -- MK61
	{CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"}, -- M151
	{CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}"}, -- M156
	{CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}"}, -- M257
	{CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}"}, -- M274
	{CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}"}, -- WTU1B
	{CLSID = "{LAU-131 - 7 AGR-20A}"},					-- M151 APKWS
	{CLSID = "{LAU-131 - 7 AGR-20 M282}"},				-- M282 APKWS

	{CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}"},	-- F15-PTB

	{CLSID = "{D1744B93-2A8A-4C4D-B004-7A09CD8C8F3F}"},	-- AAQ-25
	{CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}"},	-- AAQ-28
	{CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}"},	-- ALQ-131
	{CLSID = "{ALQ_164_RF_Jammer}"},					-- ALQ-164
	{CLSID = "ALQ_184"},								-- ALQ-184
	{CLSID = "ALQ_184_Long"},							-- ALQ-184L
	{CLSID = "{1C2B16EB-8EB0-43de-8788-8EBB2D70B8BC}"},	-- ASQ-173
	{CLSID = "{AN_ASQ_213}"},							-- ASQ-213
	{CLSID = "{AN_ASQ_228}"},							-- ASQ-228
	{CLSID = "{199D6D51-1764-497E-9AE5-7D07C8D4D87E}"},	-- AVQ-26
	{CLSID = "{AWW-13}"},								-- AWW-13
	{CLSID = "MXU-648-TP"},								-- MXU-648

	{CLSID = "LAU-105"},								-- LAU-105
	
	{CLSID = "{AGM_88F}"},								-- AGM-88F
	{CLSID = "{AGM_88G}"},								-- AGM-88G

	{CLSID = "{RM_AIM_23}"},
	{CLSID = "{RM_IRIS_T}"},
	{CLSID = "{RM_AAM_4}"},
	{CLSID = "{RM_AIM_120A}"},
	{CLSID = "{RM_CATM_120C}"},
	{CLSID = "{RM_AIM_9E}"},
	{CLSID = "{RM_CATM_9X}"},
	{CLSID = "{RM_AIM_7D}"},
	{CLSID = "{RM_AIM_7G}"},
	{CLSID = "{RM_AIM_7Q}"},

	{CLSID = "{RM_LAU_115_2X_AIM_120A}"},
	{CLSID = "{RM_LAU_115_2X_CATM_120C}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9B}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9D}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9E}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9J}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9P}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9P5}"},
	{CLSID = "{RM_LAU_115_2X_CATM_9X}"},
	{CLSID = "{RM_LAU_115_2X_AIM_9Q}"},

	{CLSID = "{RM_TER_9A_AIM_120C}"},
	{CLSID = "{RM_TER_9A_AIM_54C}"},

	{CLSID = "{RM_AGM_78}"},
	{CLSID = "{RM_AGM_130}"},
	{CLSID = "{RM_GBU_15}"},
	{CLSID = "{RM_Mk_77}"},
	{CLSID = "{RM_Mk_40}"},
	{CLSID = "{RM_AGM_87}"},

	{CLSID = "{RM_ALQ_99}"},
	{CLSID = "{RM_ALQ_218}"},
	{CLSID = "{RM_AAQ_33}"},
	{CLSID = "{RM_AAQ_13}"},
	{CLSID = "{RM_AXQ_14}"},

	{CLSID = "{TER_9A_3*MK-81}"},
	{CLSID = "{TER_9A_3*Mk-83}"},
	{CLSID = "{TER_9A_3*Mk-20}"},
	{CLSID = "{TER_9A_3*M117}"},
	{CLSID = "{TER_9A_3*CBU-52B}"},


	{CLSID = "{BRU41_6X_MK-81}"},
	{CLSID = "{BRU41_6X_MK-20}"},
	{CLSID = "{BRU41_6X_MK-82SNAKEYE}"},
	{CLSID = "{BRU41_6X_M117}"},
	{CLSID = "{BRU41_6X_CBU-52B}"},
	{CLSID = "{BRU41_6X_CBU-87}"},
	{CLSID = "{BRU41_6X_CBU-97}"},

	{CLSID = "{JAS39_BRIMSTONE}"},
	{CLSID = "{BRU_61_4X_GBU_39}"},
	{CLSID = "{GBU_49}"},

}

local AAM = {
	{CLSID = "{AIM-9B}"},								-- AIM-9B
	{CLSID = "{AIM-9J}"},								-- AIM-9J
	{CLSID = "{AIM-9JULI}"},							-- AIM-9JULI
	{CLSID = "{AIM-9L}"},								-- AIM-9L
	{CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}"},	-- AIM-9M
	{CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}"},	-- AIM-9P
	{CLSID = "{AIM-9P5}"},								-- AIM-9P5
	{CLSID = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}"},	-- AIM-9X
	{CLSID = "CATM-9M"},								-- CATM-9M

	{CLSID = "{AIM-7E}"},								-- AIM-7E
	{CLSID = "{AIM-7F}"},								-- AIM-7F
	{CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}"},	-- AIM-7M
	{CLSID = "{AIM-7H}"},								-- AIM-7MH
	{CLSID = "{AIM-7P}"},								-- AIM-7P

	{CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}"},	-- AIM-120B
	{CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}"},	-- AIM-120C

	{CLSID = "{AIM_54A_Mk47}"},							-- AIM-54A-Mk47
	{CLSID = "{AIM_54A_Mk60}"},							-- AIM-54A-Mk60
	{CLSID = "{AIM_54C_Mk47}"},							-- AIM-54C-Mk47
	{CLSID = "{AIM_54C_Mk60}"},							-- AIM-54C-Mk60

	{CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}"},						-- BLU-107

	{CLSID = "{AIS_ASQ_T50}", arg_increment = -0.1, attach_point_position = {0.30, 0.0, 0.0}},			-- ACMI pod

	{CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}"},	-- Red-Smoke
	{CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}"},	-- Green-Smoke
	{CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}"},	-- Blue-Smoke
	{CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}"},	-- White-Smoke
	{CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}"},	-- Yellow-Smoke
	{CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}"},	-- Orange-Smoke

	{CLSID = "{RM_IRIS_T}"},
	{CLSID = "{RM_AIM_120A}"},
	{CLSID = "{RM_CATM_120C}"},
	{CLSID = "{RM_CATM_9X}"},
	{CLSID = "{RM_AIM_9E}"},
	{CLSID = "{RM_AIM_9Q}"},
	{CLSID = "{RM_AIM_7D}"},
	{CLSID = "{RM_AIM_7G}"},
	{CLSID = "{RM_AIM_7Q}"},

	{CLSID = "{AIM_132}"},
	{CLSID = "{AIM_120C_7}"},
	{CLSID = "{AIM-120D}"},

	{CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}"}, -- MK1
	{CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}"}, -- MK5
	{CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}"}, -- MK61
	{CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"}, -- M151
	{CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}"}, -- M156
	{CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}"}, -- M257
	{CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}"}, -- M274
	{CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}"}, -- WTU1B
	{CLSID = "{LAU-131 - 7 AGR-20A}"},					-- M151 APKWS
	{CLSID = "{LAU-131 - 7 AGR-20 M282}"},				-- M282 APKWS

	{CLSID = "{RM_AGM_87}"},
}

local Centerline = {
	{CLSID = "LAU-115_2*LAU-127_AIM-9L"},				-- AIM-9L *2
	{CLSID = "LAU-115_2*LAU-127_AIM-9M"},				-- AIM-9M *2
	{CLSID = "LAU-115_2*LAU-127_AIM-9X"},				-- AIM-9X *2
	{CLSID = "LAU-115_2*LAU-127_CATM-9M"},				-- CATM-9M *2

	{CLSID = "LAU-115_2*LAU-127_AIM-120B"},				-- AIM-120B *2
	{CLSID = "LAU-115_2*LAU-127_AIM-120C"},				-- AIM-120C *2

	{CLSID = "{AGM-154A}", arg_increment = 1.0},								-- AGM-154A
	{CLSID = "{AGM-154B}", arg_increment = 1.0},								-- AGM-154B
	{CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}", arg_increment = 1.0},	-- AGM-154C

	{CLSID = "LAU_117_AGM_65A"},						-- AGM-65A
	{CLSID = "LAU_117_AGM_65B"},						-- AGM-65B
	{CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"},	-- AGM-65D
	{CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}"},	-- AGM-65E
	{CLSID = "LAU_117_AGM_65F"},						-- AGM-65F
	{CLSID = "LAU_117_AGM_65G"},						-- AGM-65G
	{CLSID = "LAU_117_AGM_65H"},						-- AGM-65H
	{CLSID = "LAU_117_AGM_65L"},						-- AGM-65L
	{CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"},	-- AGM-65K
	{CLSID = "{DAC53A2F-79CA-42FF-A77A-F5649B601308}"},	-- AGM-65D*3
	{CLSID = "LAU_88_AGM_65H_3"},						-- AGM-65H*3
	{CLSID = "LAU_117_CATM_65K"},						-- CATM-65K
	{CLSID = "LAU_117_TGM_65D"},						-- TGM-65D
	{CLSID = "LAU_117_TGM_65G"},						-- TGM-65G
	{CLSID = "LAU_117_TGM_65H"},						-- TGM-65H

	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},	-- Mk-82
	{CLSID = "{Mk82AIR}"},								-- Mk-82AIR
	{CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}"},	-- Mk-83
	{CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"},	-- Mk-84
	{CLSID = "{Mk_84AIR_GP}"},							-- Mk-84AIR GP
	{CLSID = "{Mk_84AIR_TP}"},							-- Mk-84AIR TP

	{CLSID = "{CBU-52B}"},								-- CBU-52
	{CLSID = "{CBU-87}"},								-- CBU-87
	{CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"},	-- CBU-97
	{CLSID = "{CBU_103}"},								-- CBU-103
	{CLSID = "{CBU_105}"},								-- CBU-105

	{CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"},	-- GBU-10
	{CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"},	-- GBU-12
	{CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}"},	-- GBU-16
	{CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}"},	-- GBU-24
	{CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"},	-- GBU-27
	{CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}"},	-- GBU-28
	{CLSID = "{GBU-31}"},								-- GBU-31(V)1/B
	{CLSID = "{GBU-31V3B}"},							-- GBU-31(V)3/B
	{CLSID = "{GBU_32_V_2B}"},							-- GBU-32
	{CLSID = "{GBU-38}"},								-- GBU-38
	{CLSID = "{GBU_54_V_1B}"},							-- GBU-54

	{CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}"},						-- BLU-107

	{CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SUU-25

	{CLSID = "BRU-42_3*BDU-33"},						-- BDU-33*3
	{CLSID = "{BDU-50LD}"},								-- BDU-50LD
	{CLSID = "{BDU-50HD}"},								-- BDU-50HD
	{CLSID = "{BDU-50LGB}"},							-- BDU-50LGB

	{CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}"},	-- Mk-82*3
	{CLSID = "{BRU-42_3*Mk-82AIR}"},					-- Mk-82AIR*3

	{CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}"}, -- MK1
	{CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}"}, -- MK5
	{CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}"}, -- MK61
	{CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"}, -- M151
	{CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}"}, -- M156
	{CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}"}, -- M257
	{CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}"}, -- M274
	{CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}"}, -- WTU1B
	{CLSID = "{LAU-131 - 7 AGR-20A}"},					-- M151 APKWS
	{CLSID = "{LAU-131 - 7 AGR-20 M282}"},				-- M282 APKWS

	{CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}"},	-- F15-PTB

	{CLSID = "{D1744B93-2A8A-4C4D-B004-7A09CD8C8F3F}"},	-- AAQ-25
	{CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}"},	-- AAQ-28
	{CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}"},	-- ALQ-131
	{CLSID = "{ALQ_164_RF_Jammer}"},					-- ALQ-164
	{CLSID = "ALQ_184"},								-- ALQ-184
	{CLSID = "ALQ_184_Long"},							-- ALQ-184L
	{CLSID = "{1C2B16EB-8EB0-43de-8788-8EBB2D70B8BC}"},	-- ASQ-173
	{CLSID = "{AN_ASQ_213}"},							-- ASQ-213
	{CLSID = "{AN_ASQ_228}"},							-- ASQ-228
	{CLSID = "{199D6D51-1764-497E-9AE5-7D07C8D4D87E}"},	-- AVQ-26
	{CLSID = "{AWW-13}"},								-- AWW-13
	{CLSID = "MXU-648-TP"},								-- MXU-648

	{CLSID = "LAU-105"},								-- LAU-105

	{CLSID = "{RM_AIM_23}"},
	{CLSID = "{RM_IRIS_T}"},
	{CLSID = "{RM_AAM_4}"},
	{CLSID = "{RM_AIM_120A}"},
	{CLSID = "{RM_CATM_120C}"},
	{CLSID = "{RM_CATM_9X}"},
	{CLSID = "{RM_AIM_7G}"},
	{CLSID = "{RM_AIM_7Q}"},

	{CLSID = "{RM_AGM_78}"},
	{CLSID = "{RM_AGM_130}"},
	{CLSID = "{RM_GBU_15}"},
	{CLSID = "{RM_Mk_77}"},
	{CLSID = "{RM_Mk_40}"},
	{CLSID = "{RM_AGM_87}"},

	{CLSID = "{RM_ALQ_99}"},
	{CLSID = "{RM_ALQ_218}"},
	{CLSID = "{RM_AAQ_33}"},
	{CLSID = "{RM_AAQ_13}"},
	{CLSID = "{RM_AXQ_14}"},

	{CLSID = "{TER_9A_3*MK-81}"},
	{CLSID = "{TER_9A_3*Mk-83}"},
	{CLSID = "{TER_9A_3*Mk-20}"},
	{CLSID = "{TER_9A_3*M117}"},
	{CLSID = "{TER_9A_3*CBU-52B}"},


	{CLSID = "{BRU41_6X_MK-81}"},
	{CLSID = "{BRU41_6X_MK-20}"},
	{CLSID = "{BRU41_6X_MK-82SNAKEYE}"},
	{CLSID = "{BRU41_6X_M117}"},
	{CLSID = "{BRU41_6X_CBU-52B}"},
	{CLSID = "{BRU41_6X_CBU-87}"},
	{CLSID = "{BRU41_6X_CBU-97}"},

	{CLSID = "{JAS39_BRIMSTONE}"},
	{CLSID = "{BRU_61_4X_GBU_39}"},
	{CLSID = "{GBU_49}"},
}

local CFT_A = {
	{CLSID = "{AIM-9L}"},								-- AIM-9L
	{CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}"},	-- AIM-9M
	{CLSID = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}"},	-- AIM-9X

	{CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"},	-- AGM-65D
	{CLSID = "LAU_117_AGM_65G" },						-- AGM-65G
	{CLSID = "LAU_117_AGM_65H" },						-- AGM-65H
	{CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"},	-- AGM-65K
	{CLSID = "LAU_117_CATM_65K"},						-- CATM-65K
	{CLSID = "LAU_117_TGM_65D"},						-- TGM-65D
	{CLSID = "LAU_117_TGM_65G"},						-- TGM-65G
	{CLSID = "LAU_117_TGM_65H"},						-- TGM-65H

	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},	-- Mk-82
	{CLSID = "{Mk82AIR}"},								-- Mk-82AIR
	{CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}"},	-- Mk-83
	{CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"},	-- Mk-84
	{CLSID = "{Mk_84AIR_GP}"},							-- Mk-84AIR GP
	{CLSID = "{Mk_84AIR_TP}"},							-- Mk-84AIR TP

	{CLSID = "{CBU-52B}"},								-- CBU-52
	{CLSID = "{CBU-87}"},								-- CBU-87
	{CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"},	-- CBU-97
	{CLSID = "{CBU_103}"},								-- CBU-103
	{CLSID = "{CBU_105}"},								-- CBU-105

	{CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"},	-- GBU-10
	{CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"},	-- GBU-12
	{CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}"},	-- GBU-16
	{CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}"},	-- GBU-24
	{CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"},	-- GBU-27
	{CLSID = "{GBU-31}"},								-- GBU-31(V)1/B
	{CLSID = "{GBU-31V3B}"},							-- GBU-31(V)3/B
	{CLSID = "{GBU_32_V_2B}"},							-- GBU-32
	{CLSID = "{GBU-38}"},								-- GBU-38
	{CLSID = "{GBU_54_V_1B}"},							-- GBU-54

	{CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}"},						-- BLU-107

	{CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SUU-25

	{CLSID = "BRU-42_3*BDU-33"},						-- BDU-33*3
	{CLSID = "{BDU-50LD}"},								-- BDU-50LD
	{CLSID = "{BDU-50HD}"},								-- BDU-50HD
	{CLSID = "{BDU-50LGB}"},							-- BDU-50LGB

	{CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}"}, -- MK1
	{CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}"}, -- MK5
	{CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}"}, -- MK61
	{CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"}, -- M151
	{CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}"}, -- M156
	{CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}"}, -- M257
	{CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}"}, -- M274
	{CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}"}, -- WTU1B
	{CLSID = "{LAU-131 - 7 AGR-20A}"},					-- M151 APKWS
	{CLSID = "{LAU-131 - 7 AGR-20 M282}"},				-- M282 APKWS

	{CLSID = "{RM_Mk_77}"},
	{CLSID = "{RM_Mk_40}"},
	{CLSID = "{RM_AGM_87}"},

	{CLSID = "{JAS39_BRIMSTONE}"},
	{CLSID = "{BRU_61_4X_GBU_39}"},
	{CLSID = "{GBU_49}"},
}

local CFT_B = {
	{CLSID = "{AIM-9L}"},								-- AIM-9L
	{CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}"},	-- AIM-9M
	{CLSID = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}"},	-- AIM-9X

	{CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"},	-- AGM-65D
	{CLSID = "LAU_117_AGM_65G" },						-- AGM-65G
	{CLSID = "LAU_117_AGM_65H" },						-- AGM-65H
	{CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"},	-- AGM-65K
	{CLSID = "LAU_117_CATM_65K"},						-- CATM-65K
	{CLSID = "LAU_117_TGM_65D"},						-- TGM-65D
	{CLSID = "LAU_117_TGM_65G"},						-- TGM-65G
	{CLSID = "LAU_117_TGM_65H"},						-- TGM-65H

	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},	-- Mk-82
	{CLSID = "{Mk82AIR}"},								-- Mk-82AIR

	{CLSID = "{CBU-52B}"},								-- CBU-52
	{CLSID = "{CBU-87}"},								-- CBU-87
	{CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"},	-- CBU-97
	{CLSID = "{CBU_103}"},								-- CBU-103
	{CLSID = "{CBU_105}"},								-- CBU-105

	{CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"},	-- GBU-12
	{CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}"},	-- GBU-16
	{CLSID = "{GBU_32_V_2B}"},							-- GBU-32
	{CLSID = "{GBU-38}"},								-- GBU-38
	{CLSID = "{GBU_54_V_1B}"},							-- GBU-54

	{CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}"},						-- BLU-107

	{CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SUU-25

	{CLSID = "BRU-42_3*BDU-33"},						-- BDU-33*3
	{CLSID = "{BDU-50LD}"},								-- BDU-50LD
	{CLSID = "{BDU-50HD}"},								-- BDU-50HD
	{CLSID = "{BDU-50LGB}"},							-- BDU-50LGB

	{CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}"}, -- MK1
	{CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}"}, -- MK5
	{CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}"}, -- MK61
	{CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"}, -- M151
	{CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}"}, -- M156
	{CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}"}, -- M257
	{CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}"}, -- M274
	{CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}"}, -- WTU1B
	{CLSID = "{LAU-131 - 7 AGR-20A}"},					-- M151 APKWS
	{CLSID = "{LAU-131 - 7 AGR-20 M282}"},				-- M282 APKWS

	{CLSID = "{RM_Mk_77}"},
	{CLSID = "{RM_Mk_40}"},

	{CLSID = "{JAS39_BRIMSTONE}"},
	{CLSID = "{BRU_61_4X_GBU_39}"},
	{CLSID = "{GBU_49}"},
}

local CFT_C = {
	{CLSID = "{AIM-9B}", arg_increment = 1.0},									-- AIM-9B
	{CLSID = "{AIM-9J}", arg_increment = 1.0},									-- AIM-9J
	{CLSID = "{AIM-9L}", arg_increment = 1.0},									-- AIM-9L
	{CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_increment = 1.0},	-- AIM-9M
	{CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_increment = 1.0},	-- AIM-9P
	{CLSID = "{AIM-9P5}", arg_increment = 1.0},									-- AIM-9P5
	{CLSID = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}", arg_increment = 1.0},	-- AIM-9X

	{CLSID = "{AIM-7E}", arg_increment = 1.0},									-- AIM-7E
	{CLSID = "{AIM-7F}", arg_increment = 1.0},									-- AIM-7F
	{CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}", arg_increment = 1.0},	-- AIM-7M
	{CLSID = "{AIM-7H}", arg_increment = 1.0},									-- AIM-7MH
	{CLSID = "{AIM-7P}", arg_increment = 1.0},									-- AIM-7P

	{CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}", arg_increment = 1.0},	-- AIM-120B
	{CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}", arg_increment = 1.0},	-- AIM-120C

	{CLSID = "{AGM-154A}", arg_increment = 1.0},								-- AGM-154A
	{CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}", arg_increment = 1.0},	-- AGM-154C

	{CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"},	-- AGM-65D
	{CLSID = "LAU_117_AGM_65G"},						-- AGM-65G
	{CLSID = "LAU_117_AGM_65H"},						-- AGM-65H
	{CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"},	-- AGM-65K
	{CLSID = "{DAC53A2F-79CA-42FF-A77A-F5649B601308}"},	-- AGM-65D*3
	{CLSID = "LAU_88_AGM_65H_3"},						-- AGM-65H*3
	{CLSID = "LAU_117_CATM_65K"},						-- CATM-65K
	{CLSID = "LAU_117_TGM_65D"},						-- TGM-65D
	{CLSID = "LAU_117_TGM_65G"},						-- TGM-65G
	{CLSID = "LAU_117_TGM_65H"},						-- TGM-65H

	{CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"},	-- Mk-82
	{CLSID = "{Mk82AIR}"},								-- Mk-82AIR
	{CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}"},	-- Mk-83
	{CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"},	-- Mk-84
	{CLSID = "{Mk_84AIR_GP}"},							-- Mk-84AIR GP
	{CLSID = "{Mk_84AIR_TP}"},							-- Mk-84AIR TP

	{CLSID = "{CBU-52B}"},								-- CBU-52
	{CLSID = "{CBU-87}"},								-- CBU-87
	{CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"},	-- CBU-97
	{CLSID = "{CBU_103}"},								-- CBU-103
	{CLSID = "{CBU_105}"},								-- CBU-105

	{CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"},	-- GBU-10
	{CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"},	-- GBU-12
	{CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}"},	-- GBU-16
	{CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}"},	-- GBU-24
	{CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"},	-- GBU-27
	{CLSID = "{GBU-31}"},								-- GBU-31(V)1/B
	{CLSID = "{GBU-31V3B}"},							-- GBU-31(V)3/B
	{CLSID = "{GBU_32_V_2B}"},							-- GBU-32
	{CLSID = "{GBU-38}"},								-- GBU-38
	{CLSID = "{GBU_54_V_1B}"},							-- GBU-54

	{CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}"},						-- BLU-107

	{CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SUU-25

	{CLSID = "BRU-42_3*BDU-33"},						-- BDU-33*3
	{CLSID = "{BDU-50LD}"},								-- BDU-50LD
	{CLSID = "{BDU-50HD}"},								-- BDU-50HD
	{CLSID = "{BDU-50LGB}"},							-- BDU-50LGB

	{CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}"}, -- MK1
	{CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}"}, -- MK5
	{CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}"}, -- MK61
	{CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}"}, -- M151
	{CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}"}, -- M156
	{CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}"}, -- M257
	{CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}"}, -- M274
	{CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}"}, -- WTU1B
	{CLSID = "{LAU-131 - 7 AGR-20A}"},					-- M151 APKWS
	{CLSID = "{LAU-131 - 7 AGR-20 M282}"},				-- M282 APKWS

	{CLSID = "{RM_AGM_78}"},
	{CLSID = "{RM_AGM_130}"},
	{CLSID = "{RM_GBU_15}"},
	{CLSID = "{RM_Mk_77}"},
	{CLSID = "{RM_Mk_40}"},
	{CLSID = "{RM_AGM_87}"},

	{CLSID = "{RM_ALQ_99}"},
	{CLSID = "{RM_ALQ_218}"},
	{CLSID = "{RM_AAQ_33}"},
	{CLSID = "{RM_AAQ_13}"},
	{CLSID = "{RM_AXQ_14}"},

	{CLSID = "{JAS39_BRIMSTONE}"},
	{CLSID = "{BRU_61_4X_GBU_39}"},
	{CLSID = "{GBU_49}"},
}

F15E_RM = {
	Name			= "F-15E_RM_AG",
	DisplayName		= _("F-15E RM (A/G)"),
	Picture			= "F-15E.png",
	Rate			= "50",
	Shape			= "F-15E_RM",
	WorldID			=  WSTYPE_PLACEHOLDER,
	mapclasskey		= "P0091000024",
	country_of_origin = "USA",
	input_profile_entry		= "F-15E_RM_AG",
	shape_table_data = {
		{
			file				= "F-15E_RM",
			life				= 20,
			vis					= 3,
			desrt				= "F-15E_RM_destr",
			fire				= {300, 2},
			username			= "F-15E_RM",
			index				= WSTYPE_PLACEHOLDER,
			classname			= "lLandPlane",
			positioning			= "BYNORMAL",
			drawonmap			= true;
		},
		{
			name = "F-15E_RM_destr",
			file = "f-15-oblomok",
			fire = {240, 2},
		},
	}, -- end of shape_table_data

	M_empty							= 13380,	-- Empty weight (kg)
	M_nominal						= 19000,
	M_max							= 30845,
	M_fuel_max						= 5443,
	H_max							= 18300,
	average_fuel_consumption		= 0.271,

	has_afteburner					= true,
	has_speedbrake					= true,
	has_differential_stabilizer		= false,
	radar_can_see_ground			= true,
	EPLRS							= true,
	TACAN_AA						= true,
	is_tanker						= false,
	bigParkingRamp					= false,
	dataCartridge					= true,
	HumanCockpit					= true,
	Waypoint_Panel					= true,
	Navpoint_Panel					= true,
	Fixpoint_Panel					= true,

	length							= 19.43,	-- Length (m)
	height							= 5.63,
	wing_area						= 56.5,
	wing_span						= 13.05,
	wing_type						= 0,
	wing_tip_pos					= {-3.900,	 0.200,	 6.600},
	air_refuel_receptacle_pos		= { 1.390,	 0.410,	-1.660},
	nose_gear_pos					= { 4.590,	-2.523,	 0.000},
	main_gear_pos					= {-0.800,	-2.456,	 1.425},
	nose_gear_wheel_diameter		= 0.754,
	main_gear_wheel_diameter		= 0.972,
	tand_gear_max					= 1.732,

	nose_gear_amortizer_direct_stroke			=  0.000,	-- Nose Gear Strut Expansion
	main_gear_amortizer_direct_stroke			=  0.000,
	nose_gear_amortizer_normal_weight_stroke	= -0.215,
	main_gear_amortizer_normal_weight_stroke	= -0.114,
	nose_gear_amortizer_reversal_stroke			= -0.430,
	main_gear_amortizer_reversal_stroke			= -0.228,

	thrust_sum_max					= 16112,
	thrust_sum_ab					= 26451,
	IR_emission_coeff				= 0.85,
	IR_emission_coeff_ab			= 4.25,

	brakeshute_name					= 0,
	RCS								= 5,
	detection_range_max				= 335,
	tanker_type						= 1,
	stores_number					= 12,
	engines_count					= 2,
	crew_size						= 2,

--	=============================================== for AI ===============================================
	CAS_min							= 58.0,
	V_opt							= 220,
	V_take_off						= 61.0,
	V_land							= 71.0,
	V_max_sea_level					= 403,
	V_max_h							= 736.11,
	Vy_max							= 275,
	Mach_max						= 2.5,
	AOA_take_off					= 0.16,
	bank_angle_max					= 60.0,
	Ny_min							= -3.00,
	Ny_max							= 8.00,
	Ny_max_e						= 8.00,
	range							= 2540,
	flaps_maneuver					= 1,
--	=============================================== for AI End ===============================================

	attribute = {
		wsType_Air,
		wsType_Airplane,
		wsType_Fighter,
		WSTYPE_PLACEHOLDER,
		"Fighters",
		"Refuelable",
		"Datalink",
		"Link16"
	}, -- end of attribute

	Categories = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"},

	mechanimations = {
		CrewLadder = {
			{
				Flags = {"Reversible"},
				Sequence = {
					{C = {{"Arg", 91, "to", 0.9, "in", 1.5}}},
					{C = {{"Sleep", "for", 5}}}
				},
				Transition = {"Dismantle", "Erect"}
			},
			{
				Flags = {"Reversible", "StepsBackwards"},
				Sequence = {
					{C = {{"Arg", 91, "to", 0, "in", 2.7}}},
					{C = {{"Sleep", "for", 0}}}
				},
				Transition = {"Erect", "Dismantle"}
			}
		}, -- end of CrewLadder
		Door0 = {
			{
				Flags = {"Reversible"},
				Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08}}}},
				Transition = {"Close", "Open"}
			},
			{
				Flags = {"Reversible", "StepsBackwards"},
				Sequence = {{C = {{"Arg", 38, "to", 0, "in", 6.743}}}},
				Transition = {"Open", "Close"}
			},
			{
				Sequence = {{C = {{"JettisonCanopy", 0}}}},
				Transition = {"Any", "Bailout"}
			}
		}, -- end of Door0
		Door1 = {DuplicateOf = "Door0"}
	}, -- end of mechanimations

	SpecificCallnames = {
		USA = {
			{"Dude", "Dude"},
			{"Thud", "Thud"},
			{"Gunny", "Gunny"},
			{"Mad", "Mad"},
			{"Trek", "Trek"},
			{"Sniper", "Sniper"},
			{"Sled", "Sled"},
			{"Best", "Best"},
			{"Jazz", "Jazz"},
			{"Rage", "Rage"},
			{"Tahoe", "Tahoe"}
		} -- end of USA
	}, -- end of SpecificCallnames

	engines_nozzles = {
		[1] = {
			diameter			= 1.076,
			elevation			= 0.0,
			azimuth				= 0.0,
			exhaust_length_ab	= 9.0,
			exhaust_length_ab_K	= 0.76,
			pos					= {-6.751, 0.067, -0.705},
			smokiness_level		= 0.1
		}, -- end of [1]
		[2] = {
			diameter			= 1.076,
			elevation			= 0.0,
			azimuth				= 0.0,
			exhaust_length_ab	= 9.0,
			exhaust_length_ab_K	= 0.76,
			pos					= {-6.751, 0.067, 0.705},
			smokiness_level		= 0.1
		} -- end of [2]
	}, -- end of engines_nozzles

	crew_members = {
		[1] = {
			drop_canopy_name	= "F-15-FONAR",
			ejection_seat_name	= "PILOT_ACER",
			pilot_name			= "PILOT_PARASHUT_US",
			canopy_arg			= 38,
			pos					= {6.277, 1.198, 0},
			role				= "pilot",
			role_display_name	= "Pilot"
		}, -- end of [1]
		[2] = {
			pilot_body_arg		= 472,
			drop_canopy_name	= "F-15-FONAR",
			ejection_seat_name	= "PILOT_ACER",
			pilot_name			= "PILOT_PARASHUT_US",
			canopy_arg = 38,
			pos = { 4.327, 1.198, 0 },
			role = "copilot",
			role_display_name = "Copilot"
		}, -- end of [2]
	}, -- end of crew_members

	fires_pos = {
		[1] =	{-1.842,	0.563,		 0.000},
		[2] =	{-1.644,	0.481,		 2.870},
		[3] =	{-1.389,	0.461,		-3.232},
		[4] =	{-0.820,	0.265,		 2.774},
		[5] =	{-0.820,	0.265,		-2.774},
		[6] =	{-0.820,	0.255,		 4.274},
		[7] =	{-0.820,	0.255,		-4.274},
		[8] =	{-5.753,	0.060,		 0.705},
		[9] =	{-5.753,	0.060,		-0.705},
		[10] =	{-0.992,	0.850,		 0.000},
		[11] =	{-1.683,	0.507,		-2.910},
	}, -- end of fires_pos

	effects_presets = {
		{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/Overwing_Vapor.lua"},
	}, -- end of effects_presets

	chaff_flare_dispenser = {
		[1] = {
			dir = {0.0, -1.0, 0.0},
			pos = {1.158, -1.770, -0.967}
		}, -- end of [1]
		[2] = {
			dir = {0.0, -1.0, 0.0},
			pos = {1.158, -1.77, 0.967}
		} -- end of [2]
	}, -- end of chaff_flare_dispenser

	passivCounterm = {
		CMDS_Edit			= true,
		SingleChargeTotal	= 240,
		chaff				= {default = 120,	increment = 30,	chargeSz = 1},
		flare				= {default = 60,	increment = 15,	chargeSz = 2}
	}, -- end of passivCounterm

	CanopyGeometry = {
		azimuth		= {-145.0, 145.0},	-- Pilot View horizontal (AI)
		elevation	= {-50.0, 90.0}		-- Pilot View vertical (AI)
	}, -- end of CanopyGeometry

	Sensors = {
		RADAR = "AN/APG-77",
		RWR = "AN/ALR-56",
		OPTIC = {"AN/AAQ-33_FLIR", "AN/AAQ-33_CCD"},
	}, -- end of Sensors

	Countermeasures = {
		ECM = "AN/ALQ-135",
		DISPENSER = "AN/ALE-47"	-- CMDS Type
	}, -- end of Countermeasures

	laserEquipment = {
		laserRangefinder = true
	}, -- end of laserEquipment

	Failures = {
		{id = "asc",		label = _("ASC"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "autopilot",	label = _("AUTOPILOT"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "hydro",		label = _("HYDRO"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "l_engine",	label = _("L-ENGINE"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "r_engine",	label = _("R-ENGINE"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "radar",		label = _("RADAR"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
	  --{id = "eos",		label = _("EOS"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
	  --{id = "helmet",		label = _("HELMET"),	enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "mlws",		label = _("MLWS"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "rws",		label = _("RWS"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "ecm",		label = _("ECM"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "hud",		label = _("HUD"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100},
		{id = "mfd",		label = _("MFD"),		enable = false,	hh = 0,	mm = 0,	mmint = 1,		prob = 100}
	}, -- end of Failures

	HumanRadio = {
		frequency		= 251.0,
		editable		= true,
		minFrequency	= 225.000,
		maxFrequency	= 399.975,
		modulation		= MODULATION_AM
	}, -- end of HumanRadio

	PanelRadio = {
		[1] = {
			name = _("R1 (UHF) AN/ARC-164"),
			range = {
				min = 225.0,
				max = 399.975,
				modulation = MODULATION_AM
			}, -- end of range
			channels = {
				[1] = {name = _("Channel 1"),		default = 251.0, connect = true},
				[2] = {name = _("Channel 2"),		default = 264.0},
				[3] = {name = _("Channel 3"),		default = 265.0},
				[4] = {name = _("Channel 4"),		default = 256.0},
				[5] = {name = _("Channel 5"),		default = 254.0},
				[6] = {name = _("Channel 6"),		default = 250.0},
				[7] = {name = _("Channel 7"),		default = 270.0},
				[8] = {name = _("Channel 8"),		default = 257.0},
				[9] = {name = _("Channel 9"),		default = 255.0},
				[10] = {name = _("Channel 10"),		default = 262.0},
				[11] = {name = _("Channel 11"),		default = 259.0},
				[12] = {name = _("Channel 12"),		default = 268.0},
				[13] = {name = _("Channel 13"),		default = 269.0},
				[14] = {name = _("Channel 14"),		default = 260.0},
				[15] = {name = _("Channel 15"),		default = 263.0},
				[16] = {name = _("Channel 16"),		default = 261.0},
				[17] = {name = _("Channel 17"),		default = 267.0},
				[18] = {name = _("Channel 18"),		default = 251.0},
				[19] = {name = _("Channel 19"),		default = 253.0},
				[20] = {name = _("Channel 20"),		default = 266.0},
			} -- end of channels
		}, -- end of [1]
		[2] = {
			name = _("R2 (UHF) AN/ARC-164"),
			range = {
				min = 225.0,
				max = 399.975,
				modulation = MODULATION_AM
			}, -- end of range
			channels = {
				[1] = {name = _("Channel 1"),		default = 251.0, connect = true},
				[2] = {name = _("Channel 2"),		default = 264.0},
				[3] = {name = _("Channel 3"),		default = 265.0},
				[4] = {name = _("Channel 4"),		default = 256.0},
				[5] = {name = _("Channel 5"),		default = 254.0},
				[6] = {name = _("Channel 6"),		default = 250.0},
				[7] = {name = _("Channel 7"),		default = 270.0},
				[8] = {name = _("Channel 8"),		default = 257.0},
				[9] = {name = _("Channel 9"),		default = 255.0},
				[10] = {name = _("Channel 10"),		default = 262.0},
				[11] = {name = _("Channel 11"),		default = 259.0},
				[12] = {name = _("Channel 12"),		default = 268.0},
				[13] = {name = _("Channel 13"),		default = 269.0},
				[14] = {name = _("Channel 14"),		default = 260.0},
				[15] = {name = _("Channel 15"),		default = 263.0},
				[16] = {name = _("Channel 16"),		default = 261.0},
				[17] = {name = _("Channel 17"),		default = 267.0},
				[18] = {name = _("Channel 18"),		default = 251.0},
				[19] = {name = _("Channel 19"),		default = 253.0},
				[20] = {name = _("Channel 20"),		default = 266.0},
			} -- end of channels
		}, -- end of [2]
	}, -- end of PanelRadio

	Guns = {
		gun_mount("M_61",
			{
				count				= 512,
				max_burst_length	= 512,
				rates				= {6000, 4200},
				recoil_coeff		= 1.0,
			},
			{
				muzzle_pos = {3.209, 0.372, 1.749},
				muzzle_pos_connector = "GUN_POINT",
				ejector_dir = {-2.0, -5.0, 0.0},
				ejector_pos = {-0.5, -0.5, 0.0},
				effects = {
					{
						name = "FireEffect",
						arg = 350,
						duration = 0.02,
						attenuation = 2,
						light_pos = {0.5, 0, 0}
					},
					{
						name = "SmokeEffect",
						gas_deflector = true,
						smoke_dir = {0, -3, 10}
					}
				}
			}
		) -- end of gun_mount
	}, -- end of Guns

	ammo_type_default = 1,
	ammo_type = {
		_("HEI High Explosive Incendiary"),
		_("HEI-T High Explosive Incendiary-Tracer"),
		_("AP Armor Piercing"),
		_("TP Target Practice-Tracer"),
		_("SAPHEI High Explosive Armor Piercing PGU"),
		_("TP Target Practice-Tracer PGU"),
	}, -- end of ammo_type

	Pylons = {
		pylon(1, 0, 0.660, -0.078, -3.325,
			{
				connector		= "Pylon1",
				use_full_connector_position = true,
				DisplayName		= "2A",
			},
			AAM
		),
		pylon(2, 0, -0.155, -0.343, -2.944,
			{
				connector		= "Pylon2",
				use_full_connector_position = true,
				DisplayName		= "2",
			},
			WING
		),
		pylon(3, 0, 0.660, -0.078, -2.563,
			{
				connector		= "Pylon3",
				use_full_connector_position = true,
				DisplayName		= "2B",
			},
			AAM
		),
		pylon(4, 1, -3.550, -0.600, -2.100,
			{
				connector		= "Pylon4",
				use_full_connector_position = true,
				DisplayName		= "LC4",
			},
			CFT_A
		),
		pylon(5, 1, -1.155, -0.753, -2.100,
			{
				connector		= "Pylon5",
				use_full_connector_position = true,
				DisplayName		= "LC5",
			},
			CFT_B
		),
		pylon(6, 1, 1.400, -0.770, -2.150,
			{
				connector		= "Pylon6",
				use_full_connector_position = true,
				DisplayName		= "LC6",
			},
			CFT_A
		),
		pylon(7, 1, -3.200, -0.880, -1.750,
			{
				connector		= "Pylon7",
				use_full_connector_position = true,
				DisplayName		= "LC1",
				arg				= 314,
				arg_value		= 0,
			},
			CFT_C
		),
		pylon(8, 1, -0.600, -1.100, -1.750,
			{
				connector		= "Pylon8",
				use_full_connector_position = true,
				DisplayName		= "LC2",
			},
			CFT_B
		),
		pylon(9, 1, 1.900, -1.100, -1.750,
			{
				connector		= "Pylon9",
				use_full_connector_position = true,
				DisplayName		= "LC3",
				arg				= 316,
				arg_value		= 0,
			},
			CFT_C
		),
		pylon(10, 0, 0.184, -1.0300, 0.000,
			{
				connector		= "Pylon10",
				use_full_connector_position = true,
				DisplayName		= "5",
			},
			Centerline
		),
		pylon(11, 1, -3.200, -0.880, 1.750,
			{
				connector		= "Pylon11",
				use_full_connector_position = true,
				DisplayName		= "RC1",
				arg				= 318,
				arg_value		= 0,
			},
			CFT_C
		),
		pylon(12, 1, -0.600, -1.100, 1.750,
			{
				connector		= "Pylon12",
				use_full_connector_position = true,
				DisplayName		= "RC2",
			},
			CFT_B
		),
		pylon(13, 1, 1.900, -1.100, 1.750,
			{
				connector		= "Pylon13",
				use_full_connector_position = true,
				DisplayName		= "RC3",
				arg				= 320,
				arg_value		= 0,
			},
			CFT_C
		),
		pylon(14, 1, -3.550, -0.600, 2.100,
			{
				connector		= "Pylon14",
				use_full_connector_position = true,
				DisplayName		= "RC4",
			},
			CFT_A
		),
		pylon(15, 1, -1.155, -0.753, 2.100,
			{
				connector		= "Pylon15",
				use_full_connector_position = true,
				DisplayName		= "RC5",
			},
			CFT_B
		),
		pylon(16, 1, 1.400, -0.770, 2.150,
			{
				connector		= "Pylon16",
				use_full_connector_position = true,
				DisplayName		= "RC6",
			},
			CFT_A
		),
		pylon(17, 0, 0.660, -0.078, 2.563,
			{
				connector		= "Pylon17",
				use_full_connector_position = true,
				DisplayName		= "8A",
			},
			AAM
		),
		pylon(18, 0, -0.155, -0.343, 2.944,
			{
				connector		= "Pylon18",
				use_full_connector_position = true,
				DisplayName		= "8",
			},
			WING
		),
		pylon(19, 0, 0.660, -0.078, 3.325,
			{
				connector		= "Pylon19",
				use_full_connector_position = true,
				DisplayName		= "8B",
			},
			AAM
		),
	}, -- end of Pylons

	Tasks = {
		aircraft_task(CAP),
		aircraft_task(Escort),
		aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
		aircraft_task(GroundAttack),
		aircraft_task(CAS),
		aircraft_task(AFAC),
		aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
	}, -- end of Tasks
	DefaultTask = aircraft_task(GroundAttack),

	net_animation = { -- Add Model Draw Args for Network Transmitting to This draw_args Table. (16 limit)
		2,		-- NWS
		25,		-- Hook
		89,		-- Nozzle Left
		90,		-- Nozzle Right
		274,	-- Intake Left
		275,	-- Intake Right
	}, -- end of net_animation

	SFM_Data = {
		aerodynamics = {
			Cy0				= 0,
			Mzalfa			= 6,
			Mzalfadt		= 1,
			kjx				= 2.95,
			kjz				= 0.00125,
			Czbe			= -0.016,
			cx_gear			= 0.0268,
			cx_flap			= 0.050,
			cy_flap			= 0.520,
			cx_brk			= 0.060,
			table_data = {
			--		M	 Cx0		 Cya		 B		 B4		  Omxmax	Aldop	Cymax
				{0.0,	0.0151,		0.070,		0.134,		0.056,	0.50,	30.0,	1.100},
				{0.2,	0.0154,		0.070,		0.134,		0.056,	1.50,	30.0,	1.100},
				{0.4,	0.0156,		0.070,		0.129,		0.055,	2.50,	30.0,	1.100},
				{0.6,	0.0164,		0.073,		0.120,		0.047,	3.50,	30.0,	1.100},
				{0.7,	0.0172,		0.076,		0.105,		0.052,	3.50,	28.6,	1.090},
				{0.8,	0.0201,		0.079,		0.110,		0.061,	3.50,	27.3,	1.082},
				{0.9,	0.0284,		0.083,		0.139,		0.067,	3.50,	26.0,	1.073},
				{1.0,	0.0387,		0.085,		0.174,		0.073,	3.50,	24.6,	1.064},
				{1.05,	0.0416,		0.085,		0.196,		0.077,	3.50,	24.0,	1.060},
				{1.1,	0.0445,		0.086,		0.219,		0.080,	3.15,	18.0,	1.040},
				{1.2,	0.0462,		0.083,		0.300,		0.066,	2.45,	17.0,	1.020},
				{1.3,	0.0454,		0.077,		0.344,		0.059,	1.75,	16.0,	1.000},
				{1.4,	0.0432,		0.069,		0.393,		0.055,	1.62,	18.5,	0.950},
				{1.5,	0.0429,		0.064,		0.450,		0.052,	1.50,	17.0,	0.900},
				{1.6,	0.0426,		0.057,		0.508,		0.049,	1.20,	16.5,	0.800},
				{1.7,	0.0415,		0.052,		0.615,		0.524,	0.90,	16.0,	0.700},
				{1.8,	0.0403,		0.046,		0.722,		1.000,	0.86,	16.4,	0.640},
				{2.2,	0.0377,		0.034,		1.000,		1.000,	0.70,	14.0,	0.400},
				{2.35,	0.0377,		0.033,		1.000,		1.000,	0.70,	14.0,	0.400},
				{3.9,	0.0377,		0.033,		1.000,		1.000,	0.70,	14.0,	0.400}
			} -- end of table_data
		}, -- end of aerodynamics
		engine = {
			Nmg			= 66.0,
			MinRUD		= 0.00,
			MaxRUD		= 1.00,
			MaksRUD		= 0.85,
			ForsRUD		= 0.91,
			type		= "TurboJet",
			hMaxEng		= 19.5,
			dcx_eng		= 0.0114,
			cemax		= 1.24,
			cefor		= 2.56,
			dpdh_m		= 8000,
			dpdh_f		= 17000.0,
			table_data = {
			--[[	 M		Pmax		 Pfor
				{0.0,	114330,		156000},
				{0.2,	108000,		160000},
				{0.4,	98000,		170000},
				{0.6,	105000,		181000},
				{0.7,	110000,		205000},
				{0.8,	118000,		220000},
				{0.9,	124000,		257000},
				{1.0,	130000,		272000},
				{1.1,	130000,		279000},
				{1.2,	125000,		283000},
				{1.3,	123000,		293000},
				{1.4,	130000,		302000},
				{1.6,	132000,		323000},
				{1.8,	128000,		348000},
				{2.2,	110000,		370000},
				{2.5,	82000,		392000},
				{3.9,	82000,		310000}
			]]
			--	 M		Pmax		 Pfor
				{0.0,	114330,		256000},
				{0.2,	108000,		260000},
				{0.4,	98000,		270000},
				{0.6,	105000,		281000},
				{0.7,	110000,		305000},
				{0.8,	118000,		320000},
				{0.9,	124000,		357000},
				{1.0,	130000,		372000},
				{1.1,	130000,		379000},
				{1.2,	125000,		383000},
				{1.3,	123000,		393000},
				{1.4,	130000,		402000},
				{1.6,	132000,		423000},
				{1.8,	128000,		448000},
				{2.2,	110000,		470000},
				{2.5,	82000,		492000},
				{3.9,	82000,		410000}
			}, -- end of table_data
		} -- end of engine
	}, -- end of SFM_Data

	Damage = { -- Index meaning see in Scripts\Aircrafts\_Common\Damage.lua
		[0]		= {critical_damage = 5,		args = {146}},									-- NOSE_CENTER
		[1]		= {critical_damage = 3,		args = {296}},									-- NOSE_LEFT_SIDE
		[2]		= {critical_damage = 3,		args = {297}},									-- NOSE_RIGHT_SIDE
		[3]		= {critical_damage = 8,		args = { 65}},									-- COCKPIT
		[4]		= {critical_damage = 2,		args = {298}},									-- CABIN_LEFT_SIDE
		[5]		= {critical_damage = 2,		args = {301}},									-- CABIN_RIGHT_SIDE
		[7]		= {critical_damage = 2,		args = {249}},									-- GUN
		[8]		= {critical_damage = 3,		args = {265}},									-- GEAR_FRONT
		[9]		= {critical_damage = 3,		args = {154}},									-- FUSELAGE_LEFT_SIDE
		[10]	= {critical_damage = 3,		args = {153}},									-- FUSELAGE_RIGHT_SIDE
		[11]	= {critical_damage = 1,		args = {167}},									-- ENGINE_L_IN
		[12]	= {critical_damage = 1,		args = {161}},									-- ENGINE_R_IN
		[13]	= {critical_damage = 2,		args = {169}},									-- MTG_L_BOTTOM
		[14]	= {critical_damage = 2,		args = {163}},									-- MTG_R_BOTTOM
		[15]	= {critical_damage = 2,		args = {267}},									-- GEAR_L
		[16]	= {critical_damage = 2,		args = {266}},									-- GEAR_R
		[17]	= {critical_damage = 2,		args = {168}},									-- ENGINE_L_OUT
		[18]	= {critical_damage = 2,		args = {162}},									-- ENGINE_R_OUT
		[20]	= {critical_damage = 2,		args = {183}},									-- AIR_BRAKE_R
		[23]	= {critical_damage = 5,		args = {223}},									-- WING_L_OUT
		[24]	= {critical_damage = 5,		args = {213}},									-- WING_R_OUT
		[25]	= {critical_damage = 2,		args = {226}},									-- AILERON_L
		[26]	= {critical_damage = 2,		args = {216}},									-- AILERON_R
		[29]	= {critical_damage = 5,		args = {224},	deps_cells = {23, 25}},			-- WING_L_CENTER
		[30]	= {critical_damage = 5,		args = {214},	deps_cells = {24, 26}},			-- WING_R_CENTER
		[35]	= {critical_damage = 6,		args = {225},	deps_cells = {23, 29, 25, 37}},	-- WING_L_IN
		[36]	= {critical_damage = 6,		args = {215},	deps_cells = {24, 30, 26, 38}},	-- WING_R_IN
		[37]	= {critical_damage = 2,		args = {228}},									-- FLAP_L
		[38]	= {critical_damage = 2,		args = {218}},									-- FLAP_R
		[39]	= {critical_damage = 2,		args = {244},	deps_cells = {53}},				-- FIN_L_TOP
		[40]	= {critical_damage = 2,		args = {241},	deps_cells = {54}},				-- FIN_R_TOP
		[43]	= {critical_damage = 2,		args = {243},	deps_cells = {39, 53}},			-- FIN_L_BOTTOM
		[44]	= {critical_damage = 2,		args = {242},	deps_cells = {40, 54}},			-- FIN_R_BOTTOM
		[51]	= {critical_damage = 2,		args = {240}},									-- ELEVATOR_L
		[52]	= {critical_damage = 2,		args = {238}},									-- ELEVATOR_R
		[53]	= {critical_damage = 2,		args = {248}},									-- RUDDER_L
		[54]	= {critical_damage = 2,		args = {247}},									-- RUDDER_R
		[56]	= {critical_damage = 2,		args = {158}},									-- TAIL_LEFT_SIDE
		[57]	= {critical_damage = 2,		args = {157}},									-- TAIL_RIGHT_SIDE
		[59]	= {critical_damage = 3,		args = {148}},									-- NOSE_BOTTOM
		[61]	= {critical_damage = 2,		args = {147}},									-- FUEL_TANK_LEFT_SIDE
		[82]	= {critical_damage = 2,		args = {152}},									-- FUSELAGE_BOTTOM
		[83]	= {critical_damage = 2,		args = {134}},									-- WHEEL_F
		[84]	= {critical_damage = 3,		args = {135}},									-- WHEEL_R
		[85]	= {critical_damage = 3,		args = {136}},									-- WHEEL_L
	}, -- end of Damage

	DamageParts = {
		[1] = "F-15E-OBLOMOK-WING-R",	-- Wing R
		[2] = "F-15E-OBLOMOK-WING-L",	-- Wing L
	}, -- end of DamageParts

	lights_data = {
		typename = "collection",
		lights = {
			[WOLALIGHT_NAVLIGHTS] = {
				typename = "collection",
				lights = {
					{ -- Vtail (White)
						typename = "Argument",
						argument = 192,
						connector = "BANO_0",
					},-- end of Vtail

					{ -- Left Wing (Red)
						typename = "Argument",
						connector = "BANO_1",
						argument = 190,
						controller = "Strobe",
						power_up_t = 0.3,
						cool_down_t = 0.6,
						period = 1.0,
						flash_time = 0.7,
					}, -- end of Left Wing

					{ -- Right Wing (Green)
						typename = "Argument",
						connector = "BANO_2",
						argument = 191,
						controller = "Strobe",
						mode = 1,
						power_up_t = 0.3,
						cool_down_t = 0.6,
						period = 1.0,
						flash_time = 0.7,
					} -- end of Right Wing
				}, -- end of lights
			}, -- end of WOLALIGHT_NAVLIGHTS

			[WOLALIGHT_SPOTS] = {
				typename = "collection",
				lights = {
					{ -- Landing Light
						typename = "Argument",
						argument = 209,
						connector = "MAIN_SPOT_PTR",
					} -- end of Landing Light
				}, -- end of lights
			}, -- end of WOLALIGHT_SPOTS

			[WOLALIGHT_TAXI_LIGHTS] = {
				typename = "collection",
				lights = {
					{ -- Taxi Light
						typename = "Argument",
						argument = 208,
						connector = "MAIN_SPOT_PTR",
					} -- end of Taxi Light
				}, -- end of lights
			}, -- end of WOLALIGHT_TAXI_LIGHTS

			[WOLALIGHT_STROBES] = {
				typename = "collection",
				lights = {
					{ -- Anti-collision Light
						typename = "collection",
						lights = {
							{ -- Left
								typename = "Argument",
								connector = "RESERV1_BANO_1",
								dir_correction = {azimuth = math.rad(-55.0)},
								argument = 199,
								proto = lamp_prototypes.SMI_2KM,
								period = 1.33333,
								phase_shift = 0
							}, -- end of Left

							{ -- Right
								typename = "natostrobelight",
								connector = "RESERV_BANO_1",
								dir_correction = {azimuth = math.rad(55.0)},
								proto = lamp_prototypes.SMI_2KM,
								period = 1.33333,
								phase_shift = 0
							}, -- end of Right

							{ -- Tail
								typename = "Omni",
								connector = "RESERV2_BANO_1",
								proto = lamp_prototypes.SMI_2KM,
							}, -- end of Tail
						},
					} -- end of Anti-collision Light
				}, -- end of lights
			}, -- end of WOLALIGHT_STROBES

			[WOLALIGHT_FORMATION_LIGHTS] = {
				typename = "argumentlight",
				argument = 88,
			}, -- end of WOLALIGHT_FORMATION_LIGHTS
		} -- end of lights
	}, -- end of lights_data

	ColdStartDefaultControls = {
		[9]			=  1.0,
		[10]		=  1.0,
		[11]		= -0.2,
		[12]		= -0.2,
		[15]		= -1.0,
		[16]		= -1.0,
		[17]		=  0.5,
		[18]		= -0.5,
	} -- end of ColdStartDefaultControls

} -- end of F15E_RM

add_aircraft(F15E_RM)
