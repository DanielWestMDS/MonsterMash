/// @description Insert description here
// You can write your code in this editor
if (global.bGameRunning)
{
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
		}
	}
}
else
{
	speed = 0;
}