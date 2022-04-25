/* KFB_StatSystem_onMonitorSafeZone */

while {true} do {
	waitUntil {sleep 3; ExilePlayerInSafezone};
	diag_log "<StatSystem> entered safe zone";
	ExilePlayerEnteredSafeZone = time;

	waitUntil {sleep 3; (ExilePlayerInSafezone isEqualTo false) || !(alive player)};
	diag_log "<StatSystem> left safe zone";
	ExilePlayerLeftSafeZone = time;

	["statSystemOnActionUpdate", ["onSafeZoneTick", [ExilePlayerLeftSafeZone - ExilePlayerEnteredSafeZone]]] call ExileClient_system_network_send;
};