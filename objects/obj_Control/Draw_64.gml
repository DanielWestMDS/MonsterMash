/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_text(0,50, "Lives : " + string(health));
if (health == 0)
{
	draw_set_color(c_red);
	draw_text(600,300, "You lose");
}