/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning)
{
	// enable charge attack after a while
	if (chargeTimer <= 0)
	{
		stance = attackState.charge;
	}
	
	if (stance == attackState.charge)
	{
		if (time >= 0)
		{
			speed = -0.2;
		}
		else
		{
			direction = point_direction(x, y, obj_Player.x, obj_Player.y);
			speed = 8;
			chargeTimer = 300;
			time = 60;
		}
		time--;
	}
	chargeTimer--;
}
// Inherit the parent event
event_inherited();

