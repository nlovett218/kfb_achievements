/* KFB_StatSystem_onMonitorRadiationZone */

while {true} do {
	waitUntil {sleep 3; ExilePlayerRadiation > 0};
	diag_log "<StatSystem> entered radiation zone";
	ExilePlayerEnteredRadiationZone = time;

	waitUntil {sleep 3; (ExilePlayerRadiation isEqualTo 0) || !(alive player)};
	diag_log "<StatSystem> left radiation zone";
	ExilePlayerLeftRadiationZone = time;

	["statSystemOnActionUpdate", ["onRadZoneTick", [ExilePlayerLeftRadiationZone - ExilePlayerEnteredRadiationZone]]] call ExileClient_system_network_send;
};