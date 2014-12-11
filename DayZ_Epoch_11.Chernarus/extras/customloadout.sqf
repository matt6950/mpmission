waitUntil {(getPlayerUID player) != ""};
_loadList = ["76561198161837467"];
_lpID = getPlayerUID player;

// 1- Dmr to the face!
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","Skin_Soldier1_DZ","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["DMR","vil_USPSD","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 2- The good old Hk
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","Skin_Sniper1_DZ","ItemBandage","ItemBandage","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["RH_hk417sdacog","UZI_SD_EP1","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 3- The silent Killer
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","ItemBandage","ItemBandage","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["vil_M110sd","RH_uspsd","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};
 
// 4- the big Bang
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_B_SCAR","20Rnd_762x51_B_SCAR","20Rnd_762x51_B_SCAR","Skin_Sniper1_DZ","ItemBandage","ItemBandage","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["M110_NVG_EP1","UZI_SD_EP1","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 5-Lights Out
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_DMR_SD","20Rnd_762x51_DMR_SD","20Rnd_762x51_DMR_SD","Skin_Sniper1_DZ","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["FHQ_RSASS_SD_TAN","vil_USPSD","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 6-FoxHound
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","Skin_CZ_Soldier_Sniper_EP1_DZ","ItemBandage","ItemBandage","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["vil_M110","RH_uspsd","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 7-it begins
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","Skin_Soldier_Sniper_PMC_DZ","ItemBandage","ItemBandage","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","RH_15Rnd_9x19_uspsd","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["vil_M110sd","RH_uspsd","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 8-BAF
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["5Rnd_86x70_L115A1","5Rnd_86x70_L115A1","5Rnd_86x70_L115A1","Skin_Sniper1_DZ","ItemBandage","ItemBandage","DDOPP_3Rnd_X3","DDOPP_3Rnd_X3","DDOPP_3Rnd_X3","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["BAF_LRR_scoped_W","DDOPP_X3","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 9- Gotcha 
if ((_lpID in ["01"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20Rnd_762x51_DMR","20Rnd_762x51_DMR","20Rnd_762x51_DMR","Skin_Sniper1_DZ","ItemBandage","ItemBandage","RH_8Rnd_45cal_m1911","RH_8Rnd_45cal_m1911","RH_8Rnd_45cal_m1911","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["vil_SR25SD","RH_m1911sd","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 10-that left a scar
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["20rnd_762x51_SB_SCAR","20rnd_762x51_SB_SCAR","20rnd_762x51_SB_SCAR","Skin_Graves_Light_DZ","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["SCAR_H_CQC_CCO_SD","M9SD","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 11- Another HR
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","Skin_Sniper1_DZ","ItemBandage","ItemBandage","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["RH_hk417sdacog","UZI_SD_EP1","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 12-Time to kill
if ((_lpID in ["0"]) && (_lpID in _loadList)) then 
{
	DefaultMagazines = ["RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","Skin_Sniper1_DZ","ItemBandage","ItemBandage","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","30Rnd_9x19_UZI_SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
	DefaultWeapons = ["RH_hk417sdacog","UZI_SD_EP1","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
	DefaultBackpack = "DZ_GunBag_EP1";
};

// 13-G36c
if ((_lpID in ["0"]) && (_lpID in _loadList)) then
{ 
     DefaultMagazines = ["30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","gsc_eco_stalker_mask_camo","Skin_Camo1_DZ","ItemBandage","ItemBandage","RH_19Rnd_9x19_g18","RH_19Rnd_9x19_g18","RH_19Rnd_9x19_g18","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
     DefaultWeapons = ["G36_C_SD_camo","RH_g18","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
     DefaultBackpack = "DZ_GunBag_EP1";
};


// 14 - Matt's load out
if ((_lpID in ["76561198161837467"]) && (_lpID in _loadList)) then
{ 
     DefaultMagazines = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","Skin_Soldier1_DZ","ItemBandage","ItemBandage","RH_15Rnd_9x19_usp","RH_15Rnd_9x19_usp","RH_15Rnd_9x19_usp","G_40mm_HE","G_40mm_Smoke","F_40mm_Red"];
     DefaultWeapons = ["RH_hk416gleotech","RH_usp","NVGoggles","ItemCrowbar","ItemMap","ItemCompass","ItemKnife","ItemToolbox","ItemHatchet_DZE","Binocular_Vector"];
     DefaultBackpack = "DZ_GunBag_EP1";
     DefaultBackpackItem = ["RH_hk416sdglaim","30Rnd_556x45_StanagSD","G_40mm_HE","G_40mm_Smoke","F_40mm_Red"];
};

