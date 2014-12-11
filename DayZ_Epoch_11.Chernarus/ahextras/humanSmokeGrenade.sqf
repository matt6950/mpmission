/*
Creates a red smoke grenade and attaches it to the player.
The player can then run around like a loony leaving trails of 
red smoke behind them until the grenade expires.
*/
_smokeMarker = "SmokeShellBlue" createVehicle getPosATL player;
_smokeMarker setPosATL (getPosATL player);
_smokeMarker attachTo [player,[0,0,0]];