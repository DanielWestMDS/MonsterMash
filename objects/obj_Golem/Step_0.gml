/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning)
{	
	// follow player if they run away
	if (!attacking)
	{
		if (sprite_index == spr_GolemAttack)
		{
			speed = 0;
		}
		else if (distance_to_object(obj_Player) > 60)
		{
			speed = 0.8;
			direction = point_direction(x, y, obj_Player.x, obj_Player.y);
		}
		else
		{
			speed = 0;	
		}
	}
	
	// prevent buff and attack from overriding each other
	if (sprite_index != spr_GolemAttack)
	{
		
		if (golemInvicible)
		{
			if (!doingPowerUp)
			{
				sprite_index = spr_GolemInvincible;
				doingPowerUp = true;
			}
			hp = tempHP;
			show_debug_message("invincibility true");
			InvincibleTimerDurationCurrent ++;
			if (InvincibleTimerDurationCurrent > InvincibleTimerDuration)
			{
				golemInvicible = false;
				show_debug_message("invincibility ran out");
			}
		}
		else
		{
			doingPowerUp = false;
			InvincibleTimerCurrent++;
			if (InvincibleTimerCurrent >= InvincibleTimer)
			{
				InvincibleTimerCurrent = 0;
				show_debug_message("invincibility");
				golemInvicible = true;
				InvincibleTimerDurationCurrent = 0;
			}
			tempHP = hp;	
		}
		cooldown--;
	}
	
	if (sprite_index != spr_GolemInvincible)
	{
		if (attackTimer >= 100)
		{
			if (attacking)
			{
				instance_create_layer(x, y, "Instances", obj_Shockwave);
				instance_create_layer(x, y, "Instances", obj_ScreenShake);
				attackTimer = 0;
				attacking = false;
			}
			else
			{
				sprite_index = spr_GolemAttack;
			}
		}
		else
		{
			attackTimer++;
		}
	}
	
	if (hp <= 0)
	{
		global.torso = torsoState.iron_golem;	
		global.maxhp++;
		health = global.maxhp;
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
	
	if (sprite_index != spr_GolemInvincible && sprite_index != spr_GolemAttack)
	{
		// movement animations
		// right
		if (direction >= 0 && direction < 90)
		{
			sprite_index = sideSprite;
			image_xscale = -1;
		}
		// up
		else if (direction >= 90 && direction < 180)
		{
			sprite_index = upSprite;
			image_xscale = 1;
		}
		// left
		else if (direction >= 180 && direction < 270)
		{
			sprite_index = sideSprite;
			image_xscale = 1;
		}
		// down
		else if (direction >= 270 && direction <= 360)
		{
			sprite_index = downSprite;
			image_xscale = 1;
		}
		
		if (speed == 0)
		{
			sprite_index = idleSprite;
			image_xscale = 1;
		}
	}
}
else
{
	sprite_index = idleSprite;
	speed = 0;
}