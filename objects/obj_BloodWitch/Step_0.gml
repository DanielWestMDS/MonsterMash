/// @description Insert description here
// You can write your code in this editor
if (global.bGameRunning)
{
	
	// projectile firing
	if (magicTimer <= 0)
	{
		// remember to add sound file
		//audio_play_sound(ToBeAdded, 1, false);
	
		Magic = instance_create_layer(x, y, "Magic", obj_BloodMagic) // create the bullet 
		Magic.speed = 5
		Magic.direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	
	
		magicTimer = 100;
	}
	magicTimer--;
	
	if (!(global.arm == armState.base && global.leg == armState.base && global.torso == armState.base))
	{
		if (stunTimer <= 0)
		{
			global.maxSpeed = 0;
			if (stunTimer <= -120)
			{
				global.maxSpeed = tempSpeed;
				stunTimer = 200;
			}
		}
		stunTimer--;
	}
	
	// movement
	if (distance_to_object(obj_Player) > 70)
	{
		speed = 2;
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
		
		// right
		if (direction >= 0 && direction < 90)
		{
			sprite_index = spr_BloodWitchSide;
			image_xscale = -1
		}
		// up
		else if (direction >= 90 && direction < 180)
		{
			sprite_index = spr_BloodWitchBack;
			image_xscale = 1
		}
		// left
		else if (direction >= 180 && direction < 270)
		{
			sprite_index = spr_BloodWitchSide;
			image_xscale = 1
		}
		// down
		else if (direction >= 270 && direction <= 360)
		{
			sprite_index = spr_BloodWitchForward;
			image_xscale = 1
		}
	}
	else
	{
		speed = 0;	
		sprite_index = spr_BloodWitch;
		image_xscale = 1
	}
	

	if (hp <= 0)
	{
		// leg ability enabled
		//obj_Player.leg = legState.witch;
		global.leg = legState.witch;
		//global.maxSpeed = 4;
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
}
else
{
	speed = 0;
}