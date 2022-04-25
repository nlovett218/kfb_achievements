//ExileServer_StatSystem_network_onAction
private["_sessionID", "_paramaters", "_action", "_actionArguments"];

//params ["_sessionID", "_taskNum"]
_sessionID = _this select 0;
_paramaters = _this select 1;

//_taskNum = _paramaters select 0;
//diag_log _paramaters;

_action = _paramaters select 0;
_actionArguments = _paramaters select 1;

try {
	if (isNil '_action') then {
		throw "Invalid action";
	};

	private _playerObject = _sessionID call ExileServer_system_session_getPlayerObject;

	if (isNull _playerObject) then {
		throw "Invalid player";
	};

	switch (toLower _action) do 
	{

		case "onzedkill": {
			private _data = _playerObject getVariable["stat_zombie_kill", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_zombie_kill", _data, true];

			if (count _actionArguments > 0) then {
				private _zombieType = (_actionArguments select 0);

				if ("zombieboss" in (toLower _zombieType)) then {

					private _dataDemonKill = _playerObject getVariable["stat_total_demon_kills", 0];

					_dataDemonKill = _dataDemonKill + 1;

					_playerObject setVariable["stat_total_demon_kills", _dataDemonKill, true];

				};
			};
		};

		case "onnpckill": {
			private _data = _playerObject getVariable["stat_npc_kill", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_npc_kill", _data, true];
		};

		case "onbambikill": {
			private _data = _playerObject getVariable["stat_bambi_kill", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_bambi_kill", _data, true];
		};

		case "onrepairvehicle": {
			private _data = _playerObject getVariable["stat_total_repairs", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_repairs", _data, true];
		};

		case "onhotwirevehicle": {
			private _data = _playerObject getVariable["stat_total_hotwire", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_hotwire", _data, true];
		};

		case "onusebandage": {
			private _data = _playerObject getVariable["stat_total_bandage_used", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_bandage_used", _data, true];
		};

		case "onvishpirinused": {
			private _data = _playerObject getVariable["stat_total_vishpirin_used", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_vishpirin_used", _data, true];
		};

		case "oninstadocused": {
			private _data = _playerObject getVariable["stat_total_instadoc_used", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_instadoc_used", _data, true];
		};

		case "onfirstaidused": {
			private _data = _playerObject getVariable["stat_total_firstaid_used", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_firstaid_used", _data, true];
		};

		case "oneasytaskcompleted": {
			private _data = _playerObject getVariable["stat_total_easy_task_completed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_easy_task_completed", _data, true];
		};

		case "onmediumtaskcompleted": {
			private _data = _playerObject getVariable["stat_total_medium_task_completed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_medium_task_completed", _data, true];
		};

		case "onhardtaskcompleted": {
			private _data = _playerObject getVariable["stat_total_hard_task_completed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_hard_task_completed", _data, true];
		};

		case "onstealflag": {
			private _data = _playerObject getVariable["stat_total_flags_taken", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_flags_taken", _data, true];
		};

		case "onblackmarketpurchase": {
			private _data = _playerObject getVariable["stat_total_black_market_items_bought", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_black_market_items_bought", _data, true];
		};

		case "onitempurchase": {
			private _data = _playerObject getVariable["stat_total_items_bought", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_items_bought", _data, true];
		};

		case "ongatherintel": {
			private _data = _playerObject getVariable["stat_total_intel_gathered", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_intel_gathered", _data, true];
		};

		case "ondisarmmine": {
			private _data = _playerObject getVariable["stat_total_mines_disarmed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_mines_disarmed", _data, true];
		};

		case "onspawn": {
			/*private _data = _playerObject getVariable["stat_total_firstaid_used", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_firstaid_used", _data, true];*/
		};

		case "onsafezonetick": {

			if (count _actionArguments > 0) then 
			{
				private _time = (_actionArguments select 0);
				private _data = _playerObject getVariable["stat_time_spent_in_trader", 0];

				diag_log format["<StatSystem> Safe Zone Time: %1", _time];

				_data = _data + _time;

				diag_log format["<StatSystem> Safe Zone Data: %1", _data];

				_playerObject setVariable["stat_time_spent_in_trader", _data, true];
			};
			//stat_time_spend_in_trader

		};

		case "onradzonetick": {

			if (count _actionArguments > 0) then 
			{
				private _time = (_actionArguments select 0);
				private _data = _playerObject getVariable["stat_time_spent_in_radzone", 0];

				diag_log format["<StatSystem> Rad Zone Time: %1", _time];

				_data = _data + _time;

				diag_log format["<StatSystem> Rad Zone Data: %1", _data];

				_playerObject setVariable["stat_time_spent_in_radzone", _data, true];
			};
			//stat_time_spent_in_radzone

		};

		case "onthreadtick": {

			//if (count _actionArguments > 0) then 
			//{
				//private _time = if (typeName (_actionArguments select 0) isEqualTo "SCALAR") then { (_actionArguments select 0) } else { 0 };
				private _location = _playerObject getVariable["LastKnownLocation", (getPos _playerObject)];
				private _currentLocation = (getPos _playerObject);
				private _distance = _currentLocation distance _location;
				private _data = _playerObject getVariable["stat_total_distance_traveled", 0];

				_data = _data + _distance;

				_playerObject setVariable["stat_total_distance_traveled", _data, true];
				_playerObject setVariable["LastKnownLocation", (getPos _playerObject), true];
			//};
			//stat_time_spent_in_radzone

		};

		case "onrearmvehicle": {
			private _data = _playerObject getVariable["stat_total_vehicle_rearmed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_vehicle_rearmed", _data, true];
		};

		case "ongatherweed": {
			private _data = _playerObject getVariable["stat_total_weed_gathered", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_weed_gathered", _data, true];
		};

		case "onspendexilecoin": {
			if (count _actionArguments > 0) then 
			{
				private _amountDonated = if (typeName (_actionArguments select 0) isEqualTo "SCALAR") then { (_actionArguments select 0) } else { 0 };
				private _data = _playerObject getVariable["stat_total_exilecoin_spent", 0];

				_data = _data + _amountDonated;

				_playerObject setVariable["stat_total_exilecoin_spent", _data, true];
			};
		};

		case "onexplosiveplaced": {

			if !(_playerObject call ExileClient_util_world_isInTraderZone) then {
				private _data = _playerObject getVariable["stat_total_explosives_placed", 0];

				_data = _data + 1;

				_playerObject setVariable["stat_total_explosives_placed", _data, true];
			};
		};

		case "ondeployquad": {
			private _data = _playerObject getVariable["stat_total_quads_deployed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_quads_deployed", _data, true];
		};

		case "onreviveplayer": {
			private _data = _playerObject getVariable["stat_total_revives", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_revives", _data, true];
		};

		case "onrevived": {
			private _data = _playerObject getVariable["stat_total_times_revived", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_times_revived", _data, true];
		};

		case "oncapzcp": {
			private _data = _playerObject getVariable["stat_total_zcp_capped", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_zcp_capped", _data, true];
		};

		case "onplacebreachingcharge": {
			private _data = _playerObject getVariable["stat_total_breaching_charges_placed", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_breaching_charges_placed", _data, true];
		};

		case "ondoorgrinded": {
			private _data = _playerObject getVariable["stat_total_doors_grinded", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_doors_grinded", _data, true];
		};

		case "ondonation": {

			if (count _actionArguments > 0) then 
			{
				private _amountDonated = if (typeName (_actionArguments select 0) isEqualTo "SCALAR") then { (_actionArguments select 0) } else { 0 };
				private _data = _playerObject getVariable["stat_total_donations", 0];

				private _receiver = (_actionArguments select 1);
				private _receiverParty = [_receiver, (getPlayerUID _receiver)] call KFB_PartySystem_FindPartyWithMember;
				private _senderParty = [_playerObject, (getPlayerUID _playerObject)] call KFB_PartySystem_FindPartyWithMember;

				if !(_receiverParty isEqualTo _senderParty) then {

					_data = _data + _amountDonated;

					_playerObject setVariable["stat_total_donations", _data, true];
				};
			};
		};

		case "onskull": {
			private _amount = { _x isEqualTo "DDR_Item_Skull" } count (magazines _playerObject);
			private _data = _playerObject getVariable["stat_total_skull", 0];

			_data = _data + _amount;

			for "_i" from 1 to _amount do {
				_playerObject removeMagazineGlobal "DDR_Item_Skull";
			};

			_playerObject setVariable["stat_total_skull", _data, true];
		};

		case "onsuccessfulhack": {
			private _data = _playerObject getVariable["stat_total_containers_hacked", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_containers_hacked", _data, true];
		};

		case "onsuicide": {
			private _data = _playerObject getVariable["stat_total_suicides", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_suicides", _data, true];
		};

		case "ondemonkill": {
			private _data = _playerObject getVariable["stat_total_demon_kills", 0];

			_data = _data + 1;

			_playerObject setVariable["stat_total_demon_kills", _data, true];
		};

		case "onplayerkill": {
			private _weaponKillData = _playerObject getVariable["stat_weapon_kill_data", []];
			private _killDistance = _playerObject getVariable["stat_longest_kill_distance", 0];
			private _homieKills = _playerObject getVariable["stat_total_homie_kills", 0];
			private _raidKills = _playerObject getVariable["stat_total_raid_kills", 0];
			private _madPassengerKills = _playerObject getVariable["stat_total_mad_passenger_kills", 0];
			private _roadkills = _playerObject getVariable["stat_total_roadkills", 0];

			if (!((typeName _weaponKillData) isEqualTo "ARRAY")) then {
				_weaponKillData = [];
			};

			if (count _actionArguments > 0) then 
			{
				private _dist = _actionArguments select 1;
				private _isHomieKill = _actionArguments select 2;
				private _isRaidKill = _actionArguments select 3;
				private _isMadPassengerKill = _actionArguments select 4;
				private _isRoadkill = _actionArguments select 5;

				if (_dist > _killDistance) then {
					_playerObject setVariable["stat_longest_kill_distance", _dist, true];
				};

				if (_isHomieKill) then {
					_homieKills = _homieKills + 1;

					_playerObject setVariable["stat_total_homie_kills", _homieKills, true];
				};

				if (_isRaidKill) then {
					_raidKills = _raidKills + 1;

					_playerObject setVariable["stat_total_raid_kills", _raidKills, true];
				};

				if (_isMadPassengerKill) then {
					_madPassengerKills = _madPassengerKills + 1;

					_playerObject setVariable["stat_total_mad_passenger_kills", _madPassengerKills, true];
				};

				if (_isRoadkill) then {
					_roadkills = _roadkills + 1;

					_playerObject setVariable["stat_total_roadkills", _roadkills, true];
				};

				private _weaponArray = _playerObject getVariable["stat_weapon_kill_data", []];

				if (!((typeName _weaponArray) isEqualTo "ARRAY")) then {
					_weaponArray = [];
				};

				if (count _weaponArray <= 0) then {
					private _data = [
						(_actionArguments select 0),
						1
					];

					_weaponArray pushBack _data;
				}
				else 
				{
					private _weaponIndex = _weaponArray findIf { (_x select 0) isEqualTo (_actionArguments select 0) };

					if (_weaponIndex >= 0) then {
						private _kills = ((_weaponArray select _weaponIndex) select 1);
						_kills = _kills + 1;
						(_weaponArray select _weaponIndex) set [1, _kills];

					}
					else 
					{
						private _data = [
							(_actionArguments select 0),
							1
						];

						_weaponArray pushBack _data;
					};
				};

				_playerObject setVariable["stat_weapon_kill_data", _weaponArray, true];
			};

			_playerObject setVariable["stat_total_firstaid_used", _data, true];
		};
	};

	[_playerObject, (getPlayerUID _playerObject)] call ExileServer_StatSystem_network_saveStatAccount;
}
catch {
	diag_log format["<StatSystem> Exception thrown! %1", _exception];
};