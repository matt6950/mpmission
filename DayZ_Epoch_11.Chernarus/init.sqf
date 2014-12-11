dayz_antihack = 0;
dayz_REsec = 0;
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
DZE_MissionLootTable = true;
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500

MaxVehicleLimit = 280; // Default = 50
MaxDynamicDebris = 50; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 45; // Default = 30 

dayz_paraSpawn = false;

DZE_HeliLift = True;

dayz_minpos = -1; 
dayz_maxpos = 16000;

dayz_sellDistance_vehicle = 20;
dayz_sellDistance_boat = 40;
dayz_sellDistance_air = 50;

dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100


DZE_BuildOnRoads = false; // Default: False

// If the player Steam ID = Matt ( 76561198161837467 ) then
// allow 1-step building.
// If it's not then it's normal building mode for them.
if ((getPlayerUID player) in ["76561198161837467","0"]) then
{
	DZE_StaticConstructionCount = 1; // 1-step building - Added by DY357LX.
} else 
{
	DZE_StaticConstructionCount = 3; // 1-step building - Added by DY357LX.
};

/*ZSC*/
DZE_ConfigTrader = true;
/*ZSC*/

// Extra Epoch events. Added by DY357LX - see @DayZ_Epoch_Server\dayz_server\modules for files + config.
EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"],["any","any","any","any",10,"Military"],["any","any","any","any",25,"Treasure"],["any","any","any","any",40,"Supplyitems"],["any","any","any","any",55,"Construction"]];

dayz_fullMoonNights = true;

//Load in compiled functions
call compile preprocessFileLineNumbers "custom\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "custom\compiles.sqf";				//Compile regular functions
/*ZSC*/

call compile preprocessFileLineNumbers "ZSC\gold\ZSCinit.sqf";

/*ZSC*/		
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders_cherno_11.sqf";					//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_server\system\server_monitor.sqf";
};

if (!isDedicated) then {
	// Load the service point rearm/repair/refuel script - added by DY357LX
	// To configure costs, open service_point.sqf - there's 3 sets of options.
	// 1 for refuel, 1 for repair, 1 for re-arm.
	execVM "service_point\service_point.sqf";
 
       [] execVM "extras\customloadout.sqf";

	
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
                   execVM "ZSC\compiles\playerHud.sqf";

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	
};

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

// Start the Infistar SafeZones script - added by DY357LX
// To configure the locations, radius and enforced speed-limit, simply open extras\infistarsafezones.sqf
[] execvm "extras\infistarsafezones.sqf";

// Cars have Godmode in safezones if owners are present in trader area too - added by DY357LX
[] execVM "extras\safezonevehicle.sqf";

// Load the custom fuel tank etc map markers - added by DY357LX
[] execVM "extras\mapmarkers.sqf";