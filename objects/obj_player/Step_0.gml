/// @description Insert description here
// You can write your code in this editor

//global.leg = legState.witch;

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);

key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);	

//key_right = keyboard_check(ord("D"))
//key_left = keyboard_check(ord("A"))

//key_up = keyboard_check(ord("W"))
//key_down = keyboard_check(ord("S"));	

currentXSpeed = key_right - key_left;
currentYSpeed = key_down - key_up;

currentXSpeed *= global.maxSpeed;
currentYSpeed *= global.maxSpeed;


// normalise if moving both directions
//(currentXSpeed*currentYSpeed)/2 

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
	//image_angle = 180;
	//image_yscale = -1;
	sprite_index = spr_PlayerSide;
	image_xscale = 1;
}

if (currentXSpeed > 0)
{
	//image_angle = 0;
	sprite_index = spr_PlayerSide;
	image_xscale = -1;
}

if (currentYSpeed < 0)
{
	sprite_index = spr_PlayerUp;
	image_xscale = 1;
}

if (currentYSpeed > 0)
{
	sprite_index = spr_PlayerDown;
	image_xscale = 1;
}


// bone shooting
BoneAttackTimerCurrent += 0.1;
if (keyboard_check(vk_space))
{
	if (BoneAttackTimerCurrent > BoneAttackTimer)
	{
		BoneAttackTimerCurrent = 0;
		bone = instance_create_layer(x, y, layer,obj_BoneAttack)
		audio_play_sound(snd_bone, 1, false, 1, 0.2);
		if(bone != noone)
		{	
			show_debug_message("bone shoot");
			//audio_play_sound(sfx_pew, 1, false, 1);
			if (sprite_index == spr_PlayerDown)
			{
				bone.direction = 270;
			}
			else if (sprite_index == spr_PlayerUp)
			{
				bone.direction = 90;
			}
			else if (sprite_index == spr_PlayerSide && image_xscale == 1)
			{
				bone.direction = 180;
			}
			else if (sprite_index == spr_PlayerSide)
			{
				bone.direction = 0;
			}
			else
			{
				bone.direction = 270;
			}
			//bone.direction = image_angle;
			bone.image_angle = bone.direction;
			bone.speed = 5;
		}
	}
}


BlobbyAttackTimerCurrent += 0.1;
if (keyboard_check(ord("C")))
{
	if (global.arm == armState.blobby)
	{
		if (BlobbyAttackTimerCurrent > BlobbyAttackTimer)
		{
			audio_play_sound(snd_ZaHando, 1, false);
			BlobbyAttackTimerCurrent = 0;
			blobbyAttack = instance_create_layer(x, y, layer,obj_BlobbyAttack)
			
			if(blobbyAttack != noone)
			{	
				show_debug_message("punch");
				//audio_play_sound(sfx_pew, 1, false, 1);
				if (sprite_index == spr_PlayerDown)
				{
					blobbyAttack.direction = 270;
					blobbyAttack.y += 25;
				}
				else if (sprite_index == spr_PlayerUp)
				{
					blobbyAttack.direction = 90;
					blobbyAttack.y += -25;
				}
				else if (sprite_index == spr_PlayerSide && image_xscale == 1)
				{
					blobbyAttack.direction = 180;
					blobbyAttack.x += -25;
				}
				else if (sprite_index == spr_PlayerSide)
				{
					blobbyAttack.direction = 0;
					blobbyAttack.x += 25;
				}
				else
				{
					blobbyAttack.y += 25;
				}
				//bone.direction = image_angle;
				blobbyAttack.image_angle = blobbyAttack.direction;
				//golemAttack.speed = 1;
			}
		}
	}
}

if (RunStamina < 50)
{
	RunStamina += 0.5;
}

if (keyboard_check(vk_shift))
{
	if RunStamina >= 0
	{
		RunStamina += -1.5;
	}
	
	if RunStamina > 1
	{
		if (global.leg == legState.witch)
		{
			global.maxSpeed = 3;

		}
		else
		{
			global.maxSpeed = 2;
		}
	}
	else
	{
		global.maxSpeed = 2;
	}
}
else
{
	global.maxSpeed = 2;
}

InvincibleTimerCurrent += 0.1;
if (keyboard_check(ord("Z")))
{
	if (global.torso == torsoState.iron_golem)
	{
		if (InvincibleTimerCurrent > InvincibleTimer)
		{
			InvincibleTimerCurrent = 0;
			show_debug_message("invincibility");
			global.invincible = true;
			InvincibleTimerDurationCurrent = 0;
		}
	}
}

if (global.invincible == true)
{
	show_debug_message("invincibility true");
	InvincibleTimerDurationCurrent += 0.1;
	if (InvincibleTimerDurationCurrent > InvincibleTimerDuration)
	{
		global.invincible = false;
		show_debug_message("invincibility ran out");
	}
}
else
{
	show_debug_message("invincibility false");
}

// hit flash
if (being_hit)
{
	hit_timer--;
	if (hit_timer <= 0)
	{
		being_hit = false;
	}
}

if (health <= 0)
{
	global.bGameRunning = false;
	instance_destroy();
}


