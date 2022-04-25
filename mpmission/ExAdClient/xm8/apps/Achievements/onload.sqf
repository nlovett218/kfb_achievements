/*  
	onLoad.sqf

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
params["_display","_slide","_idc"];

_pW = 0.025;
_pH = 0.04;
_leftCol = 1;
_leftColW = 12.8;
_rightCol = _leftCol + _leftColW + 2;
_rightColW = _leftColW + 3;
_margin = 0.2;

//[_display,_slide,(["Achievements","backButton"] call ExAd_fnc_getNextIDC),[27.6 * _pW, 17.7 * _pH, 6 * _pW, 1 * _pH],format["[_this select 0,%1,%2,%3] call fn_onAchievementChanged",_idcInfoPic,_idcInfoStr,_idcSetTitleButton],STR_ExAd_VG_APP_BTN_BACK] call ExAd_fnc_createButton;

[_display,_slide,(["Achievements","backButton"] call ExAd_fnc_getNextIDC),[27.6 * _pW, 17.7 * _pH, 6 * _pW, 1 * _pH],'["extraApps", 1] call ExileClient_gui_xm8_slide;',STR_ExAd_VG_APP_BTN_BACK] call ExAd_fnc_createButton;

_idcInfoPic = ["Achievements","InfoPic"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcInfoPic,[(_rightCol + 4.5) * _pW, 4 * _pH, 6.75 * _pW, 7.25 * _pH],"",[1,1,1,1],false,true,""] call ExAd_fnc_createPicture;

_idcInfoStr = ["Achievements","InfoStr"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcInfoStr,[(_rightCol + _margin) * _pW, (4 + _margin) * _pH, (_rightColW - 2 * _margin) * _pW, (13.5 - 2 * _margin) * _pH],"","PuristaMedium",0.75,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

_idcSetTitleButton = ["Achievements","btnSetTitle"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcSetTitleButton,[(_rightCol + 4.75) * _pW, 16.25 * _pH, 6 * _pW, 1 * _pH],'[ExileSelectedAchievement] call fn_onSetPlayerTitle',"SET AS TITLE"] call ExAd_fnc_createButton;

_idcCheevoList = ["Achievements","AchievementList"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcCheevoList,[_leftCol * _pW, 4 * _pH, _leftColW * _pW, 13.8 * _pH],format["[_this select 0,%1,%2,%3] call fn_onAchievementChanged",_idcInfoPic,_idcInfoStr,_idcSetTitleButton],""] call ExAd_fnc_createList;

[_display,_slide,(["Achievements","InfoBgBox"] call ExAd_fnc_getNextIDC),[_rightCol * _pW, 4 * _pH, _rightColW * _pW, 13.5 * _pH]] call ExAd_fnc_createBackgroundGUI;
[_display,_slide,(["ExAd_VG","InfoTitle"] call ExAd_fnc_getNextIDC),[_rightCol * _pW, 2.75 * _pH, _rightColW * _pW, 1 * _pH],"Achievement Info","PuristaMedium",1.2,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

[_display,_slide,(["Achievements","SubTitle1Cnt"] call ExAd_fnc_getNextIDC),[_leftCol * _pW, 3 * _pH, _leftColW * _pW, 1 * _pH],"","PuristaMedium",1,"#ffffff","right",1] call ExAd_fnc_createStructuredText;

/*Stored Vehicle Details*/
/*[_display,_slide,(["ExAd_VG","InfoTitle"] call ExAd_fnc_getNextIDC),[_rightCol * _pW, 2.75 * _pH, _rightColW * _pW, 1 * _pH],STR_ExAd_VG_APP_TTL_DETAILS,"PuristaMedium",1.2,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

[_display,_slide,(["ExAd_VG","InfoBgBox"] call ExAd_fnc_getNextIDC),[_rightCol * _pW, 4 * _pH, _rightColW * _pW, 13.5 * _pH]] call ExAd_fnc_createBackgroundGUI;

_idcInfoPic = ["ExAd_VG","InfoPic"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcInfoPic,[(_rightCol + 9) * _pW, 4 * _pH, 6.75 * _pW, 5.5 * _pH],"",[1,1,1,1],false,true,""] call ExAd_fnc_createPicture;

_idcInfoStr = ["ExAd_VG","InfoVehStr"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcInfoStr,[(_rightCol + _margin) * _pW, (4 + _margin) * _pH, (_rightColW - 2 * _margin) * _pW, (13.5 - 2 * _margin) * _pH],"","PuristaMedium",0.75,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

[_display,_slide,(["ExAd_VG","InfoCBStr"] call ExAd_fnc_getNextIDC),[(_rightCol + _margin + 0.4) * _pW, (16.5 - _margin + 0.25	) * _pH, (_rightColW - 2 * _margin) * _pW, (13.5 - 2 * _margin) * _pH],STR_ExAd_VG_APP_CB_SECRET,"PuristaMedium",0.65,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

[_display,_slide,(["ExAd_VG","InfoCB"] call ExAd_fnc_getNextIDC),[(_rightCol + _margin) * _pW, (16.5 - _margin + 0.2) * _pH, 0.75 * _pW, 0.75 * _pH],'profileNamespace setVariable["ExAd_StreamFriendlyUI",_this select 1]',"Toogle - Stream friendly UI"] call ExAd_fnc_createCheckBox;


[_display,_slide,(["ExAd_VG","SubTitle1"] call ExAd_fnc_getNextIDC),[_leftCol * _pW, 2.75 * _pH, _leftColW * _pW, 1 * _pH],STR_ExAd_VG_APP_TTL_STORED,"PuristaMedium",1.2,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

[_display,_slide,(["ExAd_VG","SubTitle1Cnt"] call ExAd_fnc_getNextIDC),[_leftCol * _pW, 3 * _pH, _leftColW * _pW, 1 * _pH],"","PuristaMedium",1,"#ffffff","right",1] call ExAd_fnc_createStructuredText;

_idcStoredVehList = ["ExAd_VG","StoreVehList"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcStoredVehList,[_leftCol * _pW, 4 * _pH, _leftColW * _pW, 5 * _pH],format["[_this select 0,%1,%2] call XM8_VG_elChanged",_idcInfoPic,_idcInfoStr],""] call ExAd_fnc_createList;

[_display,_slide,(["ExAd_VG","fetchButton"] call ExAd_fnc_getNextIDC),[_leftCol*_pW, 9*_pH, _leftColW*_pW, 1*_pH],format["disableUserInput true;['VGLoad', %1] call ExAd_fnc_onBtnClickVG",_idcStoredVehList],STR_ExAd_VG_APP_BTN_FETCH,""] call ExAd_fnc_createButton;


[_display,_slide,(["ExAd_VG","SubTitle2"] call ExAd_fnc_getNextIDC),[_leftCol * _pW, 10.25 * _pH, _leftColW * _pW, 1 * _pH],STR_ExAd_VG_APP_TTL_NEAR,"PuristaMedium",1.2,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

_idcNearVehList = ["ExAd_VG","NearVehicleList"] call ExAd_fnc_getNextIDC;
[_display,_slide,_idcNearVehList,[_leftCol * _pW, 11.5 * _pH, _leftColW * _pW, 5 * _pH],"",""] call ExAd_fnc_createList;

[_display,_slide,(["ExAd_VG","storeButton"] call ExAd_fnc_getNextIDC),[_leftCol * _pW, 16.5 * _pH, _leftColW * _pW, 1 * _pH],format["if(call ExAd_fnc_allowVGStore)then{disableUserInput true;['VGStore', %1] call ExAd_fnc_onBtnClickVG}else{['ErrorTitleAndText', ['ExAd - Virtual Garage', '%2']] call ExileClient_gui_toaster_addTemplateToast}",_idcNearVehList,STR_ExAd_VG_NOTI_FULL],STR_ExAd_VG_APP_BTN_STORE,""] call ExAd_fnc_createButton;

XM8_VG_elChanged = {
	params ["_listCtrl","_picCtrl","_strCtrl","_ref","_data","_pic"];
	
	_ref = _listCtrl lbData (lbCurSel _listCtrl);
	_data = {if(str (_x select 0) == _ref)exitWith{_x}}forEach ((objectFromNetId ExAdCurFlagNetId) getVariable["ExAdVGVeh",[]]);
	if(!isNil "_data")then{
		_pic = getText(configFile >> "CfgVehicles" >> (_data select 1) >> "picture");
		ctrlSetText [_picCtrl, _pic];
		["requestVGDetailInfo", [_ref, ExAdCurFlagNetId, (profileNamespace getVariable["ExAd_StreamFriendlyUI",0]), netId player, _strCtrl]] call ExAd_fnc_serverDispatch;
	}else{
		ctrlSetText [_picCtrl, ""];
		["",_strCtrl] call ExAd_fnc_loadVGDetailView;
	}
};*/

IDC_SET_TITLE_BUTTON = _idcSetTitleButton;


fn_onSetPlayerTitle = {
	params["_achievement"];

	if (isNil '_achievement') exitWith { diag_log "<StatSystem> Attempt to set player title, but title is nil!"; };

	["updatePlayerTitleRequest", [_achievement]] call ExileClient_system_network_send;
};

fn_onAchievementChanged = {
	params ["_listCtrl","_picCtrl","_strCtrl","_titleCtrl","_ref","_data","_pic"];
	disableSerialization;

	_ref = _listCtrl lbData (lbCurSel _listCtrl);

	private _CfgAchievements = (missionConfigFile >> "CfgAchievements");
	private _AchievementData = (_CfgAchievements >> _ref);

	diag_log _ref;
	//diag_log _data;

	if (_ref isEqualTo "") exitWith {
		private _display = uiNameSpace getVariable ["RscExileXM8", displayNull];

		if!(_display isEqualTo displayNull) then {
			(_display displayCtrl _strCtrl) ctrlSetStructuredText parseText "";
		};
	};

	if (!(isNil '_AchievementData')) then {
		ExileSelectedAchievement = _ref;
		_pic = getText(_AchievementData >> "icon");
		private _description = getText(_AchievementData >> "description");
		private _name = getText(_AchievementData >> "title");
		private _unlock_data = (_AchievementData >> "unlock_data");
		private _maxValue = 1;

		private _unlock_condition = getText(_unlock_data >> "unlock_condition");
		private _unlock_var = "";
		private _unlock_var_type = getText(_unlock_data >> "unlock_var_type");
		private _title = getText(_unlock_data >> "unlock_title");

		if (_unlock_var_type isEqualTo "STRING") then {
			_unlock_var = getText(_unlock_data >> "unlock_var");
		};
		
		if (_unlock_var_type isEqualTo "ARRAY") then {
			_unlock_var = getArray(_unlock_data >> "unlock_var");
		};

		private _unlock_var_loc = getText(_unlock_data >> "unlock_var_loc");
		private _unlock_type = getText(_unlock_data >> "unlock_type");
		private _unlock_var_win_condition = "";

		private _unlock_type = getText(_unlock_data >> "unlock_type");

		if (_unlock_type isEqualTo "SCALAR") then {
			_maxValue = getNumber(_unlock_data >> "unlock_var_win_condition");
		};

		if (_unlock_type isEqualTo "STRING") then {
			_unlock_var_win_condition = getText(_unlock_data >> "unlock_var_win_condition");
		};
		
		if (_unlock_type isEqualTo "SCALAR") then {
			_unlock_var_win_condition = getNumber(_unlock_data >> "unlock_var_win_condition");
		};

		if (_unlock_type isEqualTo "BOOL") then {
			_unlock_var_win_condition = (_unlock_data >> "unlock_var_win_condition") call BIS_fnc_getCfgDataBool;
		};

		private _unlock_condition_handle = [_ref, _unlock_var, _unlock_var_loc, _unlock_var_win_condition, _unlock_type] call (missionNameSpace getVariable [_unlock_condition,{}]);

		private _progress = _unlock_condition_handle select 0;

		/*if (_unlock_type isEqualTo "BOOL") then {
			_maxValue = (_unlock_data >> "unlock_var_win_condition") call BIS_fnc_getCfgDataBool;
		};*/

		ctrlSetText [_picCtrl, _pic];

		private _display = uiNameSpace getVariable ["RscExileXM8", displayNull];

		if(isNull _display)exitWith{false};

		private _strTitle = if (_title isEqualTo "") then { "" } else { format["TITLE UNLOCKED: %1", _title] };

		private _strUnlockTitle = if (_title isEqualTo "") then { "" } else { format["UNLOCKS TITLE: %1", _title] };

		if (_progress >= _maxValue) then {


			if (_title isEqualTo "") then {
				(_display displayCtrl _titleCtrl) ctrlShow false;
			}
			else {
				(_display displayCtrl _titleCtrl) ctrlShow true;
			};


			if (_ref in ["KFB_Respect1000000", "KFB_Donate"]) then {
				_maxValue = "1m";
			};
			if (_ref in ["KFB_TimeSpentInRadzone"]) then {
				_progress = format["%1hr", ((_progress / 3600) toFixed 2)];
				_maxValue = "3hr";
			};
			(_display displayCtrl _strCtrl) ctrlSetStructuredText parseText format["<br /><br /><br /><br /><br /><br /><br /><t size='0.8' align='center'>%1<br/>%2<br/></t><br /><t align='center'>Progress:</t><t align='center' color='#00FF00'>UNLOCKED!</t><br /><t size='0.8' align='center'>%5</t>", _name, _description, _progress, _maxValue, _strTitle];
		}
		else {

			(_display displayCtrl _titleCtrl) ctrlShow false;
			
			if (_ref in ["KFB_Respect1000000", "KFB_Donate"]) then {
				_maxValue = "1m";
			};
			if (_ref in ["KFB_TimeSpentInRadzone"]) then {
				_progress = format["%1hr", ((_progress / 3600) toFixed 2)];
				_maxValue = "3hr";
			};
			(_display displayCtrl _strCtrl) ctrlSetStructuredText parseText format["<br /><br /><br /><br /><br /><br /><br /><t size='0.8' align='center'>%1<br/>%2<br/></t><br /><t align='center'>Progress: %3/%4</t><br /><t size='0.8' align='center'>%5</t>", _name, _description, _progress, _maxValue, _strUnlockTitle];
		};
		//diag_log _pic;
	};
};

true