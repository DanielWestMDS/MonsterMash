/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

	// play hurt sound if hurt
if (previousHealth > hp)
{
	being_hit = true;
	audio_play_sound(snd_GolemHit, 1, false, 1, 10.2);
	previousHealth = hp;
}