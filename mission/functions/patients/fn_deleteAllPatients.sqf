/*
 * SixNine_fnc_deleteAllPatients: deletes all patients
 *
 * Locality: Server only
 */
// Abort if wrong locality
if(!isServer) exitWith {};

if(isNil "SixNine_patients") exitWith {};

{
    deleteVehicle _x;
} foreach SixNine_patients;
