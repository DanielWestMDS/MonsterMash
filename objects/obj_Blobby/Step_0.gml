/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning && global.blobbyDead == false)
{
	// follow player if they run away
	if (stance == attackState.idle)
	{
		if (distance_to_object(obj_Player) > followRadius)
		{
			speed = 2.3;
			direction = point_direction(x, y, obj_Player.x, obj_Player.y);
		}
		else
		{
			speed = 0;	
		}
	}
		// -- Blob Attack -- //
	if (blobTimer <= 0 && stance == attackState.idle)
	{
		if (instance_number(obj_BlobEnemy) <= 0 || blobTimer <= -100)
		{
			stance = attackState.blobs;
		}	
	}
	
	if (stance == attackState.blobs)
	{
		for (i = 0; i < 3; i++)
		{
			instance_create_layer(self.x + random_range(-50, 50),self.y + random_range(-50, 50), "Magic", obj_BlobEnemy);
		}
		stance = attackState.idle;
		blobTimer = 700;
	}
	blobTimer--;
		// -- Blob Attack -- //
		
		// -- Charge Attack -- //
	// enable charge attack after a while
	if (chargeTimer <= 0 && stance == attackState.idle && distance_to_object(obj_Player) <= followRadius)
	{
		if (instance_number(obj_BlobEnemy) >= 0)
		{
			stance = attackState.charge;
		}	
	}
	
	if (stance == attackState.charge)
	{
		if (time >= 0 && chargeTimer <= 0)
		{
			direction = point_direction(x, y, obj_Player.x, obj_Player.y);
			speed = -0.5;
			audio_play_sound(snd_look, 1, false, 1, 0.5);
		}
		else if (chargeTimer <= 0)
		{
			charging = true;
		}
		else
		{
			chargeCooldown++;
		}
		
		if (charging == true)
		{
			direction = point_direction(x, y, obj_Player.x, obj_Player.y);
			speed = 8;
			chargeTimer = 180;
			charging = false;
		}
		time--;
		
		if (chargeCooldown >= 40)
		{
			// reset members after attack finishes
			time = 50;
			//chargeTimer = time;
			chargeCooldown = 0;
			charging = false;
			stance = attackState.idle;
		}
	}
	chargeTimer--;
		// -- Charge Attack -- //

	// deal damage if colliding with player
	var Blobby = instance_place(x, y, obj_Player);
	
	if (Blobby != noone)
	{
		show_debug_message("hit by blobby I think");
		//instance_change(obj_BlobbyDestroy, false);
		if (colliding = false && global.invincible == false)
		{
			instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
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
	
	if (hp == 0)
	{
		global.blobbyDead = true;
		global.arm = armState.blobby;
		health = global.maxhp;
		global.bossesDefeated += 1;
	}
}
else if (global.blobbyDead)
{
	hp = 0;	
}
// Inherit the parent event
event_inherited();

