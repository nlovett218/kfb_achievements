class CfgPatches
{
	class StatSystem_Server
	{
		requiredVersion = 0.1;
		requiredAddons[] = {"exile_client","exile_assets","exile_server_config","ExAd_Core"};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
	};
};
class CfgFunctions
{
    class StatSystem_Server
    {
        class Bootstrap
        {
            file = "StatSystem_Server\bootstrap";
            class preInit
            {
                preInit = 1;
            };
            class postInit
            {
                postInit = 1;
            };
        };
    };
};
class CfgNetworkMessages
{
    class statSystemOnActionUpdate
    {
        // Declare the module, this is part of the file name
        module = "StatSystem";

        // Declare the parameters, these are the typeNames of the fields in the package
        parameters[] = {
            "STRING",
            "ARRAY"
        };
    };

    class requestAchievementUnlock
    {
        // Declare the module, this is part of the file name
        module = "StatSystem";

        // Declare the parameters, these are the typeNames of the fields in the package
        parameters[] = {
            "OBJECT",
            "STRING"
        };
    };

    class updatePlayerTitleRequest
    {
        module = "StatSystem";

        parameters[] = {
            "STRING"
        };
    }
};
