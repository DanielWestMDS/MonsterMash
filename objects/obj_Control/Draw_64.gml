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
	
	//instance_create_layer(get_Middle_X, get_Middle_Y, "Instances", obj_Button_PauseMusic);
}
	//draw_text(get_Middle_X, get_Middle_Y, "Game Paused");

if (room == r_BloodWitch && global.bloodWitchDead)
{
	if (!legsDone)
	{
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
		draw_set_alpha(1.0)
		draw_set_color(c_white)
		draw_set_font(fnt_MenuText)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"use SHIFT to sprint");
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.8,"press ESC to continue");
	}
}

if (room == r_Blobby && global.blobbyDead)
{
	if (!armsDone)
	{
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
		draw_set_alpha(1.0)
		draw_set_color(c_white)
		draw_set_font(fnt_MenuText)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"use C to punch");
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.8,"press ESC to continue");
	}
}

if (room == r_Golem && global.golemDead)
{
	if (!chestDone)
	{
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
		draw_set_alpha(1.0)
		draw_set_color(c_white)
		draw_set_font(fnt_MenuText)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"use Z to become invincible");
		draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.8,"press ESC to continue");
	}
}