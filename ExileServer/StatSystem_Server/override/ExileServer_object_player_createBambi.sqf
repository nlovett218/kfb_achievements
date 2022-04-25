//ExileServer_object_player_createBambi

/* Add this at the very end, but before 'true' */

[_sessionID, _bambiPlayer, (getPlayerUID _requestingPlayer)] spawn ExileServer_StatSystem_network_loadStatAccount;