/*
 * SixNine_fnc_initPatientSpawner: initializes patient spawner logic for an abject
 *
 * Locality: Server only
 */
// Abort if wrong locality
if(!isServer) exitWith {};

params ["_spawner"];

// Initialize global variables
if(isNil "SixNine_patients") then {
    SixNine_patients = [];
    SixNine_patient_group = createGroup [west, false];
};

// Calculate the patient spawn position (2.5 meters behind the object)
private _spawnPos = _spawner getRelPos [2.5, getDir _spawner];

// Add the "Spawn patient" action
_spawner addAction ["Spawn patient", "[_this select 3] spawn SixNine_fnc_createPatient;", _spawnPos];
