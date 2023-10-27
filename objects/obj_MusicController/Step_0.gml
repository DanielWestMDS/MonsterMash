/// @description Insert description here
// You can write your code in this editor

if (room != r_MainMenu && room != r_OptionsMenu)
{
	audio_stop_sound(snd_mainmenu);
}

if (global.musicvolume == 1)
{
	global.musicvolume = 0
}
else if (global.musicvolume == 0)
{
	global.musicvolume = 1
}