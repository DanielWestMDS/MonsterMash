/// @description Insert description here
// You can write your code in this editor

if (timer <= 0)
{
	// remember to add sound file
	//audio_play_sound(ToBeAdded, 1, false);
	
	instance_create_layer(x, y, "Magic", obj_BloodMagic) // create the bullet 
	timer = 100;
}

timer--;