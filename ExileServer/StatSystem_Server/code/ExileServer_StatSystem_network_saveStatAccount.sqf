//ExileServer_StatSystem_network_saveStatAccount
params["_player", "_playerUID"];

private _data1 = _player getVariable["stat_npc_kill", 0];
private _data2 = _player getVariable["stat_zombie_kill", 0];
private _data3 = _player getVariable["stat_bambi_kill", 0];
private _data4 = _player getVariable["stat_total_repairs", 0];
private _data5 = _player getVariable["stat_total_hotwire", 0];
private _data6 = _player getVariable["stat_total_bandage_used", 0];
private _data7 = _player getVariable["stat_total_vishpirin_used", 0];
private _data8 = _player getVariable["stat_total_instadoc_used", 0];
private _data9 = _player getVariable["stat_total_firstaid_used", 0];
private _data10 = _player getVariable["stat_total_easy_task_completed", 0];
private _data11 = _player getVariable["stat_total_medium_task_completed", 0];
private _data12 = _player getVariable["stat_total_hard_task_completed", 0];
private _data13 = _player getVariable["stat_total_flags_taken", 0];
private _data14 = _player getVariable["stat_total_black_market_items_bought", 0];
private _data15 = _player getVariable["stat_total_items_bought", 0];
private _data16 = _player getVariable["stat_total_distance_traveled", 0];
private _data17 = _player getVariable["stat_total_intel_gathered", 0];
private _data18 = _player getVariable["stat_total_mines_disarmed", 0];
private _data19 = _player getVariable["stat_spawn_data", []];
private _data20 = _player getVariable["stat_time_spent_outside_trader", 0];
private _data21 = _player getVariable["stat_time_spent_in_trader", 0];
private _data22 = _player getVariable["stat_time_spent_in_radzone", 0];
private _data23 = _player getVariable["stat_total_vehicle_rearmed", 0];
private _data24 = _player getVariable["stat_total_weed_gathered", 0];
private _data25 = _player getVariable["stat_total_exilecoin_spent", 0];
private _data26 = _player getVariable["stat_weapon_kill_data", []];
private _data27 = _player getVariable["stat_total_explosives_placed", 0];
private _data28 = _player getVariable["stat_total_quads_deployed", 0];
private _data29 = _player getVariable["stat_total_revives", 0];
private _data30 = _player getVariable["stat_total_times_revived", 0];
private _data31 = _player getVariable["stat_total_zcp_capped", 0];
private _data32 = _player getVariable["stat_total_breaching_charges_placed", 0];
private _data33 = _player getVariable["stat_longest_kill_distance", 0];
private _data34 = _player getVariable["stat_total_doors_grinded", 0];
private _data35 = _player getVariable["stat_total_homie_kills", 0];
private _data36 = _player getVariable["stat_total_raid_kills", 0];
private _data37 = _player getVariable["stat_total_donations", 0];
private _data38 = _player getVariable["stat_total_skull", 0];
private _data39 = _player getVariable["stat_total_containers_hacked", 0];
private _data40 = _player getVariable["stat_total_mad_passenger_kills", 0];
private _data41 = _player getVariable["stat_total_suicides", 0];
private _data42 = _player getVariable["stat_total_roadkills", 0];
private _data43 = _player getVariable["stat_total_demon_kills", 0];

//diag_log format["<StatSystem> saving stat_time_spent_in_trader %1", _data21];
//diag_log format["<StatSystem> saving stat_time_spent_in_radzone %1", _data22];

if (!((typeName _data19) isEqualTo "ARRAY")) then {
	_data19 = [];
};

if (!((typeName _data26) isEqualTo "ARRAY")) then {
	_data26 = [];
};

if ((_data1 isEqualTo 0) && (_data2 isEqualTo 0) && (_data3 isEqualTo 0) && (_data4 isEqualTo 0) && (_data5 isEqualTo 0) && (_data6 isEqualTo 0) && (_data7 isEqualTo 0) && (_data8 isEqualTo 0) && (_data9 isEqualTo 0) && (_data10 isEqualTo 0) && (_data11 isEqualTo 0) && (_data12 isEqualTo 0) && (_data13 isEqualTo 0) && (_data14 isEqualTo 0) && (_data15 isEqualTo 0) && (_data16 isEqualTo 0) && (_data17 isEqualTo 0) && (_data18 isEqualTo 0) && (_data19 isEqualTo []) && (_data20 isEqualTo 0) && (_data21 isEqualTo 0) && (_data22 isEqualTo 0) && (_data23 isEqualTo 0) && (_data24 isEqualTo 0) && (_data25 isEqualTo 0) && (_data26 isEqualTo []) && (_data27 isEqualTo 0) && (_data28 isEqualTo 0) && (_data29 isEqualTo 0) && (_data30 isEqualTo 0) && (_data31 isEqualTo 0) && (_data32 isEqualTo 0) && (_data33 isEqualTo 0) && (_data34 isEqualTo 0) && (_data35 isEqualTo 0) && (_data36 isEqualTo 0) && (_data37 isEqualTo 0) && (_data38 isEqualTo 0) && (_data39 isEqualTo 0) && (_data40 isEqualTo 0) && (_data41 isEqualTo 0) && (_data42 isEqualTo 0) && (_data43 isEqualTo 0)) exitWith 
{
	diag_log "<StatSystem> No need to save since all values are 0!";
};

private _data =
[
	_data1,
	_data2,
	_data3,
	_data4,
	_data5,
	_data6,
	_data7,
	_data8,
	_data9,
	_data10,
	_data11,
	_data12,
	_data13,
	_data14,
	_data15,
	_data16,
	_data17,
	_data18,
	_data19,
	_data20,
	_data21,
	_data22,
	_data23,
	_data24,
	_data25,
	_data26,
	_data27,
	_data28,
	_data29,
	_data30,
	_data31,
	_data32,
	_data33,
	_data34,
	_data35,
	_data36,
	_data37,
	_data38,
	_data39,
	_data40,
	_data41,
	_data42,
	_data43,
	_playerUID
];

private _extDB2Message = ["updateStatAccount", _data] call ExileServer_util_extDB2_createMessage;
_extDB2Message call ExileServer_system_database_query_fireAndForget;