/// @description Insert description here
// You can write your code in this editor

var randX = random_range(-shakeIntensity, shakeIntensity);
var randY = random_range(-shakeIntensity, shakeIntensity);

camera_set_view_pos(view_camera[0], startCam_x + randX, startCam_y + randY);

