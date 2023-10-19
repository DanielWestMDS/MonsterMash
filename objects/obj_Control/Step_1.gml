/// @description Insert description here
// You can write your code in this editor


if (keyboard_check_released(vk_escape))
{
	if (gamePause)
	{
		global.bGameRunning = true;
		gamePause = false;
		instance_activate_layer("Instances");
		instance_activate_layer("Magic");
	}
	else
	{
		global.bGameRunning = false;
		gamePause = true;
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Magic");
	}
}
