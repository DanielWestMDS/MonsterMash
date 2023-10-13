/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);

key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);	

currentXSpeed = key_right - key_left;
currentYSpeed = key_down - key_up;

currentXSpeed *= maxSpeed;
currentYSpeed *= maxSpeed;

if (place_free(x + currentXSpeed, y))
{
	x += currentXSpeed;
}

if (place_free(x, y + currentYSpeed))
{
	y += currentYSpeed;
}

if (key_right - key_left < 0)
{
	image_xscale = -1;
}

if (key_right - key_left > 0)
{
	image_xscale = 1;
}