/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
//draw_text(0,50, "Lives : " + string(health));
if (health == 0)
{
	global.bGameRunning = false;
	//draw_set_color(c_red);
	//draw_text(600,300, "You lose");
}

if (gamePause == true)
{
	//draw_set_font(font0);
	//draw_set_halign(fa_center);
	draw_set_color(c_black)
	draw_set_alpha(0.75)
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
	draw_set_alpha(1.0)
	draw_set_color(c_white)
	draw_set_font(fnt_MenuText)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.3,"...Game Paused...");
	instance_create_layer(RESOLUTION_W * 0.5,RESOLUTION_H * 0.4, "Obstacles", obj_Button_PauseMusic);
	for(var i = 0; i < array_length(pauseOption); i++)
	{
		var _print = "";
		if (i==pauseOptionSelected)
		{
			_print +="> " + pauseOption[i] + " <"
		}
		else
		{
			_print += pauseOption[i];
			draw_set_alpha(0.7)
		}
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 60 + (i *  60) , _print)
		draw_set_alpha(1.0)
	}	
}
	//draw_text(get_Middle_X, get_Middle_Y, "Game Paused");
