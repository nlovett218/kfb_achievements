/* CfgXm8 */

extraApps[] = {"Achievements"};

class Achievements
{
    title = "Achievements";
    controlID = 79000;                  //IDC:50000 -> 50015 || These need to be unique and out of range from each other
    logo = "\kfb_assets\textures\xm8\achievement.paa";
    onLoad = "ExAdClient\XM8\Apps\achievements\onLoad.sqf";
    onOpen = "ExAdClient\XM8\Apps\achievements\onOpen.sqf";
    onClose = "ExAdClient\XM8\Apps\achievements\onClose.sqf";
};	