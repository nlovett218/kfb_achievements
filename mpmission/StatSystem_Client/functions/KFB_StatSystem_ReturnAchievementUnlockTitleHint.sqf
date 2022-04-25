params["_achievement"];

private _hint = "";

if (isNil '_achievement') exitWith { _hint };

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementData = (_CfgAchievements >> _achievement);

private _unlock_data = (_AchievementData >> "unlock_data");

if (isNil '_unlock_data') exitWith { _hint };

private _unlock_title = getText(_unlock_data >> "unlock_title");
private _titleMsg = "";

if (!(_unlock_title isEqualTo "")) then 
{
	_titleMsg = format["You unlocked the title '%1'!", _unlock_title]
};

_titleMsg
