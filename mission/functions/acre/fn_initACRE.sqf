/*
 * SixNine_fnc_initACRE: configures ACRE PRC-152 & 117F radios
 *
 * Locality: Server and client
 */
// Abort if ACRE is not preset
if(!isClass(configfile >> "CfgPatches" >> "acre_api")) exitWith {};

// Copy the default presets
["ACRE_PRC152", "default", "69preset"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "default", "69preset"] call acre_api_fnc_copyPreset;

// Set preset channel names
private _channelNames = [
    "WRONG",
    "CENTCOM",
    "PLATOON",
    "CONVOY",
    "PLTHQ",
    "GHOST",
    "SABRE 1",
    "SABRE 1-1",
    "SABRE 1-2",
    "SABRE 2",
    "SABRE 2-1",
    "SABRE 2-2",
    "SABRE 3",
    "SABRE 3-1",
    "SABRE 3-2",
    "OW GROUND/SAR",
    "ATC",
    "TASKING1",
    "TASKING2",
    "FIXED",
    "ROTARY"
];
{
    ["ACRE_PRC152", "69preset", _forEachIndex + 1, "description", _x] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "69preset", _forEachIndex + 1, "name", _x] call acre_api_fnc_setPresetChannelField;
} forEach _channelNames;

// Set channel preset for all radios
["ACRE_PRC152", "69preset"] call acre_api_fnc_setPreset;
["ACRE_PRC117F", "69preset"] call acre_api_fnc_setPreset;
