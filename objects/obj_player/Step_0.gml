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

if (currentXSpeed < 0)
{
	image_angle = 180;
	image_yscale = -1;
}

if (currentXSpeed > 0)
{
	image_angle = 0;
	image_yscale = 1;
}

if (currentYSpeed < 0)
{
	image_angle = 90;
}

if (currentYSpeed > 0)
{
	image_angle = 270;
}

BoneAttackTimerCurrent += 0.1;

if (keyboard_check(vk_space))
{
	if (BoneAttackTimerCurrent > BoneAttackTimer)
	{
		BoneAttackTimerCurrent = 0;
		bone = instance_create_layer(x, y, layer,obj_BoneAttack)
		if(bone != noone)
		{	
				show_debug_message("bone shoot");
				//audio_play_sound(sfx_pew, 1, false, 1);
				bone.direction = image_angle;
				bone.image_angle = image_angle;
				bone.speed = 5;
		}
	}
	
	
}


if (health <= 0)
{
	instance_destroy();
}