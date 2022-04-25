//ExileServer_object_player_database_load

/* 
	Add this after [_sessionID, _player] call ExileServer_system_session_update; 
	
*/

[_sessionID, _player, _playerUID] spawn ExileServer_StatSystem_network_loadStatAccount;
