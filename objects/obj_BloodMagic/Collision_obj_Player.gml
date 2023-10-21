/// @description Insert description here
// You can write your code in this editor

magic_destroy();
if (global.invincible == false)
{
	instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
	health--;
	obj_Player.being_hit = true;
	obj_Player.hit_timer = 10;
}