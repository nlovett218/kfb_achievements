//KFB_StatSystem_CheckWeaponKills

params["_achievement", "_unlock_var", "_unlock_var_loc", "_unlock_var_win_condition", "_unlock_var_type"];

if (isNil '_achievement') exitWith {};

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementData = (_CfgAchievements >> _achievement);

private _conditionMeetsCriteria = false;

private _var = 0;

if ((typeName _unlock_var) isEqualTo "STRING") then {
	private _weaponArray = player getVariable["stat_weapon_kill_data", []];

	if (count _weaponArray <= 0) exitWith { [0, false] };

	private _weaponIndex = _weaponArray findIf { (_x select 0) isEqualTo _unlock_var };

	if (_weaponIndex >= 0) then {
		_var = _var + ((_weaponArray select _weaponIndex) select 1);
	};
};

if ((typeName _unlock_var) isEqualTo "ARRAY") then 
{
	{
		private _weaponArray = player getVariable["stat_weapon_kill_data", []];

		if (count _weaponArray <= 0) exitWith { [0, false] };

		private _weaponIndex = _weaponArray findIf { (_x select 0) isEqualTo _x };

		if (_weaponIndex >= 0) then {
			_var = _var + ((_weaponArray select _weaponIndex) select 1);
		};
	} forEach _unlock_var;
};

if (_var >= _unlock_var_win_condition) then {
	_conditionMeetsCriteria = true;
};

[_var, _conditionMeetsCriteria]