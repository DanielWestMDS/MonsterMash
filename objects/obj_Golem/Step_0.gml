/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning)
{	
	if (!attacking)
	{
		if (golemInvicible == true)
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
	else
	{
		
	}
	
	if (hp <= 0)
	{
		global.torso = torsoState.iron_golem;	
		obj_Player.maxhp++;
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
	
	if (sprite_index != spr_GolemInvincible)
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
		
		if (speed == 0 && sprite_index != spr_GolemInvincible)
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