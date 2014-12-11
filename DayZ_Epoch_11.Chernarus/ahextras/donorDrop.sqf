closeDialog 0;
titleText ["Click On The Map", "PLAIN DOWN"]; titleFadeOut 4;
adminpack=
{
    onMapSingleClick hint format ["CarePackage Called In @\n%1" ,_pos];
    for "_i" from 0 to 0 do
    {
    _pos1 = [(_pos select 0), (_pos select 1), 100];
    sleep 1;
    _box = "MedBox0" createVehicle _pos1;
    _smoke = "SmokeshellGreen" createVehicle position _box;
    _smoke attachto [_box, [0,0,0]];
    _box attachTo [_chute, [0,0,0]];

	_box addWeaponCargoGlobal ["m107", 1];
	_box addWeaponCargoGlobal ["BAF_LRR_scoped_W", 1];
	_box addWeaponCargoGlobal ["RH_hk417sdacog", 1];
	_box addWeaponCargoGlobal ["RH_hk417sglacog", 1];
	_box addWeaponCargoGlobal ["SCAR_H_CQC_CCO_SD", 1];
	_box addWeaponCargoGlobal ["M110_NVG_EP1", 1];
	_box addWeaponCargoGlobal ["RH_uspsd", 1];
	_box addWeaponCargoGlobal ["DDOPP_X3", 1];

		// add tools
		_box addWeaponCargoGlobal ["ChainSaw", 1];
		_box addWeaponCargoGlobal ["ItemToolbox", 3];
		_box addWeaponCargoGlobal ["ItemItemGPS", 3];
		_box addWeaponCargoGlobal ["ItemEtool", 3];
		_box addWeaponCargoGlobal ["ItemKnife", 3];
		_box addWeaponCargoGlobal ["ItemEtool", 3];
		_box addWeaponCargoGlobal ["ItemCrowbar", 3];
		_box addWeaponCargoGlobal ["Binocular_Vector", 3];
		_box addWeaponCargoGlobal ["ItemSledge", 1];
		_box addWeaponCargoGlobal ["ItemFishingPole", 1];
		_box addWeaponCargoGlobal ["ItemKeyKit", 1];
		

	// add building materials
	_box addMagazineCargoGlobal ["ItemLockbox", 2];
	_box addMagazineCargoGlobal ["ItemVault", 2];
	_box addMagazineCargoGlobal ["workbench_kit", 2];
	_box addMagazineCargoGlobal ["ItemJerrycan", 1];
	_box addMagazineCargoGlobal ["ItemMixOil", 1];
	_box addMagazineCargoGlobal ["ItemFireBarrel_kit", 2];
	_box addMagazineCargoGlobal ["CinderBlocks", 80];
	_box addMagazineCargoGlobal ["MortarBucket", 20];
	_box addMagazineCargoGlobal ["cinder_wall_kit", 25];
	_box addMagazineCargoGlobal ["cinder_garage_kit", 3];
	_box addMagazineCargoGlobal ["cinder_door_kit", 3];
	_box addMagazineCargoGlobal ["ItemPole", 12];
	_box addMagazineCargoGlobal ["ItemTankTrap", 12];
	_box addMagazineCargoGlobal ["PartPlankPack", 20];
	_box addMagazineCargoGlobal ["PartPlywoodPack", 20];
	_box addMagazineCargoGlobal ["ItemSandbagLarge", 20];
	_box addMagazineCargoGlobal ["ItemSandbagExLarge", 20];
	_box addMagazineCargoGlobal ["ItemSandbagExLarge5x", 20];
	_box addMagazineCargoGlobal ["metal_floor_kit", 30];
	_box addMagazineCargoGlobal ["ItemComboLock", 3];
	_box addMagazineCargoGlobal ["30m_plot_kit", 2];
	_box addMagazineCargoGlobal ["bulk_ItemTankTrap", 2];
	_box addMagazineCargoGlobal ["bulk_PartGeneric", 2];
	_box addMagazineCargoGlobal ["bulk_ItemWire", 2];
	_box addMagazineCargoGlobal ["bulk_ItemSandbag", 2];
	_box addMagazineCargoGlobal ["fuel_pump_kit", 2];


		// add ammo
		_box addMagazineCargoGlobal ["10Rnd_127x99_m107", 5];
		_box addMagazineCargoGlobal ["5Rnd_86x70_L115A1", 5];
		_box addMagazineCargoGlobal ["RH_20Rnd_762x51_SD_hk417", 5];
		_box addMagazineCargoGlobal ["RH_20Rnd_762x51_hk417", 5];
		_box addMagazineCargoGlobal ["20Rnd_762x51_SB_SCAR", 5];
		_box addMagazineCargoGlobal ["20Rnd_762x51_B_SCAR", 5];
		_box addMagazineCargoGlobal ["RH_15Rnd_9x19_uspsd", 5];
		_box addMagazineCargoGlobal ["DDOPP_3Rnd_X3", 5];

		// add food + drugs
		_box addMagazineCargoGlobal ["ItemAntibiotic", 5];
		_box addMagazineCargoGlobal ["ItemBandage", 5];
		_box addMagazineCargoGlobal ["ItemBloodbag", 5];
		_box addMagazineCargoGlobal ["ItemEpinephrine", 5];
		_box addMagazineCargoGlobal ["ItemMorphine", 5];
		_box addMagazineCargoGlobal ["ItemPainkiller", 5];
		_box addMagazineCargoGlobal ["FoodmeatCooked", 5];
		_box addMagazineCargoGlobal ["ItemSodaCoke", 5];
     
    sleep 1;
    _chute = createVehicle ["ParachuteC", [(_pos1) select 0,(_pos1) select 1], [], 0, "FLY"];
    []spawn
    sleep 1;
    vehC = nearestObjects [vehicle player, ["MedBox0"], 150];
    vehD = nearestObjects [vehicle player, ["ParachuteC"], 500];
    veh = vehC select 0;
    chute = vehD select 0;
    veh attachTo [chute, [0,0,1.5]];
    };
    onMapSingleClick "";
    openMap [false, false];
	
	// Delete box after 20 minutes.
		sleep 1200;
		deleteVehicle _box;
		hint format ["Donor Box DELETED At @\n%1" ,_pos];
};
    openMap [true, false];
    onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call adminpack";