//ExileServer_StatSystem_network_loadStatAccount

params["_sessionID", "_player", "_playerUID"];

if (isNil "_player" || isNil "_playerUID") exitWith {
	diag_log "<StatSystem> Invalid call to loadStatAccount (params are nil)";
};

if (isNull _player) exitWith {
	diag_log "<StatSystem> Invalid player object";
};

diag_log format["<StatSystem> Load Stat Account for %1", _playerUID];

private _accountStatData = format["loadStats:%1", _playerUID] call ExileServer_system_database_query_selectSingle;

diag_log format["<StatSystem> Load Achievements for %1", _playerUID];
private _accountAchievementsUnlocked = format["loadAchievementsUnlocked:%1", _playerUID] call ExileServer_system_database_query_selectSingle;

if (isNil '_accountStatData') exitWith {
	diag_log format["<StatSystem> Unable to retrieve stats for uid %1", _playerUID];
};

diag_log _accountStatData;

//diag_log format["<StatSystem> stat_time_spent_in_trader %1", (_accountStatData select 21)];
//diag_log format["<StatSystem> stat_time_spent_in_radzone %1", (_accountStatData select 22)];

_player setVariable["stat_npc_kill", (_accountStatData select 0), true];
_player setVariable["stat_zombie_kill", (_accountStatData select 1), true];
_player setVariable["stat_bambi_kill", (_accountStatData select 2), true];
_player setVariable["stat_total_repairs", (_accountStatData select 3), true];
_player setVariable["stat_total_hotwire", (_accountStatData select 4), true];
_player setVariable["stat_total_bandage_used", (_accountStatData select 5), true];
_player setVariable["stat_total_vishpirin_used", (_accountStatData select 6), true];
_player setVariable["stat_total_instadoc_used", (_accountStatData select 7), true];
_player setVariable["stat_total_firstaid_used", (_accountStatData select 8), true];
_player setVariable["stat_total_easy_task_completed", (_accountStatData select 9), true];
_player setVariable["stat_total_medium_task_completed", (_accountStatData select 10), true];
_player setVariable["stat_total_hard_task_completed", (_accountStatData select 11), true];
_player setVariable["stat_total_flags_taken", (_accountStatData select 12), true];
_player setVariable["stat_total_black_market_items_bought", (_accountStatData select 13), true];
_player setVariable["stat_total_items_bought", (_accountStatData select 14), true];
_player setVariable["stat_total_distance_traveled", (_accountStatData select 15), true];
_player setVariable["stat_total_intel_gathered", (_accountStatData select 16), true];
_player setVariable["stat_total_mines_disarmed", (_accountStatData select 17), true];
_player setVariable["stat_spawn_data", (_accountStatData select 18), true];
_player setVariable["stat_time_spent_outside_trader", (_accountStatData select 19), true];
_player setVariable["stat_time_spent_in_trader", (_accountStatData select 20), true];
_player setVariable["stat_time_spent_in_radzone", (_accountStatData select 21), true];
_player setVariable["stat_total_vehicle_rearmed", (_accountStatData select 22), true];
_player setVariable["stat_total_weed_gathered", (_accountStatData select 23), true];
_player setVariable["stat_total_exilecoin_spent", (_accountStatData select 24), true];
_player setVariable["stat_weapon_kill_data", (_accountStatData select 25), true];
_player setVariable["stat_total_explosives_placed", (_accountStatData select 26), true];
_player setVariable["stat_total_quads_deployed", (_accountStatData select 27), true];
_player setVariable["stat_total_revives", (_accountStatData select 28), true];
_player setVariable["stat_total_times_revived", (_accountStatData select 29), true];
_player setVariable["stat_total_zcp_capped", (_accountStatData select 30), true];
_player setVariable["stat_total_breaching_charges_placed", (_accountStatData select 31), true];
_player setVariable["stat_longest_kill_distance", (_accountStatData select 32), true];
_player setVariable["stat_total_doors_grinded", (_accountStatData select 33), true];
_player setVariable["stat_total_homie_kills", (_accountStatData select 34), true];
_player setVariable["stat_total_raid_kills", (_accountStatData select 35), true];
_player setVariable["stat_total_donations", (_accountStatData select 36), true];
_player setVariable["stat_total_skull", (_accountStatData select 37), true];
_player setVariable["stat_total_containers_hacked", (_accountStatData select 38), true];
_player setVariable["stat_total_mad_passenger_kills", (_accountStatData select 39), true];
_player setVariable["stat_total_suicides", (_accountStatData select 40), true];
_player setVariable["stat_total_roadkills", (_accountStatData select 41), true];
_player setVariable["stat_total_demon_kills", (_accountStatData select 42), true];

_player setVariable["stat_player_kills", (_accountStatData select 43), true];
_player setVariable["stat_player_deaths", (_accountStatData select 44), true];
_player setVariable["stat_player_score", (_accountStatData select 45), true];

private _achievementsUnlocked = (_accountAchievementsUnlocked select 0); 
private _playerTitle = (_accountStatData select 46);

//diag_log _achievementsUnlocked;
//diag_log _playerTitle;
//diag_log "-------";
//diag_log _accountStatData;

if (isNil '_achievementsUnlocked') then {
	_achievementsUnlocked = [];
};

if (!((typeName _achievementsUnlocked) isEqualTo "ARRAY")) then {
	_achievementsUnlocked = [];
};

if (isNil '_playerTitle') then {
	_playerTitle = "";
};

_player setVariable["AchievementsUnlocked", _achievementsUnlocked, true];
_player setVariable["ExileCurrentPlayerTitle", _playerTitle, true];

diag_log _sessionID;


//["tvpstkoj", "startAchievementMonitor", [[]]] call ExileServer_system_network_send_to;
