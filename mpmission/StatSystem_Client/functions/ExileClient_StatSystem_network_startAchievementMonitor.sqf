//KFB_StatSystem_startAchievementMonitor


params["_achievementsUnlocked"];

if (isNil '_achievementsUnlocked') exitWith {
	diag_log "<StatSystem> Attempt to monitor achievements but did not receive list of completed achievements from the server!";
};

if (isNil 'AchievementHandles') then {
	AchievementHandles = [];
};

if (isNil 'ExileClientSecondStatMonitorAttempt') then {
	ExileClientSecondStatMonitorAttempt = false;
};

if (((count _achievementsUnlocked) <= 0) && !(ExileClientSecondStatMonitorAttempt)) exitWith {

	[] spawn {
		diag_log "<StatSystem> Achievement data failed to retrieve! Client might not have any unlocked achievements. Retrying in 10 seconds...";
		sleep 10;
		ExileClientSecondStatMonitorAttempt = true;
		private _achievementsUnlocked = player getVariable["AchievementsUnlocked", []];
		[_achievementsUnlocked] call ExileClient_StatSystem_network_startAchievementMonitor;
	};

	false
};

/*else {
	diag_log "<StatSystem> Retrieved achievement data for client!";
};*/

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementList = getArray(_CfgAchievements >> "achievements");
private _achievementsToMonitor = [];

_AchievementList apply {
	if !(_x in _achievementsUnlocked) then {
		_achievementsToMonitor pushBackUnique _x;
	};
};
//private _achievementsMonitorHandles = AchievementHandles;

diag_log _AchievementList;
diag_log _achievementsToMonitor;

{
	terminate _x;
} forEach AchievementHandles;

{
	_achievementHandle = [_x] spawn 
	{
		params["_achievement"];
		diag_log format["<StatSystem> Start monitor for %1", _achievement];

		private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
		private _AchievementData = (_CfgAchievements >> _achievement);

		if (isNil '_AchievementData') exitWith {
			diag_log format["<StatSystem> Could not find achievement data for %1", _achievement];
		};

		private _unlock_data = (_AchievementData >> "unlock_data");
		private _conditionMeetsCriteria = false;

		while {not _conditionMeetsCriteria} do 
		{
			private _unlock_condition = getText(_unlock_data >> "unlock_condition");
			private _unlock_var = "";
			private _unlock_var_type = getText(_unlock_data >> "unlock_var_type");

			if (_unlock_var_type isEqualTo "STRING") then {
				_unlock_var = getText(_unlock_data >> "unlock_var");
			};
			
			if (_unlock_var_type isEqualTo "ARRAY") then {
				_unlock_var = getArray(_unlock_data >> "unlock_var");
			};

			private _unlock_var_loc = getText(_unlock_data >> "unlock_var_loc");
			private _unlock_type = getText(_unlock_data >> "unlock_type");
			private _unlock_var_win_condition = "";

			/*diag_log _unlock_condition;
			diag_log _unlock_var;
			diag_log _unlock_var_loc;
			diag_log _unlock_type;*/

			if (_unlock_type isEqualTo "STRING") then {
				_unlock_var_win_condition = getText(_unlock_data >> "unlock_var_win_condition");
			};
			
			if (_unlock_type isEqualTo "SCALAR") then {
				_unlock_var_win_condition = getNumber(_unlock_data >> "unlock_var_win_condition");
			};

			if (_unlock_type isEqualTo "BOOL") then {
				_unlock_var_win_condition = (_unlock_data >> "unlock_var_win_condition") call BIS_fnc_getCfgDataBool;
			};

			//diag_log _unlock_var_win_condition;

			private _unlock_condition_handle = [_achievement, _unlock_var, _unlock_var_loc, _unlock_var_win_condition, _unlock_type] call (missionNameSpace getVariable [_unlock_condition,{}]);

			if (!(typeName _unlock_condition_handle isEqualTo "ARRAY")) exitWith {
				diag_log "<StatSystem> BAD TYPE FOR UNLOCK CONDITION!";
			};

			if ((_unlock_condition_handle select 1) isEqualTo true) then {
				_conditionMeetsCriteria = true;
			};

			sleep 5;
		};

		if (_conditionMeetsCriteria) then {
			diag_log format["<StatSystem> Requesting unlock for %1", _achievement];

			ExileLastAchievementUnlocked = _achievement;
			["requestAchievementUnlock", [player, _achievement]] call ExileClient_system_network_send;
		} else
		{
			diag_log format["<StatSystem> Achievement %1 not yet unlocked", _achievement];
		};
	};

	AchievementHandles pushBack _achievementHandle;

	diag_log format["<StatSystem> New achievement %1 being monitored", _x];
} forEach _achievementsToMonitor;