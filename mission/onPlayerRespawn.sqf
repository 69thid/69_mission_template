/*
 * onPlayerRespawn.sqf: executed on the client when the player respawns (note: players respawn on mission start)
 */

// Abort if this is a headless client
if(!hasInterface) exitWith {};

params["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// Apply reduced aim coefficient (weapon sway)
player setCustomAimCoef 0.35;

// Apply reduced recoil coefficient
player setUnitRecoilCoefficient 0.5;
