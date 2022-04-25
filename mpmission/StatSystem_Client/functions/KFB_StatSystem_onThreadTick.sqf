/* KFB_StatSystem_onMonitorSafeZone */

diag_log "<StatSystem> monitor thread tick";

while {true} do {
	waitUntil {sleep 10; alive player};
	//ExilePlayerEnteredSafeZone = time;
	diag_log "<StatSystem> update location";

	["statSystemOnActionUpdate", ["onThreadTick", []]] call ExileClient_system_network_send;
};