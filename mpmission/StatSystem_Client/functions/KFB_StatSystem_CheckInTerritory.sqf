//KFB_StatSystem_CheckVarCondition

params["_achievement", "_unlock_var", "_unlock_var_loc", "_unlock_var_win_condition", "_unlock_var_type"];

if (isNil '_achievement') exitWith {};
 
private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementData = (_CfgAchievements >> _achievement);

private _var = 0;

private _conditionMeetsCriteria = false;

{
	if((getPlayerUID player) in (_x getVariable ["ExileTerritoryBuildRights",[]]))then
	{
		_var = _x getVariable ["ExileTerritoryLevel",0];
		
		if (_var >= _unlock_var_win_condition) then {
			_conditionMeetsCriteria = true;
		};
	};
}
forEach (allMissionObjects "Exile_Construction_Flag_Static");

if ("Exile_Item_Flag" in magazines player) then {
	_var = 1;

	if (_var >= _unlock_var_win_condition) then {
		_conditionMeetsCriteria = true;
	};
};

[_var, _conditionMeetsCriteria]