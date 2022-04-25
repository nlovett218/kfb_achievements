//ExileClient_object_player_network_createPlayerResponse

/* Add this at the end of the file, before the 'true' */

private _achievementsUnlocked = player getVariable["AchievementsUnlocked", []];
[_achievementsUnlocked] call ExileClient_StatSystem_network_startAchievementMonitor;