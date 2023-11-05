/// @description Insert description here
// You can write your code in this editor

/*// hurt player once
var player = instance_place(x, y, obj_Player);

if (player != noone)
{
	if (colliding = false && global.invincible == false)
	{
		instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
		health -= 0.5;
		obj_Player.being_hit = true;
		obj_Player.hit_timer = 10;
	}
	colliding = true;
}*/

if (lifespan <= 0)
{
	instance_destroy();
}
lifespan--;


