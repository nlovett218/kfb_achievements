/*  
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

private ["_list","_idc","_vehClass","_data","_name","_index","_pic"];

_list = _this select 0;
_idc = _this select 1;

lbClear _idc;

private _display = uiNameSpace getVariable["RscExileXM8", displayNull];
private _CfgAchievements = (missionConfigFile >> "CfgAchievements");

{
	//_vehClass = if(typeName _x isEqualTo "ARRAY")then{_x select 1}else{typeOf _x};
	_data = _x;

	//diag_log format ["filling %1", _data];

	private _AchievementData = (_CfgAchievements >> _data);

	_name = _x call KFB_StatSystem_ReturnAchievementName;
	_index = lbAdd[_idc,_name];

	//_pic = getText(configFile >> "CfgVehicles" >> _vehClass >> "picture");
	//lbSetPicture [_idc, _index, _pic];
	//lbSetPictureColor [_idc, _index, [1,1,1,1]];
	lbSetData [_idc, _index, _data];
	lbSetTooltip [_idc, _index, _description];
}forEach _list;

_index = 0;

if !(_display isEqualTo displayNull) then 
{

	private _listBox = (_display) displayCtrl _idc;

	{
		private _achievement = _listBox lbData _index;

		if !(isNil '_achievement') then {
			private _AchievementData = (_CfgAchievements >> _achievement);
			//_listBox lbSetColor [0, [0.5, 0.5, 0.5, 1]];
			//_listBox lbSetColorRight [0, [0.5, 0.5, 0.5, 1]];

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

			private _unlock_condition_handle = [_achievement, _unlock_var, _unlock_var_loc, _unlock_var_win_condition, _unlock_type] call (missionNameSpace getVariable [_unlock_condition,{}]);

			private _progress = _unlock_condition_handle select 0;

			if (_progress >= _maxValue) then {
				
				_listBox lbSetColor [_index, [1,1,1,1]];
				_listBox lbSetColorRight [_index, [1,1,1,1]];
			}
			else {
				//lbSetColor [_idc, _index, [1,1,1,1]];
				//lbSetColorRight [_idc, _index, [1,1,1,1]];

				_listBox lbSetColor [_index, [0.5, 0.5, 0.5, 1]];
				_listBox lbSetColorRight [_index, [0.5, 0.5, 0.5, 1]];
			};
		};
		_index = _index + 1;
	} forEach _list;
};

true