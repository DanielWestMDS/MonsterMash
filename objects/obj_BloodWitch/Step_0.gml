/// @description Insert description here
// You can write your code in this editor
if (global.bGameRunning && global.bloodWitchDead == false)
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
	
	// movement stun
	if (!(global.arm == armState.base && global.leg == armState.base && global.torso == armState.base))
	{
		if (stunTimer <= 0)
		{
			global.maxSpeed = 0;
			instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "Magic", obj_LockEffect)
			if (stunTimer <= -120)
			{
				global.maxSpeed = tempSpeed;
				stunTimer = 200;
				instance_destroy(obj_LockEffect);
			}
		}
		stunTimer--;
	}
	
	// movement
	if (distance_to_object(obj_Player) > 70)
	{
		speed = 2;
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	}
	else if (distance_to_object(obj_Player) < 36)
	{
		speed = -2;
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	}
	else
	{
		speed = 0;	
		sprite_index = spr_BloodWitch;
		image_xscale = 1
	}
	

	if (hp <= 0)
	{
		global.bloodWitchDead = true;
		// leg ability enabled
		global.leg = legState.witch;
		//global.maxSpeed = 4;
		health = global.maxhp;
		instance_create_layer(x,y, "Instances", obj_DeadBloodWitch);
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
else if (global.bloodWitchDead)
{
	hp = 0;
	instance_create_layer(x,y, "Instances", obj_DeadBloodWitch);	
}
else
{
	speed = 0;
}

// Inherit the parent event
event_inherited();