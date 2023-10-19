/// @description Insert description here
// You can write your code in this editor
if (global.bGameRunning)
{
	// die if hp below or at 0
	if (hp <= 0)
	{
		instance_destroy();
	}
	
	// movement
	// right
	if (direction >= 0 && direction < 90)
	{
		//sprite_index = spr_BloodWitchSide;
		image_xscale = -1
	}
	// up
	else if (direction >= 90 && direction < 180)
	{
		//sprite_index = spr_BloodWitchBack;
		image_xscale = 1
	}
	// left
	else if (direction >= 180 && direction < 270)
	{
		//sprite_index = spr_BloodWitchSide;
		image_xscale = 1
	}
	// down
	else if (direction >= 270 && direction <= 360)
	{
		//sprite_index = spr_BloodWitchForward;
		image_xscale = 1
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
}
else
{
	speed = 0;
}