//ExileClient_object_player_network_loadPlayerResponse.sqf

/* Add this at the very end, but before 'true' */

private _achievementsUnlocked = player getVariable["AchievementsUnlocked", []];
[_achievementsUnlocked] call ExileClient_StatSystem_network_startAchievementMonitor;