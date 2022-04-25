//KFB_StatSystem_CheckVarCondition

params["_achievement", "_unlock_var", "_unlock_var_loc", "_unlock_var_win_condition", "_unlock_var_type"];

if (isNil '_achievement') exitWith {};

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementData = (_CfgAchievements >> _achievement);

private _conditionMeetsCriteria = false;
private _var = 0;

if (_unlock_var_type isEqualTo "SCALAR") then {

	if (_unlock_var_loc isEqualTo "player") then 
	{

		if ((typeName _unlock_var) isEqualTo "STRING") then {
			_var = player getVariable[_unlock_var, 0];
		};

		if ((typeName _unlock_var) isEqualTo "ARRAY") then 
		{
			{
				_var = _var + (player getVariable[_x, 0]);
			} forEach _unlock_var;
		};

		if (_var >= _unlock_var_win_condition) then {
			_conditionMeetsCriteria = true;
		};
	};

	if (_unlock_var_loc isEqualTo "script") then 
	{
		_var = call compile _unlock_var;

		if (_var >= _unlock_var_win_condition) then {
			_conditionMeetsCriteria = true;
		};

	};
};

if (_unlock_var_type isEqualTo "BOOL" || _unlock_var_type isEqualTo "STRING") then {

	if ((typeName _unlock_var) isEqualTo "ARRAY") exitWith {
		[_var, _conditionMeetsCriteria]
	};

	if (_unlock_var_loc isEqualTo "player") then 
	{
		_var = player getVariable[_unlock_var, ""];

		if (_var isEqualTo _unlock_var_win_condition) then {
			_var = 1;
			_conditionMeetsCriteria = true;
		}
		else {
			_var = 0;
		};
	};

	if (_unlock_var_loc isEqualTo "script") then 
	{
		_var = call compile _unlock_var;

		if (_var isEqualTo _unlock_var_win_condition) then {
			_var = 1;
			_conditionMeetsCriteria = true;
		}
		else {
			_var = 0;
		};

	};
};

[_var, _conditionMeetsCriteria]