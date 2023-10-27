/// @description Insert description here
// You can write your code in this editor


if (room == r_MainMenu)
{
	if (MainMenuMusic == true)
	{
	audio_play_sound(snd_mainmenu, 0, true);
	MainMenuMusic = false;
	}
}

if (room == r_Hub)
{
	audio_play_sound(snd_combat_theme, 0, true);
}

if (room == r_Blobby)
{
	audio_play_sound(snd_slime_boss, 0, true);
}

if (room == r_BloodWitch)
{
	audio_play_sound(snd_witch_theme, 0, true);
}

if (room == r_Golem)
{
	audio_play_sound(snd_Irongolem_theme, 0, true);
}

if (room == r_Tutorial)
{
	audio_play_sound(snd_mainmenu, 0, true);
}