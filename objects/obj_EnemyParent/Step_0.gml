/// @description Insert description here
// You can write your code in this editor
if (global.bGameRunning)
{
	// die if hp below or at 0
	if (hp <= 0)
	{
		instance_destroy();
	}
	
	// hit flash
	if (being_hit)
	{
		hit_timer--;
		if (hit_timer <= 0)
		{
			being_hit = false;
		}
	}
	
	// movement animations
	// right
	if (direction >= 0 && direction < 90)
	{
		sprite_index = sideSprite;
		image_xscale = -1
	}
	// up
	else if (direction >= 90 && direction < 180)
	{
		sprite_index = upSprite;
		image_xscale = 1
	}
	// left
	else if (direction >= 180 && direction < 270)
	{
		sprite_index = sideSprite;
		image_xscale = 1
	}
	// down
	else if (direction >= 270 && direction <= 360)
	{
		sprite_index = downSprite;
		image_xscale = 1
	}
	
	if (speed = 0 && sprite_index != idleSprite)
	{
		sprite_index = idleSprite;
		image_xscale = 1
	}
}
else
{
	sprite_index = idleSprite;
	speed = 0;
}