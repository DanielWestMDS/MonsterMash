/// @description Insert description here
// You can write your code in this editor

MainMenuMusic = true;

audio_group_load(agMusic);
audio_group_load(agSFX);

music_playing = snd_mainmenu;
music = [snd_combat_theme, snd_idlemusic, snd_industrial, snd_Irongolem_theme, snd_mainmenu, snd_slime_boss, snd_witch_theme];
		 
sfx = [snd_bone, snd_look, snd_ZaHando];

music_volume = 1;
sfx_volume = 1;

control = false;
music_target = 0;
sfx_loaded = false;