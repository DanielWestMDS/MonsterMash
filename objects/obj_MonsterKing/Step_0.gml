/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning && global.monsterKingDead == false)
{	
			// -- Laser Attack -- //
	// enable laser attack after a while
	if (laserTimer <= 0 && stance == monsterKingState.idle)
	{
		stance = monsterKingState.laser;	
	}
	
	if (stance == monsterKingState.laser)
	{	
		if (time >= 0 && laserStartup <= 0)
		{
			audio_play_sound(snd_look, 1, false, 1, 0.5);
		}
		else if (laserStartup <= 0)
		{
			laserOn = true;
		}
		
		if (laserOn)
		{
			laserCooldown++;
			
			if !(instance_exists(obj_Laser))
			{
				instance_create_layer(mouse_x, mouse_y, "Magic", obj_Laser);
			}
			time--;
			
			// number is how long laser lasts
			if (laserCooldown >= 40)
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
}

// Inherit the parent event
event_inherited();

