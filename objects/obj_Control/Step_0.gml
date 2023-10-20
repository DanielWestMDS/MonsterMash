/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if (health = 0)
	{
		global.bGameRunning = false;
		instance_create_layer(vx + 170, vy + 100, "Obstacles", obj_Button_PlayAgain);
		instance_create_layer(vx, vy, "Obstacles", obj_MenuBackground);
		health = 3;
		//draw_sprite(spr_PauseBackground, 1, camera_get_view_border_x(view_camera[0]) - 400, camera_get_view_border_y(view_camera[0]) - 400);
	}