#include "islandspecific.hpp"

private ["_attackerPrimary", "_attackerMagazine", "_attackerGrenade", "_attackerSmoke", "_attackerColorSmoke", "_attackerAttachments", "_attackerHelm", "_attackerUniform", "_attackerVest", "_attackerBackpack", "_attackerGlobalBackpack", "_attackerGlasses", "_defenderPrimary", "_defenderMagazine", "_defenderGrenade", "_defenderSmoke", "_defenderColorSmoke", "_defenderAttachments", "_defenderSpecOpsAttachments", "_defenderMGAttachments", "_defenderMarksmanSight", "_defenderMarksmanNVSight", "_defenderMarksmanAttachments", "_defenderUniform", "_defenderHelm", "_attackerHandgun", "_attackerHandgunMagazine", "_attackerHandgunSuppressor", "_attackerMarksmanPrimary", "_attackerMarksmanScope", "_attackerMarksmanNVScope", "_attackerMarksmanAttachments", "_defenderBackpack", "_defenderWeakPrimary", "_defenderWeakMagazine", "_defenderGL", "_defenderGLMagazines", "_defenderMG", "_defenderMGMagazines", "_defenderVest", "_defenderSmallVest", "_attackerGL", "_attackerGLMagazines", "_attackerLMG", "_attackerLMGMagazines", "_attackerMG", "_attackerMGMagazines", "_attackerSR", "_attackerSRMagazine", "_attackerSRScope", "_attackerSRNVScope", "_attackerSniperUniform", "_attackerSniperHat", "_attackerGLVest", "_attackerMedicVest", "_attackerMGVest", "_attackerSuppressor", "_attackerHat", "_attackerHLauncher", "_attackerSMG", "_attackerSMGAttachments", "_attackerSMGMagazine", "_defenderSMG", "_defenderSMGAttachments", "_defenderSMGMagazine", "_defenderGlasses", "_attackerMGAttachments", "_attackerLMGAttachments", "_attackerLauncher", "_attackerAPRocket", "_attackerHATRocket", "_defenderLauncher", "_defenderATRocket", "_defenderAPRocket", "_defenderATRocket", "_defenderAPRocket", "_attackerLauncherAttachments", "_defenderLauncherAttachments","_defenderMarksmanPrimary"];

// Default equipment, overridden below by mods where needed.

defenderNVG = "NVGoggles_OPFOR";
attackerNVG = "NVGoggles_OPFOR";

_attackerPrimary = "arifle_MXM_Black_F";
_attackerMagazine = "30Rnd_65x39_caseless_mag";
_attackerGrenade = "HandGrenade";
_attackerSmoke = "SmokeShell";
_attackerColorSmoke = "SmokeShellGreen";

_attackerHandgun = "hgun_P07_F";
_attackerHandgunMagazine = "16Rnd_9x21_Mag";
_attackerHandgunSuppressor = "muzzle_snds_L";

_attackerMarksmanPrimary = "srifle_EBR_F";
_attackerMarksmanMagazine = "20Rnd_762x51_Mag";
_attackerMarksmanScope = "optic_Hamr";
_attackerMarksmanNVScope = "optic_NVS";
_attackerMarksmanAttachments = ["optic_DMS", "acc_pointer_IR", "muzzle_snds_B", "20Rnd_762x51_Mag"];

_attackerAttachments = ["optic_Hamr", "acc_pointer_IR", "muzzle_snds_H"];
if (nightVision == 0) then
{
	_attackerAttachments set [1, "acc_flashlight"];
};

_attackerSMG = "SMG_01_F";
_attackerSMGAttachments = ["optic_Holosight_smg", "muzzle_snds_acp"];
_attackerSMGMagazine = "30Rnd_45ACP_Mag_SMG_01";

_attackerGL = "arifle_MX_GL_F";
_attackerGLMagazines = [["30Rnd_65x39_caseless_mag", 11], ["1Rnd_SmokeGreen_Grenade_shell", 4], ["UGL_FlareWhite_F", if (nightVision == 0) then {8} else {0}], [_attackerHandgunMagazine, 3]];

_attackerLMG = "arifle_MX_SW_F";
_attackerLMGMagazines = ["100Rnd_65x39_caseless_mag", 4];
_attackerLMGAttachments = ["optic_Hamr", "acc_pointer_IR", "muzzle_snds_H_MG"];

_attackerMG = "LMG_Zafir_F";
_attackerMGMagazines = ["150Rnd_762x54_Box", 3];
_attackerMGAttachments = _attackerAttachments - [_attackerAttachments select 0];

_attackerSR = "srifle_DMR_03_F";
_attackerSRMagazine = "20Rnd_762x51_Mag";
_attackerSRScope = "optic_SOS";
_attackerSRNVScope = "optic_NVS";
_attackerSniperUniform = "U_B_CTRG_1";
_attackerSniperHat = "H_HelmetB";
_attackerSniperGlasses = "G_Balaclava_blk";

_attackerSuppressor = "muzzle_snds_H";

_attackerHat = "H_Booniehat_mcamo";

_attackerLauncher = "launch_RPG32_F";
_attackerAPRocket = "RPG32_HE_F";
_attackerLauncherAttachments = [];

_attackerHLauncher = "launch_B_Titan_short_F";
_attackerHATRocket = "Titan_AP";

_attackerHelm = "H_HelmetB";
_attackerUniform = "U_BG_Guerilla1_1";
_attackerVest = "V_PlateCarrier2_blk";
_attackerBackpack = "B_AssaultPack_mcamo";
_attackerGlobalBackpack = "";
_attackerGlasses = "G_Balaclava_blk";

_defenderUniform = "U_BG_Guerilla2_1";
_defenderHelm = "H_ShemagOpen_khk";
_defenderGlasses = "";
_defenderPrimary = "arifle_Katiba_F";
_defenderMagazine = "30Rnd_65x39_caseless_green";
_defenderGrenade = _attackerGrenade;
_defenderSmoke = "SmokeShell";
_defenderColorSmoke = "SmokeShellBlue";
_defenderWeakPrimary = "arifle_MX_GL_F";
_defenderWeakMagazine = "30Rnd_556x45_Stanag";

_defenderGL = "arifle_SPAR_02_blk_F";
_defenderGLMagazines = "150Rnd_556x45_Drum_Mag_F";
_defenderGLAttachments = ["muzzle_snds_M", "optic_Hamr"];
{
	
};
_defenderMG = "arifle_MX_SW_F";
_defenderMGMagazines = ["30Rnd_65x39_caseless_mag", 11 + defenderGearQuality];

_defenderVest = "V_PlateCarrierL_CTRG";
_defenderSmallVest = "V_PlateCarrierL_CTRG";
_defenderBackpack = "B_FieldPack_Cbr";
_defenderAttachments = ["optic_Hamr", "muzzle_snds_H"];

_defenderSpecOpsPrimary = "arifle_MXM_F";
_defenderSpecOpsMagazine = "30Rnd_65x39_caseless_mag";
_defenderSpecOpsAttachments = ["optic_Hamr", "acc_pointer_IR", "muzzle_snds_H"];

_defenderSMG = "SMG_01_F";
_defenderSMGAttachments = ["optic_Holosight_smg", "muzzle_snds_acp"];
_defenderSMGMagazine = "30Rnd_45ACP_Mag_SMG_01";

_defenderLauncher = _attackerLauncher;
_defenderATRocket = "RPG32_F";
_defenderAPRocket = _attackerAPRocket;
_defenderLauncherAttachments = [];

_defenderMGAttachments = ["optic_Hamr", "acc_pointer_IR", "muzzle_snds_H_MG"];

_defenderMarksmanPrimary = _defenderPrimary;
_defenderMarksmanSight = "Optic_ARCO";
_defenderMarksmanNVSight = "optic_NVS";
_defenderMarksmanAttachments = ["optic_Hamr", "muzzle_snds_H"];
if (nightVision > 1) then
{
	_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanNVSight];
};

if (defenderGearQuality > 0) then
{
	_defenderVest = "V_Chestrig_blk";
	
	_defenderSpecOpsAttachments = ["optic_Hamr", "acc_pointer_IR", "muzzle_snds_H"];
	
	_defenderAttachments = ["optic_Hamr", "muzzle_snds_H"];
	
	_defenderSMGAttachments = ["optic_ACO_grn_smg", "muzzle_snds_L"];
};

if (attackerFaction < 4) then
{
	attackerNVG = "rhsusf_ANPVS_14";
	if (nightVision > 1) then
	{
		attackerNVG = "rhsusf_ANPVS_15";
	};
	
	_attackerLauncher = "rhs_weap_rpg7";
	_attackerAPRocket = "rhs_rpg7_OG7V_mag";
	_attackerLauncherAttachments = ["rhs_acc_pgo7v"];
};

// IDF equipment.
if (attackerFaction == 0) then
{
	_attackerHelm = "IDF_Helmet_CQB_Golani";
	_attackerUniform = "IDF_Uniform";
	_attackerGlobalBackpack = "IDF_Backpack";
	_attackerBackpack = _attackerGlobalBackpack;
	_attackerVest = "IDF_Vest";
	_attackerPrimary = "idf_x95m";
	_attackerAttachments = [""];
	_attackerMarksmanPrimary = "idf_x95";
	_attackerMarksmanScope = "rhsusf_acc_ACOG2_USMC";
	_attackerMarksmanAttachments = [if (nightVision > 0) then {"optic_NVS"} else {_attackerMarksmanScope}];
	_attackerSMGAttachments = ["IDF_optic_Mars", "rhsusf_acc_anpeq15", "muzzle_snds_L"];
	if (nightVision == 0) then
	{
		_attackerAttachments set [1, "rhsusf_acc_anpeq15_light"];
		_attackerMarksmanAttachments set [1, "rhsusf_acc_anpeq15_light"];
		_attackerSMGAttachments set [1, "rhsusf_acc_anpeq15_light"];
	};
	
	_attackerMagazine = "30Rnd_556x45_Stanag";
	
	_attackerGL = "arifle_TRG21_black_GL_F";
	_attackerGLMagazines = [["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 4], ["UGL_FlareWhite_F", if (nightVision == 0) then {10} else {0}], [_attackerHandgunMagazine, 3]];
	
	_attackerSuppressor = "rhsusf_acc_nt4_black";
	_attackerSniperUniform = _attackerUniform;
	_attackerSR = "rhs_weap_XM2010";
	_attackerSRMagazine = "rhsusf_5Rnd_300winmag_xm2010";
	_attackerSRScope = "rhsusf_acc_LEUPOLDMK4";
	if (nightVision > 0) then
	{
		_attackerSRScope = _attackerSRNVScope;
	};
	
	_attackerHat = "IDF_Cap_Golani";
	_attackerSniperHat = _attackerHat;
	_attackerHLauncher = "launch_I_Titan_short_F";
};

_attackerGLVest = _attackerVest;
_attackerMedicVest = _attackerVest;
_attackerMGVest = _attackerVest;

// US equipment
if (attackerFaction == 1 || attackerFaction == 2) then
{
	_attackerUniform = "rhs_uniform_cu_ocp";
	_attackerHelm = "rhsusf_ach_helmet_headset_ocp";
	_attackerVest = "rhsusf_iotv_ocp_Rifleman";
	_attackerBackpack = "rhsusf_assault_eagleaiii_ocp";
	_attackerGlobalBackpack = _attackerBackpack;
	_attackerHat = "rhs_Booniehat_ocp";
	
	_attackerGLVest = "rhsusf_iotv_ocp_Grenadier";
	_attackerMedicVest = "rhsusf_iotv_ocp_Medic";
	_attackerMGVest = "rhsusf_iotv_ocp_SAW";
	
	_attackerSR = "rhs_weap_XM2010_sa";
	_attackerSRMagazine = "rhsusf_5Rnd_300winmag_xm2010";
	_attackerSRScope = "rhsusf_acc_LEUPOLDMK4";
	if (nightVision > 0) then
	{
		_attackerSRScope = _attackerSRNVScope;
	};
	
	if (attackerFaction == 2) then
	{
		_attackerUniform = "rhs_uniform_cu_ucp";
		_attackerHelm = "rhsusf_ach_helmet_headset_ucp";
		_attackerVest = "rhsusf_iotv_ucp_Rifleman";
		_attackerBackpack = "rhsusf_assault_eagleaiii_ucp";
		_attackerGlobalBackpack = _attackerBackpack;
		_attackerHat = "rhs_Booniehat_ucp";
		
		_attackerGLVest = "rhsusf_iotv_ucp_Grenadier";
		_attackerMedicVest = "rhsusf_iotv_ucp_Medic";
		_attackerMGVest = "rhsusf_iotv_ucp_SAW";
	};
	
	_attackerPrimary = "rhs_weap_m4a1_grip";
	_attackerMagazine = "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
	
	_attackerAttachments = ["rhsusf_acc_eotech_552", "rhsusf_acc_anpeq15"];
	
	_attackerMarksmanPrimary = "rhs_weap_m4a1_grip";
	_attackerMarksmanScope = "rhsusf_acc_ACOG";
	_attackerMarksmanAttachments = [if (nightVision > 0) then {_attackerMarksmanNVScope} else {_attackerMarksmanScope}, "rhsusf_acc_anpeq15"];
	
	_attackerLMG = "rhs_weap_m249_pip_S";
	_attackerLMGMagazines = ["rhsusf_200Rnd_556x45_soft_pouch", 3];
	_attackerLMGAttachments = ["rhsusf_acc_anpeq15side"];
	_attackerMG = "rhs_weap_m240B_CAP";
	_attackerMGMagazines = ["rhsusf_50Rnd_762x51", 6];
	_attackerMGAttachments = [""];
	
	if (nightVision == 0) then
	{
		_attackerAttachments set [1, "rhsusf_acc_anpeq15_light"];
		_attackerMarksmanAttachments set [1, "rhsusf_acc_anpeq15_light"];
	};
	
	_attackerSuppressor = "rhsusf_acc_nt4_black";
	_attackerSMGAttachments = _attackerAttachments + ["muzzle_snds_L"];
	
	_attackerGL = "rhs_m4a1_m320";
	_attackerGLMagazines = [["rhs_mag_M441_HE", 10], ["rhs_mag_m715_Green", 4], ["rhs_mag_M585_white", if (nightVision == 0) then {10} else {0}], [_attackerHandgunMagazine, 3]];
};

if (attackerFaction == 3) then
{
	_attackerUniform = "rhs_uniform_vdv_emr";
	_attackerHelm = "rhs_6b28";	
	_attackerVest = "rhs_6b23_digi_6sh92_headset";
	_attackerBackpack = "rhs_sidor";
	_attackerGlobalBackpack = "rhs_sidor";
	_attackerHat = "rhs_fieldcap_digi";
	
	_attackerMedicVest = "rhs_6b23_digi_medic";
	_attackerMGVest = _attackerVest;
	
	_attackerPrimary = "rhs_weap_ak74m";
	_attackerMagazine = "rhs_30Rnd_545x39_AK";
	_attackerGrenade = "rhs_mag_rgd5";
	_attackerSmoke = "rhs_mag_rdg2_white";
	_attackerColorSmoke = _attackerSmoke;
	_attackerHandgun = "rhs_weap_pya";
	_attackerHandgunMagazine = "rhs_mag_9x19_17";
	_attackerHandgunSuppressor = "";
	_attackerSuppressor = "rhs_acc_tgpa";
	_attackerAttachments = ["rhs_acc_ekp1"];
	_attackerLMGAttachments = _attackerAttachments;
	
	_attackerSMGAttachments = ["optic_Aco_smg", if (nightVision == 0) then {"acc_flashlight"} else {"acc_pointer_IR"}, "muzzle_snds_L"];
	
	_attackerGL = "rhs_weap_ak74m_gp25";
	_attackerGLMagazines = [["rhs_VOG25", 10], ["rhs_GRD40_Red", 4], ["rhs_VG40OP_white", if (nightVision == 0) then {10} else {0}], [_attackerHandgunMagazine, 3]];
	_attackerGLVest = "rhs_6b23_digi_6sh92_vog_headset";
	
	_attackerMarksmanPrimary = _attackerPrimary;
	_attackerMarksmanScope = "rhs_acc_pso1m2";
	_attackerMarksmanNVScope = "rhs_acc_1pn93_1";
	_attackerMarksmanAttachments = [if (nightVision > 0) then {_attackerMarksmanNVScope} else {_attackerMarksmanScope}];
	
	_attackerLMG = _attackerPrimary;
	_attackerLMGMagazines = ["rhs_45Rnd_545X39_AK", 7];
	_attackerMG = "rhs_weap_pkp";
	_attackerMGMagazines = ["rhs_100Rnd_762x54mmR", 3];
	
	_attackerSR = "rhs_weap_svdp";
	_attackerSRMagazine = "rhs_10Rnd_762x54mmR_7N1";
	_attackerSRScope = "rhs_acc_pso1m2";
	_attackerSRNVScope = "rhs_acc_1pn93_1";
	_attackerSniperUniform = _attackerUniform;
	_attackerSniperHat = _attackerHat;
	
	_attackerHLauncher = "launch_I_Titan_short_F";
};

if (defenderFaction == 1) then
{
	_defenderPrimary = "hlc_rifle_ak47";
	_defenderMagazine = "hlc_30Rnd_762x39_b_ak";
	_defenderWeakPrimary = "hlc_rifle_ak74";
	_defenderWeakMagazine = "hlc_30Rnd_545x39_B_AK";
	_defenderGL = "hlc_rifle_aks74_GL";
	_defenderGLMagazines = [["hlc_VOG25_AK", 4 + 2 * defenderGearQuality], ["hlc_GRD_blue", 3]];
	_defenderMG = "hlc_rifle_rpk";
	_defenderMGMagazines = ["hlc_75Rnd_762x39_m_rpk", 5];
	_defenderAttachments = if (nightVision >= 0) then {["acc_flashlight"]} else {[]};
	_defenderMGAttachments = _defenderAttachments;
	_defenderSpecOpsPrimary = _defenderPrimary;
	_defenderSpecOpsAttachments = _defenderAttachments + ["hlc_optic_kobra"];
	
	_defenderMarksmanPrimary = _defenderPrimary;
	_defenderMarksmanSight = "HLC_Optic_PSO1";
	_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanSight];
	if (nightVision > 1) then
	{
		_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanNVSight];
	};
	if (defenderGearQuality > 0) then
	{
		_defenderSpecOpsAttachments = _defenderSpecOpsAttachments + ["hlc_muzzle_762SUP_AK"];
		_defenderAttachments = _defenderAttachments + ["hlc_optic_kobra"];
	};
};

if (defenderFaction == 0 || defenderFaction == 2) then
{
	defenderNVG = "rhsusf_ANPVS_14";
	
	_defenderPrimary = "rhs_weap_akm";
	_defenderWeakPrimary = "rhs_weap_akms";
	_defenderMagazine = "rhs_30Rnd_762x39mm";
	_defenderWeakMagazine = _defenderMagazine;
	_defenderGrenade = "rhs_mag_rgd5";
	_defenderSmoke = "rhs_mag_rdg2_white";
	_defenderColorSmoke = _defenderSmoke;
	_defenderAttachments = [];
	_defenderMGAttachments = [];

	_defenderMG = "rhs_weap_ak74m_2mag";
	_defenderMGMagazines = ["rhs_45Rnd_545X39_AK", 6 + 2 * defenderGearQuality];
	
	_defenderGL = "rhs_weap_akm_gp25";
	_defenderGLMagazines = [["rhs_VOG25", 4 + 2 * defenderGearQuality], ["rhs_GRD40_Red", 3]];
	
	_defenderLauncher = "rhs_weap_rpg7";
	_defenderATRocket = "rhs_rpg7_PG7VL_mag";
	_defenderAPRocket = "rhs_rpg7_OG7V_mag";
	_defenderrLauncherAttachments = ["rhs_acc_pgo7v"];
	
	if ((nightVision >= 0) && (nightVision < 2)) then
	{
		_defenderGLMagazines = _defenderGLMagazines + [["rhs_VG40OP_white", 5]];
	};
	
	_defenderSpecOpsPrimary = "rhs_weap_ak103";
	_defenderSpecOpsAttachments = ["rhs_acc_ekp1"];
	
	if (defenderGearQuality > 0) then
	{
		_defenderSpecOpsAttachments = _defenderSpecOpsAttachments + ["rhs_acc_pbs1"];
	};
	
	_defenderMarksmanPrimary = _defenderSpecOpsPrimary;
	_defenderMarksmanSight = "rhs_acc_1p29";
	_defenderMarksmanNVSight = "rhs_acc_1pn93_1";
	_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanSight];
	if (nightVision > 0) then
	{
		_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanNVSight];
	};
};

if (defenderFaction == 0) then
{
	_defenderUniform = "HAMAS_Uniform_rpk";
	_defenderHelm = "";
	_defenderGlasses = "HAMAS_balaclava";
};


aClasses =
[
	// 0:Description
	// 1:Uniform
	// 2:Vest
	// 3:Backpack
	// 4:Helmet
	// 5:Eyewear
	// 6:Weapons,
	// 7:Magazines
	// 8:Items
	// 9:Primary weapon attachments
	// 10:Secondary weapon attachments.
	// 11:Handgun Attachments
	// 12:Init code
	// 13:Condition
	[
		localize "STR_Marksman"
		,_attackerUniform
		,_attackerVest
		,if (attackerFaction == 0) then {_attackerGlobalBackpack} else {""}
		,_attackerHelm
		,_attackerGlasses
		,[_attackerMarksmanPrimary, _attackerHandgun]
		,[[_attackerMarksmanMagazine, 11], [_attackerSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1], [_attackerMarksmanScope, if (_attackerMarksmanScope in _attackerMarksmanAttachments) then {0} else {1}]]
		,_attackerMarksmanAttachments
		,[]
		,[]
		,{}
		,"true"
	]

	,[
		localize "STR_Rifleman"
		,_attackerUniform
		,_attackerVest
		,if (attackerFaction == 0) then {_attackerGlobalBackpack} else {""}
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun]
		,[[_attackerMagazine, 9], [_attackerSmoke, 2], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 4]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,[]
		,[_attackerHandgunSuppressor]
		,{}
		,"true"
	]
	
	
	,[
		localize "STR_SuppressedSMG"
		,_attackerUniform
		,_attackerVest
		,if (attackerFaction == 0) then {_attackerGlobalBackpack} else {""}
		,_attackerHelm
		,_attackerGlasses
		,[_attackerSMG, _attackerHandgun]
		,[[_attackerSMGMagazine, 11], [_attackerSmoke, 1], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerSMGAttachments
		,[]
		,[]
		,{}
		,"true"
	]
		
	,[
		localize "STR_Grenadier"
		,_attackerUniform
		,_attackerGLVest
		,if ((attackerFaction == 0) || ((attackerFaction == 3) && (nightVision == 0))) then {_attackerGlobalBackpack} else {""}
		,_attackerHelm
		,_attackerGlasses
		,[_attackerGL, _attackerHandgun]
		,[[_attackerMagazine, 11], [_attackerSmoke, 1]] + _attackerGLMagazines
		,[["FirstAidKit", 1]]
		,if (attackerFaction == 0) then {["IDF_optic_Mars"]} else {_attackerAttachments}
		,[]
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_AutomaticRifleman"
		,_attackerUniform
		,_attackerMGVest
		,if (attackerFaction == 0) then {_attackerGlobalBackpack} else {""}
		,_attackerHelm
		,_attackerGlasses
		,[_attackerLMG, _attackerHandgun]
		,[_attackerLMGMagazines, [_attackerSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerLMGAttachments
		,[]
		,[]
		,{}
		,"attackerFaction > 0"
	]
	
		
	,[
		localize "STR_Sniper"
		,_attackerSniperUniform
		,"V_PlateCarrier2_blk"
		,_attackerSniperGlasses
		,_attackerSniperHat
		,""
		,[_attackerSR, _attackerHandgun]
		,[[_attackerSRMagazine, 11], [_attackerSmoke, 1], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[[_attackerSRScope, if (nightVision > 0 && _attackerSRNVScope != _attackerSRScope) then {1} else {0}]]
		,if (nightVision > 0) then {[_attackerSRNVScope]} else {[_attackerSRScope]}
		,[]
		,[]
		,{}
		,"true"
	]


];

dClasses =
[
	// 0:Description
	// 1:Uniform
	// 2:Vest
	// 3:Backpack
	// 4:Helmet
	// 5:Eyewear
	// 6:Weapons,
	// 7:Magazines
	// 8:Items
	// 9:Primary weapon attachments
	// 10:Secondary weapon attachments.
	// 11:Handgun Attachments
	// 12:Init code
	// 13:Condition
	
	[
		localize "STR_SpecOps"
		,_defenderUniform
		,"V_PlateCarrierL_CTRG"
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderSpecOpsPrimary]
		,[[_defenderSpecOpsMagazine, 11 + defenderGearQuality], [_defenderSmoke, 2]]
		,[["FirstAidKit", 1]]
		,_defenderSpecOpsAttachments
		,[]
		,[]
		,{isMedic = true;}
		,"true"
	]

	,[
		localize "STR_Rifleman"
		,_defenderUniform
		,"V_PlateCarrierL_CTRG"
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderPrimary]
		,[[_defenderMagazine, 11 + 2 * defenderGearQuality], [_defenderSmoke, 3]]
		,[["FirstAidKit", 1]]
		,_defenderAttachments
		,[]
		,[]
		,{isMedic = true;}
		,"true"
	]
	
	,[
		localize "STR_SpecOpsSMG"
		,_defenderUniform
		,"V_PlateCarrierL_CTRG"
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderSMG]
		,[[_defenderSMGMagazine, 11 + defenderGearQuality], [_defenderSmoke, 2]]
		,[["FirstAidKit", 1]]
		,_defenderSMGAttachments
		,[]
		,[]
		,{isMedic = true;}
		,"true"
	]

	,[
		localize "STR_AutomaticRifleman"
		,_defenderUniform
		,if (defenderFaction == 1) then {"V_Chestrig_blk"} else {_defenderVest}
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderMG]
		,[_defenderMGMagazines, [_defenderGrenade, if (defenderFaction < 3) then {1} else {0}], [_defenderSmoke, defenderGearQuality + (if (defenderFaction < 3) then {1} else {0})]]
		,[["FirstAidKit", 1]]
		,_defenderMGAttachments
		,[]
		,[]
		,{isMedic = true;}
		,"true"
	]
	
	,[
		localize "STR_Grenadier"
		,_defenderUniform
		,"V_PlateCarrierL_CTRG"
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderGL]
		,[[_defenderGLMagazines, 3 + defenderGearQuality], [_defenderSmoke, 2]]
		,[["FirstAidKit", 1]]
		,_defenderGLAttachments
		,[]
		,[]
		,{isMedic = true;}
		,"true"
	]

];

if (defenderGearQuality > 0) then
{
	dClasses =
		[
			[
				localize "STR_Marksman"
				,_defenderUniform
				,_defenderSmallVest
				,""
				, _defenderHelm
				,_defenderGlasses
				,[_defenderMarksmanPrimary]
				,[[_defenderWeakMagazine, 5], [_defenderSmoke, 2]]
				,[[_defenderMarksmanSight, if (_defenderMarksmanSight in _defenderMarksmanAttachments) then {0} else {1}]]
				,_defenderMarksmanAttachments
				,[]
				,[]
				,{}
				,"true"
			]
		]
		+
		dClasses
		+
		[
			[
				localize "STR_MortarGunner"
				,_defenderUniform
				,_defenderSmallVest
				,"O_Mortar_01_weapon_F"
				,_defenderHelm
				,_defenderGlasses
				,[_defenderWeakPrimary]
				,[[_defenderWeakMagazine, 6], [_defenderSmoke, 1]]
				,[]
				,[]
				,[]
				,[]
				,{}
				,"true"
			]
	
			,[
				localize "STR_MortarAssistant"
				,_defenderUniform
				,_defenderSmallVest
				,"O_Mortar_01_support_F"
				,_defenderHelm
				,_defenderGlasses
				,[_defenderWeakPrimary, "Rangefinder"]
				,[[_defenderWeakMagazine, 6], [_defenderSmoke, 1], [_defenderColorSmoke, 1]]
				,[]
				,[]
				,[]
				,[]
				,{}
				,"true"
			]
		];
};