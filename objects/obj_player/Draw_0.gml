/// @description Insert description here
// You can write your code in this editor

// shadow
scr_shadow();

draw_self();
if (global.leg == legState.witch)
{
	//draw_healthbar(x+1, y+1, x+1000, y+1000, (RunStamina/50)*100, c_black, c_red, c_green, 3, true, true);
}

// invicible shader
if (global.invincible)
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

// hit flash
if (being_hit)
{
	//shader_set(sha_Flash);
}

draw_self();

shader_reset();