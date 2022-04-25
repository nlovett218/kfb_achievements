/*  
	fn_loadVGContent.sqf

	Copyright 2016 Jan Babor

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
*/
private ["_display","_error","_slides","_flag","_allowedVeh","_storedVeh","_strTxtVehCntColor","_strTxtVehCnt"];
disableSerialization;

diag_log "FILLING ACHIEVEMENTS IN LISTCTRL";
//diag_log _AchievementList;

_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
if (isNull _display) exitWith {_error = "Error loading XM8 Achievments app, display is null"; systemChat _error; diag_log _error;};

_slides = _display displayCtrl 4007;
if (isNull _slides) exitWith {_error = "Error loading XM8 Achievements app, slides control is null"; systemChat _error; diag_log _error;};

_strTxtVehCnt = [_display,"Achievements","SubTitle1Cnt"] call ExAd_fnc_getAppCtrl;
_strTxtVehCnt ctrlSetStructuredText parseText "<t size='1' align='left'>Achievements List</t>";

private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
private _AchievementList = getArray(_CfgAchievements >> "achievements");

[_AchievementList, ctrlIDC ([_display,"Achievements","AchievementList"] call ExAd_fnc_getAppCtrl)] call ExAd_fnc_fillAchievements;

/*for "_i" from 0 to 3 do {
	_index = lbAdd[ctrlIDC ([_display,"Achievements","AchievementList"] call ExAd_fnc_getAppCtrl),""];
};*/

private _setTitleButtonIdc = ctrlIDC ([_display,"Achievements","btnSetTitle"] call ExAd_fnc_getAppCtrl);
private _setTitleButton = (_display) displayCtrl _setTitleButtonIdc;
_setTitleButton ctrlShow false;

true