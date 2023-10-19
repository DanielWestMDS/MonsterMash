/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_text(0,50, "Lives : " + string(health));
if (health == 0)
{
	global.bGameRunning = false;
	draw_set_color(c_red);
	draw_text(600,300, "You lose");
}

if (gamePause == true)
{
	//draw_set_font(font0);
	//draw_set_halign(fa_center);
	
	draw_sprite(spr_PauseBackground, 1, camera_get_view_border_x(view_camera[0]), camera_get_view_border_y(view_camera[0]));
	draw_text(get_Middle_X, get_Middle_Y, "Game Paused");
}