/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (audio_is_paused(agMusic))
{
	audio_resume_sound(agMusic);	
}
else
{
	audio_pause_sound(agMusic);
}