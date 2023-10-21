/// @description Insert description here
// You can write your code in this editor

if (golemInvicible)
{
	shader_set(sha_Invincible);
	var uv = sprite_get_uvs(sprite_index, image_index);
	shader_set_uniform_f(_uniUV, uv[0], uv[2]);
	shader_set_uniform_f(_uniSpeed, _speed);
	shader_set_uniform_f(_uniTime, _time);
	shader_set_uniform_f(_uniSaturation, _saturation);
	shader_set_uniform_f(_uniBrightness, _brightness);
	shader_set_uniform_f(_uniSection, _section);
	shader_set_uniform_f(_uniMix, _mix);
}

// Inherit the parent event
event_inherited();

