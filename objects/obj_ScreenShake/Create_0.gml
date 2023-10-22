/// @description Insert description here
// You can write your code in this editor

shakeDuration = 10;

alarm[0] = shakeDuration;

shakeIntensity = 10;

startCam_x = camera_get_view_x(view_camera[0]);
startCam_y = camera_get_view_y(view_camera[0]);

/*
if (instance_exists(obj_ScreenShake))
{
	instance_destroy(obj_ScreenShake);
}