/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

// Draw event
draw_sprite(spr_GameOverScreen, 1, vx, vy);
draw_sprite(sprite_index, image_index, x, y);

if (image_index >= image_number - 1)
{
    image_speed = 0;
}


