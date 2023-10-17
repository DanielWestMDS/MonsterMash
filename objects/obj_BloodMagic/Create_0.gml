/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x, y, obj_Player.x, obj_Player.y);

range = 200;

function magic_destroy()
{
	speed = 0;
	instance_change(obj_BloodMagicExplode, false);
}