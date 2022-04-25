//KFB_StatSystem_CheckKillDeathRatio

params["_achievement", "_unlock_var", "_unlock_var_loc", "_unlock_var_win_condition", "_unlock_var_type"];

if (isNil '_achievement') exitWith {};

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementData = (_CfgAchievements >> _achievement);

private _conditionMeetsCriteria = false;

private _var = 0;

private _kills = player getVariable[(_unlock_var select 0), 0];
private _deaths = player getVariable[(_unlock_var select 1), 1];

if (_deaths <= 0) then {
	_deaths = 1;
};

_var = (_kills / _deaths);

if (_var >= _unlock_var_win_condition) then {
	_conditionMeetsCriteria = true;
};

[_var, _conditionMeetsCriteria]