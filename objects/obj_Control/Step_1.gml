/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if (keyboard_check_released(vk_escape))
{
	if (gamePause)
	{
		if (health > 0)
		{
		global.bGameRunning = true;
		gamePause = false;
		instance_activate_layer("Instances");
		instance_activate_layer("Magic");
		instance_destroy(obj_Button_Quit);
		instance_destroy(obj_MenuBackground);
		}
	}
	else
	{
		global.bGameRunning = false;
		gamePause = true;
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Magic");
		instance_create_layer(vx + 170, vy + 100, "Obstacles", obj_Button_Quit);
		instance_create_layer(vx, vy, "Obstacles", obj_MenuBackground);
		//draw_sprite(spr_PauseBackground, 1, camera_get_view_border_x(view_camera[0]) - 400, camera_get_view_border_y(view_camera[0]) - 400);
	}
}

if (health = 0)
{
	if (happenOnce)
	{
		happenOnce = false;
		global.bGameRunning = false;
		instance_create_layer(vx, vy, "Obstacles", obj_MenuBackground);
		instance_create_layer(vx + 170, vy + 100, "Obstacles", obj_Button_PlayAgain);
		//health = 3;
		//draw_sprite(spr_PauseBackground, 1, camera_get_view_border_x(view_camera[0]) - 400, camera_get_view_border_y(view_camera[0]) - 400);
	}
}