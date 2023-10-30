/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (global.soundeffectsplaying == false)
{
	global.soundeffectsplaying = true;
	show_debug_message("SFX Unmuted");
	audio_group_set_gain(agSFX, 1, 0);	
}
else
{
	global.soundeffectsplaying = false;
	show_debug_message("SFX Muted");
	audio_group_set_gain(agSFX, 0, 0);
}
