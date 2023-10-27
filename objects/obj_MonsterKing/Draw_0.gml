/// @description Insert description here
// You can write your code in this editor

// health bar
draw_self();

if (!armor)
{
	if (hp < maxHp) 
	{
		draw_healthbar(x-50, y-80, x+50, y-76, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);
	}
}
else
{
	draw_healthbar(x-50, y-80, x+50, y-76, (armorHp/maxArmorHp)*100, c_black, c_red, c_yellow, 0, true, true);
}

// hit flash
if (being_hit)
{
	shader_set(sha_Flash);
}

draw_self();

shader_reset();





