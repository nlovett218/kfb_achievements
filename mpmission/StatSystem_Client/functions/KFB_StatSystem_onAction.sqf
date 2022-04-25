params["_action", "_update"];

if (isNil '_action' || isNil '_update') exitWith {
	diag_log "<StatSystem> Invalid call to onAction (one or both parameters are null)";
};

["statSystemOnActionUpdate", [_action, []]] call ExileClient_system_network_send;