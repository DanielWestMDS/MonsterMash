/// @description Insert description here
// You can write your code in this editor

// deal damage if colliding with enemy
var Enemy = instance_place(x, y, obj_EnemyParent);
var Golem = instance_place(x,y, obj_Golem);

if (Enemy != noone)
{
	show_debug_message("hit by punch");
	if (colliding = false && global.invincible == false)
	{
		//instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
		if (Golem != noone)
		{
			Golem.hp -= 10;
			Golem.being_hit = true;
			Golem.hit_timer = 10;	
		}
		else
		{
			Enemy.hp -= 3;
			Enemy.being_hit = true;
			Enemy.hit_timer = 10;
		}
		colliding = true;
	}
}




