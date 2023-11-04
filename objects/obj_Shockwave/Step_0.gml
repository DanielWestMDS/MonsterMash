/// @description Insert description here
// You can write your code in this editor

// deal damage if colliding with player
var Shockwave = instance_place(x, y, obj_Player);

if (Shockwave != noone)
{
	show_debug_message("hit by shockwave I think");
	//instance_change(obj_BlobbyDestroy, false);
	if (colliding = false && global.invincible == false)
	{
		instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
		health -= 1.5;
		obj_Player.being_hit = true;
		obj_Player.hit_timer = 10;
		colliding = true;
	}
}




