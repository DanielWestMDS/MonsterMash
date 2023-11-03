/// @description Insert description here
// You can write your code in this editor

if (global.bGameRunning && sprite_index == spr_Character_BirdBoss)
{
	// hit flash
	if (being_hit)
	{
		hit_timer--;
		if (hit_timer <= 0)
		{
			being_hit = false;
		}
	}
	
	if (hp == 0)
	{
		being_hit = false;
		global.TutorialFinished = true;
		sprite_index = spr_BirdDead;
		instance_create_layer(obj_bird.x, obj_bird.y + 150, "Instances", obj_MainRoomDoor);
	}
}