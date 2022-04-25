private _conditionMeetsCriteria = false;

{
	if((getPlayerUID player) in (_x getVariable ["ExileTerritoryBuildRights",[]]))then
	{
		_conditionMeetsCriteria = true;
	};
}
forEach (allMissionObjects "Exile_Construction_Flag_Static");

if ("Exile_Item_Flag" in magazines player) then {
	_conditionMeetsCriteria = true;
};