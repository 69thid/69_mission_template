/*
 * init.sqf: executed when mission is started (before briefing screen)
 */

// Disable saving
enableSaving[false, false];

// Disable radio chatter and sentences
enableRadio false;
enableSentences false;

// Disable ambient life (rabbits & snakes) once the mission starts
waitUntil {time > 0};
enableEnvironment[false, true];
