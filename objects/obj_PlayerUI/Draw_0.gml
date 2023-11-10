/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if (global.leg == legState.witch)
{
	draw_healthbar(vx+10, vy+184, vx+12, vy+160, (RunStamina/50)*100, c_black, c_red, c_green, 2, true, true);
}