/*


*/

disableSerialization;

diag_log "LOADING ACHIEVEMENTS IN XM8";

call ExAd_fnc_loadAchievements;

private _display = uiNameSpace getVariable ["RscExileXM8", displayNull];
(_display displayCtrl IDC_SET_TITLE_BUTTON) ctrlShow false;
