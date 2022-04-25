/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

if (!hasInterface || isServer) exitWith {};

private ['_code', '_function', '_file'];

{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;

    _code = compileFinal (preprocessFileLineNumbers _file);

    missionNamespace setVariable [_function, _code];
}
forEach
[
    ['KFB_StatSystem_CheckVarCondition','custom\StatSystem_Client\functions\KFB_StatSystem_CheckVarCondition.sqf'],
    ['KFB_StatSystem_CheckWeaponKills','custom\StatSystem_Client\functions\KFB_StatSystem_CheckWeaponKills.sqf'],
    ['KFB_StatSystem_CheckKillDeathRatio', 'custom\StatSystem_Client\functions\KFB_StatSystem_CheckKillDeathRatio.sqf'],
    ['KFB_StatSystem_CheckInTerritory','custom\StatSystem_Client\functions\KFB_StatSystem_CheckInTerritory.sqf'],
    ['KFB_StatSystem_ReturnAchievementUnlockTitleHint','custom\StatSystem_Client\functions\KFB_StatSystem_ReturnAchievementUnlockTitleHint.sqf'],
    ['KFB_StatSystem_ReturnAchievementName', 'custom\StatSystem_Client\functions\KFB_StatSystem_ReturnAchievementName.sqf'],
    ['KFB_StatSystem_onAction', 'custom\StatSystem_Client\functions\KFB_StatSystem_onAction.sqf'],
    ['KFB_StatSystem_onMonitorRadiationZone', 'custom\StatSystem_Client\functions\KFB_StatSystem_onMonitorRadiationZone.sqf'],
    ['KFB_StatSystem_onMonitorSafeZone', 'custom\StatSystem_Client\functions\KFB_StatSystem_onMonitorSafeZone.sqf'],
    ['KFB_StatSystem_onThreadTick', 'custom\StatSystem_Client\functions\KFB_StatSystem_onThreadTick.sqf'],
    ['ExileClient_StatSystem_network_startAchievementMonitor', 'custom\StatSystem_Client\functions\ExileClient_StatSystem_network_startAchievementMonitor.sqf']
];

/*waitUntil { alive player };

ExileClientStatSystemRadiationMonitorThread = [] spawn KFB_StatSystem_onMonitorRadiationZone;
ExileClientStatSystemSafeZoneMonitorThread = [] spawn KFB_StatSystem_onMonitorSafeZone;

ExileClientStatSystemThread = [] spawn KFB_StatSystem_onThreadTick;*/