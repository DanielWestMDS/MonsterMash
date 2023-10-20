/// @description Insert description here
// You can write your code in this editor

draw_self();
if (global.leg == legState.witch)
{
	draw_healthbar(x-30, y-36, x+30, y-34, (RunStamina/50)*100, c_black, c_red, c_green, 0, true, true);
}