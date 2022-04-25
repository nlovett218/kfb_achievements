params["_achievement"];

private _name = "";

if (isNil '_achievement') exitWith { _name };

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementData = (_CfgAchievements >> _achievement);

private _title = getText(_AchievementData >> "title");

_title
