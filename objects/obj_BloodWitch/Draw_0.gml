/// @description Insert description here
// You can write your code in this editor
draw_self();

if (hp < maxHp) {
	draw_healthbar(x-30, y-16, x+30, y-14, (hp/maxHp)*100, c_black, c_red, c_green, 0, true, true);
}


