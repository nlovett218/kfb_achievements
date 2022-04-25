/*  
	CfgHints.cpp

	Copyright 2016 Jan Babor

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
*/

class AchievementUnlocked
{
	displayName = "Achievement Unlocked";
	/*displayNameShort = "Your vehicle has been stored and is available through the Virtual Garage interface";*/
	description = "<t align='center'>You unlocked the achievement '%11'! %12</t>";
	image = "\kfb_assets\textures\xm8\AchievementUnlocked.paa";
	noImage = false;
	tip = "";
	arguments[] = {
		"ExileLastAchievementUnlocked call KFB_StatSystem_ReturnAchievementName",
		"ExileLastAchievementUnlocked call KFB_StatSystem_ReturnAchievementUnlockTitleHint"
	};
};
