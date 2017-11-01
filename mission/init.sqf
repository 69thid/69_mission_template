/*
 * init.sqf: executed when mission is started (before briefing screen)
 */

// Disable saving
enableSaving[false, false];

// Disable radio chatter and sentences
enableRadio false;
enableSentences false;

// Set adv_aceCPR probabilities (see https://github.com/Pergor/ADV_Mods/tree/master/adv_aceCPR)
adv_aceCPR_probabilities = [40,25,15,85];

// Disable RHS radio chatter (if RHS is present)
if(isClass(configfile >> "CfgPatches" >> "rhs_main")) then {
    rhs_vehicleRadioChatter = 0;
};

// Set advanced sling loading rules
ASL_SLING_RULES_OVERRIDE = [["Air", "CAN_SLING", "Ship"], ["Air", "CAN_SLING", "Air"]];

// Disable ambient life (rabbits & snakes) once the mission starts
waitUntil {time > 0};
enableEnvironment[false, true];
