/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left))
{
	if !(instance_exists(obj_Laser))
	{
		instance_create_layer(mouse_x, mouse_y, "Magic", obj_Laser);
	}
}
else
{
	instance_destroy(obj_Laser);
}

// Inherit the parent event
event_inherited();

