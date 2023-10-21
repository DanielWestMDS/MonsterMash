/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning)
{	
	if (golemInvicible == true)
	{
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
	
	if (hp == 0)
	{
		global.torso = torsoState.iron_golem;	
		obj_Player.maxhp++;
		health = obj_Player.maxhp;
	}
}

// Inherit the parent event
event_inherited();

