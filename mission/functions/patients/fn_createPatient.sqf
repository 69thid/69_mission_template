/*
 * SixNine_fnc_createPatient: creates a patient (bot with random injuries)
 *
 * Locality: Server only
 */
// Abort if wrong locality
if(!isServer) exitWith {};

params ["_pos"];

// Make sure Arma didn't delete the patient group
if(isNull SixNine_patient_group) then {
    SixNine_patient_group = createGroup [west, false];
};

// Create the unit
private _patient = SixNine_patient_group createUnit ["B_Survivor_F", _pos, [], 0, "NONE"];

// Prevent this unit from moving
_patient disableAI "ALL";

// Apply random damage to the patient
[_patient, selectRandom [0.7,0.9], "leg_r", selectRandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_patient, selectRandom [0.7,0.9], "leg_l", selectRandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_patient, selectRandom [0.7,0.9], "body", selectRandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_patient, selectRandom [0.7,0.9], "head", selectRandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_patient, selectRandom [0.7,0.9], "hand_r", selectRandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_patient, selectRandom [0.7,0.9], "hand_l", selectRandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_patient] call ace_medical_fnc_handleDamage_advancedSetDamage;

// Store the patient in the global patients array
SixNine_patients pushBack _patient;
