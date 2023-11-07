/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (global.musicisplaying == false)
{
	global.musicisplaying = true;
	show_debug_message("Music Playing");
    audio_resume_sound(audiogroup_default);	
	audio_resume_sound(snd_mainmenu);
}
else
{
	global.musicisplaying = false;
	show_debug_message("Music Paused");
	audio_pause_sound(audiogroup_default);
	audio_pause_sound(snd_mainmenu);
}