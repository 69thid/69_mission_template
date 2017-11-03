/*
 * SixNine_fnc_initTeleportPole: initializes teleport pole logic for an abject
 *
 * Locality: Client only
 */
// Abort if wrong locality
if(!hasInterface) exitWith {};

params ["_pole", "_name"];

// Initialize global variables
if(isNil "SixNine_teleportPoles") then {
    SixNine_teleportPoles = [];
};

private _pos = getPos _pole;

// Add this teleport destination
SixNine_teleportPoles pushBack [
    _pos,
    _name
];

// Create a map marker
private _marker = createMarkerLocal [_name, _pos];
_marker setMarkerTypeLocal "mil_flag";
_marker setMarkerTextLocal _name;

// Add the "Open Teleport Map" action
_pole addAction ["Open Teleport Map", "[_this select 0] spawn SixNine_fnc_openTeleportMap", _pos];
