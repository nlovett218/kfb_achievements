//StatSystem_UnlockAchievement
private["_sessionID", "_paramaters", "_player", "_achievement"];

//params ["_sessionID", "_taskNum"]
_sessionID = _this select 0;
_paramaters = _this select 1;

_player = _paramaters select 0;
_achievement = _paramaters select 1;

if (isNil '_player' || isNil '_achievement') exitWith {
	diag_log "<StatSystem> Attempt to call requestAchievementUnlock with nil params";
};

if (isNull _player) exitWith {
	diag_log "<StatSystem> Attempt to call requestAchievementUnlock but player is null";
};

private _achievementsUnlocked = _player getVariable["AchievementsUnlocked", []];

_achievementsUnlocked pushBackUnique _achievement;

_player setVariable["AchievementsUnlocked", _achievementsUnlocked, true];

format["updateUnlockedAchievements:%1:%2", _achievementsUnlocked, (getPlayerUID _player)] call ExileServer_system_database_query_fireAndForget;

[["advancedHint", ["AchievementUnlocked",[]]], owner _player] call ExAdServer_fnc_clientDispatch;

if (_achievement isEqualTo "KFB_Welcome") then {

	private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
	private _AchievementData = (_CfgAchievements >> _achievement);

	private _unlock_data = (_AchievementData >> "unlock_data");

	if (isNil '_unlock_data') exitWith { diag_log "<StatSystem> Attempt to set player title but unlock_data is nil"; };

	private _unlock_title = getText(_unlock_data >> "unlock_title");

	format["setPlayerTitle:%1:%2", _unlock_title, (getPlayerUID _player)] call ExileServer_system_database_query_fireAndForget;

	_player setVariable["ExileCurrentPlayerTitle", _unlock_title, true];
};