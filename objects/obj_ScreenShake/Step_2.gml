/// @description Insert description here
// You can write your code in this editor

view_visible[0] = 0;
view_visible[1] = 1;

var randX = random_range(-shakeIntensity, shakeIntensity);
var randY = random_range(-shakeIntensity, shakeIntensity);

camera_set_view_pos(view_camera[1], startCam_x + randX, startCam_y + randY);