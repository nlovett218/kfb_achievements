/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

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
    ['ExileServer_StatSystem_network_statSystemOnActionUpdate','StatSystem_Server\code\ExileServer_StatSystem_network_statSystemOnActionUpdate.sqf'],
    ['ExileServer_StatSystem_network_loadStatAccount', 'StatSystem_Server\code\ExileServer_StatSystem_network_loadStatAccount.sqf'],
    ['ExileServer_StatSystem_network_saveStatAccount', 'StatSystem_Server\code\ExileServer_StatSystem_network_saveStatAccount.sqf'],
    ['ExileServer_StatSystem_network_requestAchievementUnlock', 'StatSystem_Server\code\ExileServer_StatSystem_network_requestAchievementUnlock.sqf'],
    ['ExileServer_StatSystem_network_updatePlayerTitleRequest', 'StatSystem_Server\code\ExileServer_StatSystem_network_updatePlayerTitleRequest.sqf']
];

true
