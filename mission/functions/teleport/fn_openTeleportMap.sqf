/*
 * SixNine_fnc_openTeleportMap: opens the teleport map
 *
 * Locality: Client only
 */
// Abort if wrong locality
if(!hasInterface) exitWith {};

params ["_mapPos"];

// Build array of mission locations in the format accepted by BIS_fnc_StrategicMapOpen
private _missions = [];
{
    _missions pushBack [
        _x select 0,
        {player setPos (_this select 0)},
        _x select 1,
        "",
        "",
        "",
        0.5
    ];
} foreach SixNine_teleportPoles;

// Open the strategic map with our mission positions
[findDisplay 46, _mapPos, _missions] spawn BIS_fnc_StrategicMapOpen;
