/// @description Insert description here
// You can write your code in this editor

draw_self();
if (global.leg == legState.witch)
{
	draw_healthbar(x-27, y-22, x+27, y-20, (RunStamina/50)*100, c_black, c_red, c_green, 0, true, true);
}

if (global.invincible == true)
{
	shader_set(sha_Flash);
}
shader_reset();