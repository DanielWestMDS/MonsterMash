/// @description Insert description here
// You can write your code in this editor


if (global.bGameRunning)
{	
	if (timer <= 0)
	{
		direction = random_range(0, 360);
		timer = 100;
	}
	timer--;
	speed = 1;
	
	// deal damage if colliding with player
	var player = instance_place(x, y, obj_Player);

	if (player != noone)
	{
		show_debug_message("hit by blobby I think");
		//instance_change(obj_BlobbyDestroy, false);
		if (colliding = false)
		{
			health--;
			obj_Player.being_hit = true;
			obj_Player.hit_timer = 10;
		}
		colliding = true;
	}
	else
	{
		colliding = false;
	}
	
	if (lifespan <= 0)
	{
		instance_destroy();
	}
	lifespan--;
}


// Inherit the parent event
event_inherited();

