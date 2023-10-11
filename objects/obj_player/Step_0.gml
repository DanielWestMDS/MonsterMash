/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);

key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);	

if (place_free(x + key_right - key_left, y))
{
	x += key_right - key_left;
}

if (place_free(x, y + key_down - key_up))
{
	y += key_down - key_up;
}