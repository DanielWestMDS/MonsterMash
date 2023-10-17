/// @description Insert description here
// You can write your code in this editor
if (global.bGameRunning)
{
	
	if (timer <= 0)
	{
		// remember to add sound file
		//audio_play_sound(ToBeAdded, 1, false);
	
		Magic = instance_create_layer(x, y, "Magic", obj_BloodMagic) // create the bullet 
		Magic.speed = 5
		Magic.direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	
	
		timer = 100;
	}
	timer--;
	
	if (distance_to_object(obj_Player) > 100)
	{
		speed = 2;
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	}
	else
	{
		speed = 0;	
	}
	
	if (hp <= 0)
	{
		instance_destroy();	
	}
}