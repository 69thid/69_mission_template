/*
 * SixNine_fnc_initPatientSpawner: initializes patient spawner logic for an abject
 *
 * Locality: Client only
 */
// Abort if wrong locality
if(!hasInterface) exitWith {};

params ["_spawner"];

// Calculate the patient spawn position (2.5 meters behind the object)
private _spawnPos = _spawner getRelPos [2.5, getDir _spawner];

// Add the "Spawn patient" action
_spawner addAction ["Spawn patient", "[_this select 3] remoteExec ['SixNine_fnc_createPatient', 2, false];", _spawnPos];
