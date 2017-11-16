/*
 ASR AI3 server-side settings; these settings are only applicable on servers and single-player sessions
 this file must be found in <game folder>\userconfig\asr_ai3\
 for most settings, 0 = disabled, 1 = enabled

 Mission makers can control these features by setting these global variables in init.sqf
*/

/*
	Units are classified into skill sets between 1 and 10
	By default, a lower level number means a better skilled unit
	Levels 8-10 are special:
	 - 8-9 are for pilots
	 - 10 is for trained snipers
*/

asr_ai3_main_sets = [ // for each level: skilltype, [<min value>, <random value added to min>]
	[	'general',[1.00,0.0],	'aiming',[1.00,0.0],	'spotting',[1.00,0.0]	],	// 0:  super-AI (only used for testing)
	[	'general',[0.95,0.1],	'aiming',[0.65,0.1],	'spotting',[0.75,0.0]	],	// 1:  sf 1
	[	'general',[0.90,0.1],	'aiming',[0.55,0.1],	'spotting',[0.75,0.0]	],	// 2:  sf 2 (recon units, divers and spotters)
	[	'general',[0.85,0.1],	'aiming',[0.45,0.1],	'spotting',[0.75,0.0]	],	// 3:  regular 1 (regular army leaders, marksmen)
	[	'general',[0.85,0.1],	'aiming',[0.40,0.1],	'spotting',[0.65,0.0]	],	// 4:  regular 2 (regulars)
	[	'general',[0.80,0.1],	'aiming',[0.35,0.1],	'spotting',[0.55,0.0]	],	// 5:  militia or trained insurgents, former regulars (insurgent leaders, marksmen)
	[	'general',[0.80,0.1],	'aiming',[0.35,0.1],	'spotting',[0.55,0.0]	],	// 6:  some military training (insurgents)
	[	'general',[0.65,0.1],	'aiming',[0.20,0.1],	'spotting',[0.25,0.0]	],	// 7:  no military training
	[	'general',[0.85,0.1],	'aiming',[0.35,0.1],	'spotting',[0.40,0.0]	],	// 8:  pilot 1 (regular)
	[	'general',[0.80,0.1],	'aiming',[0.30,0.1],	'spotting',[0.35,0.0]	],	// 9:  pilot 2 (insurgent)
	[	'general',[0.95,0.1],	'aiming',[0.85,0.1],	'spotting',[0.95,0.0]	]	// 10: sniper
];

/*
    Override skill level classification which is by default done via config ("asr_ai_level" attribute in cfgVehicles)
    Add class names enclosed by quotes. Note that if other classes inherit from the ones added here, they will get the same skill level
*/

asr_ai3_main_levels_units = [
	[],	// 0:  super-AI (only used for testing)
	[],	// 1:  sf 1
	[],	// 2:  sf 2 (recon units, divers and spotters)
	[],	// 3:  regular 1 (regular army leaders, marksmen)
	[],	// 4:  regular 2 (regulars)
	[],	// 5:  militia or trained insurgents, former regulars (insurgent leaders, marksmen)
	[],	// 6:  civilians with some military training (insurgents)
	[],	// 7:  civilians without military training
	[],	// 8:  pilot 1 (regular)
	[],	// 9:  pilot 2 (insurgent)
	[]	// 10: sniper
];

asr_ai3_main_factions = [ // default coefficient for unlisted factions is 1, meaning no change
    ['LOP_AA',0.9],
    ['LOP_IA',0.9]
];

asr_ai3_main_skip_factions = ['CIV_F','CIV_IDAP_F','LOP_AFR_Civ','LOP_CHR_Civ','LOP_TAK_Civ']; // factions added here will not get the AI enhancements
