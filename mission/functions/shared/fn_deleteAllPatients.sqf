/*
 * SixNine_fnc_deleteAllPatients: deletes all patients
 *
 * Locality: Server and client
 */
if(isNil "SixNine_patients") exitWith {};

{
    deleteVehicle _x;
} foreach SixNine_patients;
