/// @description Insert description here
// You can write your code in this editor

if (showing_dialog == true)
{
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = string_height(current_dialog.message);
	
	if(sprite_get_height(current_dialog.sprite) > height)
	{
		height = sprite_get_height(current_dialog.sprite);
	}
}
