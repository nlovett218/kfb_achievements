class CfgAchievements
{
	achievements[] = {
			"KFB_Welcome", 
			"KFB_FamilyComesFirst", 
			"KFB_TimeToBuild",
			"KFB_TimeToBuild5",
			"KFB_TimeToBuild10",
			"KFB_Killstreak5", 
			"KFB_Killstreak10",
			"KFB_Killstreak15",
			"KFB_Killstreak20",
			"KFB_ZedKill10",
			"KFB_ZedKill50",
			"KFB_ZedKill100",
			"KFB_ZedKill500",
			"KFB_ZedKill1000",
			"KFB_ZedKill5000",
			"KFB_DemonKill10",
			"KFB_DemonKill50",
			"KFB_DemonKill100",
			"KFB_DemonKill500",
			"KFB_PlayerKill10",
			"KFB_PlayerKill100",
			"KFB_PlayerKill500",
			"KFB_PlayerKill1000",
			"KFB_PlayerKill5000",
			"KFB_AIKill50",
			"KFB_AIKill100",
			"KFB_AIKill500",
			"KFB_AIKill1000",
			"KFB_AIKill5000",
			"KFB_Death1",
			"KFB_Death10",
			"KFB_Death100",
			"KFB_Death500",
			"KFB_Death1000",
			"KFB_Respect5000",
			"KFB_Respect15000",
			"KFB_Respect40000",
			"KFB_Respect80000",
			"KFB_Respect100000",
			"KFB_Respect500000",
			"KFB_Respect1000000",
			"KFB_Task1",
			"KFB_Task50",
			"KFB_Task100",
			"KFB_Task500",
			"KFB_Task1000",
			"KFB_KDR10",
			"KFB_FirstRaid",
			"KFB_Disarm40",
			"KFB_FlagSale",
			"KFB_Repair500",
			"KFB_LongShot",
			"KFB_Hack100",
			"KFB_Medic",
			"KFB_LifeSavior",
			"KFB_Bambi50",
			"KFB_MadLad",
			"KFB_Humiliation",
			"KFB_Raid100",
			"KFB_Homie100",
			"KFB_Pistol100",
			"KFB_Hotwire200",
			"KFB_Donate",
			"KFB_GetHelp",
			"KFB_Shotgun100",
			"KFB_MachineGunner",
			"KFB_TimeSpentInRadzone",
			"KFB_Skulls",
			"KFB_Roadkill100",
			"KFB_Roadkill300",
			"KFB_LeeEnfieldChallenge",
			"KFB_RPGChallenge",
			"KFB_XPLevel10",
			"KFB_XPLevel25",
			"KFB_XPLevel50"
	};

	class KFB_Welcome 
	{
		title = "Welcome";
		description = "Join the server.";
		icon = "\kfb_assets\textures\achievements\KFB_Welcome.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Bambi";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileClientHasJoined";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "script";
			unlock_var_win_condition = true;
			unlock_type = "BOOL";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_FamilyComesFirst 
	{
		title = "Family Comes First";
		description = "Join or register a family.";
		icon = "\kfb_assets\textures\achievements\KFB_FamilyComesFirst.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Family Man";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileClientInClan";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "script";
			unlock_var_win_condition = 1;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_TimeToBuild
	{
		title = "Time To Build I";
		description = "Join or purchase a territory.";
		icon = "\kfb_assets\textures\achievements\KFB_TimeToBuild.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Real Estate Investor";
			unlock_condition = "KFB_StatSystem_CheckInTerritory";
			unlock_var = "";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "";
			unlock_var_win_condition = 1;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_TimeToBuild5
	{
		title = "Time To Build II";
		description = "Upgrade a territory to level 5.";
		icon = "\kfb_assets\textures\achievements\KFB_TerritoryLVL5.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Real Estate Investor";
			unlock_condition = "KFB_StatSystem_CheckInTerritory";
			unlock_var = "";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "";
			unlock_var_win_condition = 5;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_TimeToBuild10
	{
		title = "Time To Build III";
		description = "Upgrade a territory to level 10.";
		icon = "\kfb_assets\textures\achievements\KFB_TerritoryLVL10.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Bob the Builder";
			unlock_condition = "KFB_StatSystem_CheckInTerritory";
			unlock_var = "";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Killstreak5 
	{
		title = "5 Shittters In A Row";
		description = "Reach a Killstreak of 5.";
		icon = "\kfb_assets\textures\achievements\KFB_Killstreak5.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Shitter Remover";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKillstack";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 5;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Killstreak10 
	{
		title = "Stop Bambi Camping";
		description = "Reach a Killstreak of 10.";
		icon = "\kfb_assets\textures\achievements\KFB_Killstreak10.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Spawn Camper";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKillstack";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Killstreak15 
	{
		title = "Seriously Just Stop";
		description = "Reach a Killstreak of 15.";
		icon = "\kfb_assets\textures\achievements\KFB_Killstreak15.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Super Spawn Camper";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKillstack";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 15;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Killstreak20 
	{
		title = "STAAAPH";
		description = "Reach a Killstreak of 20.";
		icon = "\kfb_assets\textures\achievements\KFB_Killstreak20.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Ultra Spawn Camper";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKillstack";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 20;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_ZedKill10
	{
		title = "Brains I";
		description = "Kill 10 Zombies.";
		icon = "\kfb_assets\textures\achievements\KFB_ZedKill10.paa";
		database_stat_name = "stat_zombie_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_zombie_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_ZedKill50
	{
		title = "Brains II";
		description = "Kill 50 Zombies.";
		icon = "\kfb_assets\textures\achievements\KFB_ZedKill50.paa";
		database_stat_name = "stat_zombie_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_zombie_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_ZedKill100
	{
		title = "Brains III";
		description = "Kill 100 Zombies.";
		icon = "\kfb_assets\textures\achievements\KFB_ZedKill100.paa";
		database_stat_name = "stat_zombie_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_zombie_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_ZedKill500
	{
		title = "Brains IV";
		description = "Kill 500 Zombies.";
		icon = "\kfb_assets\textures\achievements\KFB_ZedKill500.paa";
		database_stat_name = "stat_zombie_kill";

		class unlock_data 
		{	
			unlock_title = "Zombie Remover";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_zombie_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_ZedKill1000
	{
		title = "Brains V";
		description = "Kill 1000 Zombies.";
		icon = "\kfb_assets\textures\achievements\KFB_ZedKill1000.paa";
		database_stat_name = "stat_zombie_kill";

		class unlock_data 
		{	
			unlock_title = "Zombie Hunter";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_zombie_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_ZedKill5000
	{
		title = "Play Dying Light Instead";
		description = "Kill 5000 Zombies.";
		icon = "\kfb_assets\textures\achievements\KFB_ZedKill5000.paa";
		database_stat_name = "stat_zombie_kill";

		class unlock_data 
		{	
			unlock_title = "Zombie Slayer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_zombie_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 5000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_DemonKill10
	{
		title = "Hell I";
		description = "Kill 10 demons.";
		icon = "\kfb_assets\textures\achievements\KFB_DemonKill10.paa";
		database_stat_name = "stat_total_demon_kills";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_demon_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_DemonKill50
	{
		title = "Hell II";
		description = "Kill 50 demons.";
		icon = "\kfb_assets\textures\achievements\KFB_DemonKill50.paa";
		database_stat_name = "stat_total_demon_kills";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_demon_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_DemonKill100
	{
		title = "Hell III";
		description = "Kill 100 demons.";
		icon = "\kfb_assets\textures\achievements\KFB_DemonKill100.paa";
		database_stat_name = "stat_total_demon_kills";

		class unlock_data 
		{	
			unlock_title = "Inquisitor";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_demon_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_DemonKill500
	{
		title = "Demon Slayer";
		description = "Kill 500 demons.";
		icon = "\kfb_assets\textures\achievements\KFB_DemonKill500.paa";
		database_stat_name = "stat_total_demon_kills";

		class unlock_data 
		{	
			unlock_title = "Demon Slayer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_demon_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_PlayerKill10
	{
		title = "PvP I";
		description = "Kill 10 players.";
		icon = "\kfb_assets\textures\achievements\KFB_PlayerKill10.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Soldier";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_PlayerKill100
	{
		title = "PvP II";
		description = "Kill 100 players.";
		icon = "\kfb_assets\textures\achievements\KFB_PlayerKill100.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Hitman";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_PlayerKill500
	{
		title = "PvP III";
		description = "Kill 500 players.";
		icon = "\kfb_assets\textures\achievements\KFB_PlayerKill500.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Serial Killer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_PlayerKill1000
	{
		title = "No One Can Stand In Your Way";
		description = "Kill 1000 players.";
		icon = "\kfb_assets\textures\achievements\KFB_PlayerKill1000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Assassin";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_PlayerKill5000
	{
		title = "Overkill";
		description = "Kill 5000 players.";
		icon = "\kfb_assets\textures\achievements\KFB_PlayerKill5000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "God";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileKills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 5000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_AIKill50
	{
		title = "PvE I";
		description = "Kill 50 AI.";
		icon = "\kfb_assets\textures\achievements\KFB_AIKill50.paa";
		database_stat_name = "stat_npc_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_npc_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_AIKill100
	{
		title = "PvE II";
		description = "Kill 100 AI.";
		icon = "\kfb_assets\textures\achievements\KFB_AIKill100.paa";
		database_stat_name = "stat_npc_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_npc_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_AIKill500
	{
		title = "PvE III";
		description = "Kill 500 AI.";
		icon = "\kfb_assets\textures\achievements\KFB_AIKill500.paa";
		database_stat_name = "stat_npc_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_npc_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_AIKill1000
	{
		title = "PvE IV";
		description = "Kill 1000 AI.";
		icon = "\kfb_assets\textures\achievements\KFB_AIKill1000.paa";
		database_stat_name = "stat_npc_kill";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_npc_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_AIKill5000
	{
		title = "Skynet Lost Against You";
		description = "Kill 5000 AI.";
		icon = "\kfb_assets\textures\achievements\KFB_AIKill5000.paa";
		database_stat_name = "stat_npc_kill";

		class unlock_data 
		{	
			unlock_title = "John Connor";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_npc_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 5000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Death1
	{
		title = "First Death";
		description = "Die 1 Time.";
		icon = "\kfb_assets\textures\achievements\KFB_Death1.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Welcome to Arma";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileDeaths";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Death10
	{
		title = "Only 10";
		description = "Die 10 Times.";
		icon = "\kfb_assets\textures\achievements\KFB_Death10.paa";
		database_stat_name = "stat_player_deaths";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileDeaths";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Death100
	{
		title = "Shitter";
		description = "Die 100 Times.";
		icon = "\kfb_assets\textures\achievements\KFB_Death100.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Shitter";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileDeaths";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Death500
	{
		title = "Getting Used To It";
		description = "Die 500 Times.";
		icon = "\kfb_assets\textures\achievements\KFB_Death500.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileDeaths";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Death1000
	{
		title = "Ultimate Shitter";
		description = "Die 1000 Times.";
		icon = "\kfb_assets\textures\achievements\KFB_Death1000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Ultimate Shitter";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileDeaths";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect5000
	{
		title = "Farmer I";
		description = "Earn 5k respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect5000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileScore";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 5000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect15000
	{
		title = "Farmer II";
		description = "Earn 15k respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect15000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_player_score";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 15000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect40000
	{
		title = "Farmer III";
		description = "Earn 40k respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect40000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileScore";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 40000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect80000
	{
		title = "Farmer IV";
		description = "Earn 80k respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect80000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileScore";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 80000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect100000
	{
		title = "Farmer V";
		description = "Earn 100k respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect100000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileScore";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect500000
	{
		title = "Farmer VI";
		description = "Earn 500k respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect500000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Farmer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileScore";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Respect1000000
	{
		title = "TWAT";
		description = "Earn 1m respect.";
		icon = "\kfb_assets\textures\achievements\KFB_Respect1000000.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Virgin";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "ExileScore";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Task1
	{
		title = "Adventure I";
		description = "Complete 1 task.";
		icon = "\kfb_assets\textures\achievements\KFB_Task1.paa";
		database_stat_name[] = {
			"stat_total_easy_task_completed",
			"stat_total_medium_task_completed",
			"stat_total_hard_task_completed"
		};

		class unlock_data 
		{	
			unlock_title = "First Time Adventurer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var[] = {
				"stat_total_easy_task_completed",
				"stat_total_medium_task_completed",
				"stat_total_hard_task_completed"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Task50
	{
		title = "Adventure II";
		description = "Complete 50 tasks.";
		icon = "\kfb_assets\textures\achievements\KFB_Task50.paa";
		database_stat_name[] = {
			"stat_total_easy_task_completed",
			"stat_total_medium_task_completed",
			"stat_total_hard_task_completed"
		};

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var[] = {
				"stat_total_easy_task_completed",
				"stat_total_medium_task_completed",
				"stat_total_hard_task_completed"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Task100
	{
		title = "Adventure III";
		description = "Complete 100 tasks.";
		icon = "\kfb_assets\textures\achievements\KFB_Task100.paa";
		database_stat_name[] = {
			"stat_total_easy_task_completed",
			"stat_total_medium_task_completed",
			"stat_total_hard_task_completed"
		};

		class unlock_data 
		{	
			unlock_title = "Dora the Explorer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var[] = {
				"stat_total_easy_task_completed",
				"stat_total_medium_task_completed",
				"stat_total_hard_task_completed"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Task500
	{
		title = "Adventure IV";
		description = "Complete 500 tasks.";
		icon = "\kfb_assets\textures\achievements\KFB_Task500.paa";
		database_stat_name[] = {
			"stat_total_easy_task_completed",
			"stat_total_medium_task_completed",
			"stat_total_hard_task_completed"
		};

		class unlock_data 
		{	
			unlock_title = "Task Manager";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var[] = {
				"stat_total_easy_task_completed",
				"stat_total_medium_task_completed",
				"stat_total_hard_task_completed"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Task1000
	{
		title = "Dedicated";
		description = "Complete 1000 tasks.";
		icon = "\kfb_assets\textures\achievements\KFB_Task1000.paa";
		database_stat_name[] = {
			"stat_total_easy_task_completed",
			"stat_total_medium_task_completed",
			"stat_total_hard_task_completed"
		};

		class unlock_data 
		{	
			unlock_title = "Task Master";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var[] = {
				"stat_total_easy_task_completed",
				"stat_total_medium_task_completed",
				"stat_total_hard_task_completed"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_KDR10
	{
		title = "Never Stay in One Spot";
		description = "Reach a KDR of 10.00";
		icon = "\kfb_assets\textures\achievements\KFB_KDR10.paa";
		database_stat_name[] = {
			"ExileKills",
			"ExileDeaths"
		};

		class unlock_data 
		{	
			unlock_title = "Ghost";
			unlock_condition = "KFB_StatSystem_CheckKillDeathRatio";
			unlock_var[] = {
				"ExileKills",
				"ExileDeaths"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_FirstRaid
	{
		title = "Raid Ready";
		description = "Plant your first explosive charge on a base.";
		icon = "\kfb_assets\textures\achievements\KFB_FirstRaid.paa";
		database_stat_name = "stat_total_breaching_charges_placed";

		class unlock_data 
		{	
			unlock_title = "Eager Raider";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_breaching_charges_placed";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Disarm40
	{
		title = "Body Parts Still Intact";
		description = "Disarm 40 mines.";
		icon = "\kfb_assets\textures\achievements\KFB_Disarm40.paa";
		database_stat_name = "stat_total_mines_disarmed";

		class unlock_data 
		{	
			unlock_title = "EOD Specialist";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_mines_disarmed";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 40;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_FlagSale
	{
		title = "Flag Sale";
		description = "Steal 30 flags.";
		icon = "\kfb_assets\textures\achievements\KFB_FlagSale.paa";
		database_stat_name = "stat_total_flags_taken";

		class unlock_data 
		{	
			unlock_title = "Thief";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_flags_taken";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 30;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Repair500
	{
		title = "Duckt Tape";
		description = "Repair 500 vehicles.";
		icon = "\kfb_assets\textures\achievements\KFB_Repair500.paa";
		database_stat_name = "stat_total_repairs";

		class unlock_data 
		{	
			unlock_title = "Mechanic";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_repairs";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_LongShot
	{
		title = "2000m Shot";
		description = "Make over 2000m shot.";
		icon = "\kfb_assets\textures\achievements\KFB_LongShot.paa";
		database_stat_name = "stat_longest_kill_distance";

		class unlock_data 
		{	
			unlock_title = "Sniper";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_longest_kill_distance";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 2000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Hack100
	{
		title = "FBI Watchlist";
		description = "Hack 100 containers.";
		icon = "\kfb_assets\textures\achievements\KFB_Hack100.paa";
		database_stat_name = "stat_total_containers_hacked";

		class unlock_data 
		{	
			unlock_title = "Hacker";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_containers_hacked";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Medic
	{
		title = "Medic";
		description = "Revive 100 players.";
		icon = "\kfb_assets\textures\achievements\KFB_Medic.paa";
		database_stat_name = "stat_total_revives";

		class unlock_data 
		{	
			unlock_title = "Medic";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_revives";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_LifeSavior
	{
		title = "Life Savior";
		description = "Revive 1000 players.";
		icon = "\kfb_assets\textures\achievements\KFB_LifeSavior.paa";
		database_stat_name = "stat_total_revives";

		class unlock_data 
		{	
			unlock_title = "Apothecary";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_revives";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Bambi50
	{
		title = "Bambi Invasion";
		description = "Kill 50 Bambis";
		icon = "\kfb_assets\textures\achievements\KFB_Bambi50.paa";
		database_stat_name = "stat_bambi_kill";

		class unlock_data 
		{	
			unlock_title = "Bambi Slayer";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_bambi_kill";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_MadLad
	{
		title = "Mad Lad";
		description = "Kill 100 players as mad passenger.";
		icon = "\kfb_assets\textures\achievements\KFB_MadLad.paa";
		database_stat_name = "stat_total_mad_passenger_kills";

		class unlock_data 
		{	
			unlock_title = "Madman";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_mad_passenger_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Humiliation
	{
		title = "Humiliation";
		description = "Kill 10 players with a shovel or axe.";
		icon = "\kfb_assets\textures\achievements\KFB_Humiliation.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Basher";
			unlock_condition = "KFB_StatSystem_CheckWeaponKills";
			unlock_var[] = {
				"Exile_Melee_Axe",
				"Exile_Melee_Shovel"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Raid100
	{
		title = "Less Talking More Raiding";
		description = "Get 100 raid kills.";
		icon = "\kfb_assets\textures\achievements\KFB_Raid100.paa";
		database_stat_name = "stat_total_raid_kills";

		class unlock_data 
		{	
			unlock_title = "Raider";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_raid_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Homie100
	{
		title = "Base Camper";
		description = "Get 100 homie kills.";
		icon = "\kfb_assets\textures\achievements\KFB_Homie100.paa";
		database_stat_name = "stat_total_homie_kills";

		class unlock_data 
		{	
			unlock_title = "Defender";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_homie_kills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Pistol100
	{
		title = "Wild West";
		description = "Kill 100 players with pistols or revolvers.";
		icon = "\kfb_assets\textures\achievements\KFB_Pistol100.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Cowboy";
			unlock_condition = "KFB_StatSystem_CheckWeaponKills";
			unlock_var[] = {
				"rhsusf_weap_m9",
				"rhsusf_weap_m1911a1",
				"rhsusf_weap_glock17g4",

				"rhs_weap_pp2000_folded",
				"rhs_weap_makarov_pm",
				"rhs_weap_pya",
				"rhs_weap_pb_6p9",
				"rhs_weap_6p53",
				"rhs_weap_type94_new",
				"rhs_weap_tt33",
				"rhs_weap_savz61_folded",
				//

				//NIARMS
				"hlc_pistol_C96_Wartime",
				"hlc_Pistol_M11",
				"hlc_pistol_Mk25",
				"hlc_pistol_P226WestGerman",
				"hlc_Pistol_P228",
				"hlc_Pistol_M11A1",
				"hlc_Pistol_M11A1D",
				"hlc_pistol_Mk25D",
				"hlc_pistol_Mk25TR",
				"hlc_pistol_P226US",
				"hlc_pistol_P226R",
				"hlc_pistol_P226R_Combat",
				"hlc_pistol_P226R_357Combat",
				"hlc_pistol_P226R_40Combat",
				"hlc_pistol_P226R_Elite",
				"hlc_pistol_P226R_357Elite",
				"hlc_pistol_P226R_40Elite",
				"hlc_pistol_P226R_40Enox",
				"hlc_pistol_P226R_Stainless",
				"hlc_pistol_P226R_357",
				"hlc_pistol_P226R_40",
				"hlc_pistol_P229R",
				"hlc_pistol_P229R_Combat",
				"hlc_pistol_P229R_357Combat",
				"hlc_pistol_P229R_40Combat",
				"hlc_pistol_P229R_40Enox",
				"hlc_pistol_P229R_357Stainless",
				"hlc_pistol_P229R_357",
				"hlc_pistol_P229R_40",
				"hlc_pistol_P229R_357Elite",
				"hlc_pistol_P229R_40Elite",
				"hlc_pistol_P239",
				"hlc_pistol_P239_357",
				"hlc_pistol_P239_40",
				//


				//EXILE
				"Exile_Weapon_TaurusGold",
				"hgun_ACPC2_F",
				"hgun_P07_F",
				"hgun_Pistol_Signal_F",
				"hgun_Pistol_heavy_01_F",
				"hgun_Pistol_heavy_02_F",
				"hgun_Rook40_F",

				"hgun_P07_khk_F",
				"hgun_Pistol_01_F"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Hotwire200
	{
		title = "Grand Theft Auto";
		description = "Hotwire 200 vehicles.";
		icon = "\kfb_assets\textures\achievements\KFB_Hotwire200.paa";
		database_stat_name = "stat_total_hotwire";

		class unlock_data 
		{	
			unlock_title = "Ah Shit Here We Go Again";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_hotwire";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 200;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Donate
	{
		title = "Donate Challenge";
		description = "Send a total of 1m to random people.";
		icon = "\kfb_assets\textures\achievements\KFB_Donate.paa";
		database_stat_name = "stat_total_donations";

		class unlock_data 
		{	
			unlock_title = "Mr. Beast";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_donations";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 1000000;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_GetHelp
	{
		title = "Get Help";
		description = "Suicide 500 times.";
		icon = "\kfb_assets\textures\achievements\KFB_GetHelp.paa";
		database_stat_name = "stat_total_suicides";

		class unlock_data 
		{	
			unlock_title = "1-800-273-8255";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_suicides";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 500;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Shotgun100
	{
		title = "Doom";
		description = "Kill 100 players with shotguns.";
		icon = "\kfb_assets\textures\achievements\KFB_Shotgun100.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Doom Marine";
			unlock_condition = "KFB_StatSystem_CheckWeaponKills";
			unlock_var[] = {
				"rhs_weap_M590_5RD",
				"rhs_weap_M590_8RD",
				"rhs_weap_Izh18",
				"hlc_rifle_saiga12k",
				"sgun_HunterShotgun_01_F"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_MachineGunner
	{
		title = "Brrrrrrrrrr";
		description = "Kill 100 players with Rheinmetall/MG42.";
		icon = "\kfb_assets\textures\achievements\KFB_MachineGunner.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Maschinengewehrschütze";
			unlock_condition = "KFB_StatSystem_CheckWeaponKills";
			unlock_var[] = {
				"hlc_lmg_MG42",
				"hlc_lmg_MG42KWS_t",
				"hlc_lmg_mg42kws_b",
				"hlc_lmg_mg42kws_g"	
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_TimeSpentInRadzone
	{
		title = "Chernobyl";
		description = "Stay in radzone for a total of 3 hours. (Can be done through multiple restarts)";
		icon = "\kfb_assets\textures\achievements\KFB_TimeSpentInRadzone.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Mutant";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_time_spent_in_radzone";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 10800;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Skulls
	{
		title = "Headhunter";
		description = "Bring 100 Skulls to Office Trader";
		icon = "\kfb_assets\textures\achievements\KFB_Skulls.paa";
		database_stat_name = "stat_total_skull";

		class unlock_data 
		{	
			unlock_title = "Headhunter";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_skull";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Roadkill100
	{
		title = "Fast N Furious";
		description = "Roadkill 100 players.";
		icon = "\kfb_assets\textures\achievements\KFB_Roadkill100.paa";
		database_stat_name = "stat_total_roadkills";

		class unlock_data 
		{	
			unlock_title = "";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_roadkills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 100;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_Roadkill300
	{
		title = "Blitzkrieg";
		description = "Roadkill 300 players.";
		icon = "\kfb_assets\textures\achievements\KFB_Roadkill300.paa";
		database_stat_name = "stat_total_roadkills";

		class unlock_data 
		{	
			unlock_title = "Mad Driver";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "stat_total_roadkills";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 300;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_LeeEnfieldChallenge
	{
		title = "Some Briish TWAT";
		description = "Kill 50 players with the Lee Enfield.";
		icon = "\kfb_assets\textures\achievements\KFB_LeeEnfieldChallenge.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "British";
			unlock_condition = "KFB_StatSystem_CheckWeaponKills";
			unlock_var[] = {
				"Exile_Weapon_LeeEnfield"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_RPGChallenge
	{
		title = "Akroblyat";
		description = "Kill 20 players with the RPG.";
		icon = "\kfb_assets\textures\achievements\KFB_RPGChallenge.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Explosive Temper";
			unlock_condition = "KFB_StatSystem_CheckWeaponKills";
			unlock_var[] = {
				"Kish_Weap_Treb_RPG7_F",
				"rhs_weap_rpg7",
				"rhs_weap_rpg26",
				"launch_RPG32_F"
			};
			unlock_var_type = "ARRAY"; //STRING OR ARRAY
			unlock_var_loc = "player";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_XPLevel10
	{
		title = "XP I";
		description = "Reach Level 10.";
		icon = "\kfb_assets\textures\achievements\KFB_XPLevel10.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Learner";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "life_currentExpLevel";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "script";
			unlock_var_win_condition = 10;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_XPLevel25
	{
		title = "XP II";
		description = "Reach Level 25.";
		icon = "\kfb_assets\textures\achievements\KFB_XPLevel25.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Experienced";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "life_currentExpLevel";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "script";
			unlock_var_win_condition = 25;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};

	class KFB_XPLevel50
	{
		title = "XP III";
		description = "Reach Level 50.";
		icon = "\kfb_assets\textures\achievements\KFB_XPLevel50.paa";
		database_stat_name = "";

		class unlock_data 
		{	
			unlock_title = "Veteran";
			unlock_condition = "KFB_StatSystem_CheckVarCondition";
			unlock_var = "life_currentExpLevel";
			unlock_var_type = "STRING"; //STRING OR ARRAY
			unlock_var_loc = "script";
			unlock_var_win_condition = 50;
			unlock_type = "SCALAR";

			//* UNLOCK TYPES
			//BOOL 		-Unlock var is simple true/false
			//STRING 	-Unlock var is a string
			//SCALAR 	-Unlock var is a number
			////////////////
		};
	};
};