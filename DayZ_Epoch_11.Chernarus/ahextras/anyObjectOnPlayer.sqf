// Classnames : http://www.armatechsquad.com/ArmA2Class151656165165341654165165165165f/index.php
//
// Classname of object you want to place goes here:
_objectPlaced = "Land_Molo_Drevo_BS";

// Automagically grab position of player (for output later).
_objectPosition = (getPos player);

// Spawn object on top of player. 
_smokeMarker = _objectPlaced createVehicle getPos player;

// Set its position to ontop of the player
_smokeMarker setPos (getPos player);

// Get the direction the player is facing
_smokeMarker setDir (getDir player + 180);

// Wait 3 seconds 
sleep 3;

// Set the height of the object (in meters) if required
//_smokeMarker setPos [(getPos _smokeMarker) select 0, (getPos _smokeMarker) select 1, 0.2];

systemchat format ["Placed %1 at %2 - remember to INSERT it into the database",_objectPlaced,_objectPosition];