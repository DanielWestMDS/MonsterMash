/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning && global.monsterKingDead == false)
{	
	if (stance == monsterKingState.idle && laserTimer <= 0 && rockTimer <= 0)
	{
		stance = round(random_range(0,2));
	}
	
			// -- Laser Attack -- //
	if (stance == monsterKingState.laser)
	{	
		if (time >= 0)
		{
			//audio_play_sound(snd_look, 1, false, 1, 0.5);
		}
		else if (time <= 0)
		{
			if !(audio_is_playing(snd_Lazer))
			{
				
			}
			audio_play_sound(snd_Lazer, 1, false, 0.5, 0,);
			laserOn = true;
		}
		time--;
		
		if (laserOn)
		{
			laserCooldown++;
			
			if !(instance_exists(obj_Laser))
			{
				instance_create_layer(x, y, "Magic", obj_Laser);
			}
			else
			{

			}
			
			// number is how long laser lasts
			if (laserCooldown >= 20)
			{
				// reset members after attack finishes
				time = 50;
				laserTimer = 100;
				laserCooldown = 0;
				stance = monsterKingState.idle;
			}
		}
	}
	else
	{
		instance_destroy(obj_Laser);
		laserOn = false;
		laserStartup = 15;
		laserTimer--;
	}
	rockTimer--;
			// -- Laser attack -- //
			
			// -- rock attack -- //
	if (stance == monsterKingState.rock)
	{	
		if (rockTime >= 0 && rockStartup >= 0)
		{
			audio_play_sound(snd_look, 1, false, 1, 0.5);
		}
		else if (rockTime <= 0)
		{
			rockOn = true;
		}
		rockTime--;
		
		if (rockOn)
		{
			rockCooldown++;
			
			if (!instance_exists(obj_RockAttack) && !(instance_exists(obj_Flame)))
			{
				instance_create_layer(obj_Player.x, obj_Player.y, "Instances", obj_RockAttack);
				stance = monsterKingState.laser;
			}
			
			// number is how long laser lasts
			if (rockCooldown >= 80)
			{
				// reset members after attack finishes
				rockTime = 60;
				// how long between blasts
				rockTimer = 100;
				rockCooldown = 0;
				stance = monsterKingState.idle;
				rockOn = false;
			}
		}
	}
	else
	{
		rockOn = false;
		rockStartup = 15;
		rockTimer--;
	} 
				// -- rock attack -- //
				
				// -- flame attack -- //	
	if (stance == monsterKingState.flame)
	{	
		if (flameTime >= 0 && flameStartup >= 0)
		{
			if (flameSound = false)
			{
				sprite_index = spr_MonsterKingFlame;
				//audio_play_sound(snd_FireUp, 1, false, 1, 0.5);
				flameSound = true;
			}
		}
		else if (flameTime <= 0)
		{
			flameOn = true;
		}
		flameTime--;
		
		if (flameOn)
		{
			sprite_index = spr_MonsterKing;
			flameCooldown++;

			/* if flame does not exist stop playing sound */
			instance_create_layer(x, y, "Magic", obj_Flame);
			
			// number is how long flame lasts
			if (flameCooldown >= 50)
			{
				// reset members after attack finishes
				flameTime = 60;
				flameTimer = 100;
				flameCooldown = 0;
				stance = monsterKingState.idle;
			}
		}
	}
	else
	{
		global.flameColliding = false;
		flameOn = false;
		flameStartup = 15;
		flameTimer--;
		flameSound = false;
	}
	rockTimer--; 
			// -- flame attack -- //
	
	// only get damaged if armor broken
	if (armorHp <= 0)
	{
		armor = false;	
	}
	
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
			hit_timer = 10;
		}
	}
	
	// flame shoot sound
	if (object_exists(obj_Flame) && flameOn)
	{
		if !(audio_is_playing(snd_Flame))
		{
			audio_play_sound(snd_Flame, 1, false)
		}
	}
	else
	{
		audio_stop_sound(snd_Flame);
	}
	
	// play hurt sound if hurt
	if (previousHealth > hp)
	{
		being_hit = true;
		audio_play_sound(snd_GolemHit, 1, false);
		previousHealth = hp;
	}
}

