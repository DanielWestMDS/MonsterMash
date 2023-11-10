/// @description Insert description here
// You can write your code in this editor

scr_shadow();

// health bar
draw_self();
if (hp < maxHp) {
	draw_healthbar(x-30, y-36, x+30, y-34, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);
}

// hit flash
if (being_hit)
{
	shader_set(sha_Flash);
}

draw_self();

shader_reset();


