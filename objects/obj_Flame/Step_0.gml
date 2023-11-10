/// @description Insert description here
// You can write your code in this editor

var Player = instance_place(x, y, obj_Player);

if (Player != noone)
{
	show_debug_message("hit by shockwave I think");
	//instance_change(obj_BlobbyDestroy, false);
	if (global.flameColliding = false && global.invincible == false)
	{
		instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
		health -= 1;
		obj_Player.being_hit = true;
		obj_Player.hit_timer = 10;
		global.flameColliding = true;
	}
}


lifespan--;

if (lifespan <= 0)
{
	sprite_index = spr_FlameDestroy
}

