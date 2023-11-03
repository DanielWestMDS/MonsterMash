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

if (room == r_Hub && global.musicisplaying == true)
{
	audio_play_sound(snd_combat_theme, 0, true);
}

if (room == r_Blobby && global.musicisplaying == true)
{
	audio_play_sound(snd_slime_boss, 0, true);
}

if (room == r_BloodWitch && global.musicisplaying == true)
{
	audio_play_sound(snd_witch_theme, 0, true);
}

if (room == r_Golem && global.musicisplaying == true)
{
	audio_play_sound(snd_Irongolem_theme, 0, true);
}

if (room == r_Tutorial && global.musicisplaying == true)
{
	audio_play_sound(snd_mainmenu, 0, true);
}

if (room == r_Boss && global.musicisplaying == true)
{
	audio_play_sound(final_boss_rec, 0, true);
}

if (room == r_Blobby_Corridor && global.musicisplaying == true)
{
	audio_play_sound(snd_combat_theme, 0, true);
}

if (room == r_Witch_Corridor && global.musicisplaying == true)
{
	audio_play_sound(snd_combat_theme, 0, true);
}

if (room == r_Golem_Corridor && global.musicisplaying == true)
{
	audio_play_sound(snd_combat_theme, 0, true);
}

