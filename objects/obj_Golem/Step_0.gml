/// @description Insert description here
// You can write your code in this editor

InvincibleTimerCurrent += 0.1;

if (InvincibleTimerCurrent > InvincibleTimer)
{
	InvincibleTimerCurrent = 0;
	show_debug_message("invincibility");
	golemInvicible = true;
	InvincibleTimerDurationCurrent = 0;
}


if (golemInvicible == true)
{
	show_debug_message("invincibility true");
	InvincibleTimerDurationCurrent += 0.1;
	if (InvincibleTimerDurationCurrent > InvincibleTimerDuration)
	{
		golemInvicible = false;
		show_debug_message("invincibility ran out");
	}
}

// Inherit the parent event
event_inherited();

