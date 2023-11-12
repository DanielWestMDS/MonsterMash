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


if (currentYSpeed < 0 && currentXSpeed == 0)
{
	
	image_xscale = 1;
	facing = charDirection.Up;
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
		sprite_index = spr_PlayerUp;
}
else if (currentYSpeed < 0 && currentXSpeed > 0)
{
	//sprite_index = spr_PlayerUp;
	image_xscale = 1;
	facing = charDirection.Up_Right;
	
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
		sprite_index = spr_PlayerUp;
}
else if (currentXSpeed > 0 && currentYSpeed == 0)
{
	//image_angle = 0;
	//sprite_index = spr_PlayerWalkSide;
	
	facing = charDirection.Right;
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
	{
		image_xscale = 1;
		sprite_index = spr_PlayerWalkSide;
	}
		
}
else if (currentXSpeed > 0 && currentYSpeed > 0)
{
	//image_angle = 0;
	image_xscale = -1;
	facing = charDirection.Down_Right;
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
		sprite_index = spr_PlayerWalkDown;
}
else if (currentYSpeed > 0 && currentXSpeed == 0)
{
	image_xscale = 1;
	facing = charDirection.Down;
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
		sprite_index = spr_PlayerWalkDown;
}
else if (currentYSpeed > 0 && currentXSpeed < 0)
{
	image_xscale = 1;
	facing = charDirection.Down_Left;
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
		sprite_index = spr_PlayerWalkDown;
}
else if (currentXSpeed < 0 && currentYSpeed == 0)
{
	//image_angle = 180;
	//image_yscale = -1;
	

	facing = charDirection.Left;
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
	{
		image_xscale = -1;
		sprite_index = spr_PlayerWalkSide;
	}		
}
else if (currentXSpeed < 0 && currentYSpeed < 0)
{
	//image_angle = 180;
	//image_yscale = -1;
	
	image_xscale = 1;
	facing = charDirection.Up_Left;
	//show_debug_message("facing Up_Left");
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
		sprite_index = spr_PlayerUp;
}
else if (currentXSpeed == 0 && currentYSpeed == 0)
{
	if (sprite_index != spr_PlayerHurt and sprite_index != spr_PlayerHurtSide and sprite_index != spr_PlayerHurtUp
	and sprite_index != spr_GaryAttackUp and sprite_index != spr_GaryAttackDown and sprite_index != spr_PlayerArmorDown)
	{		
		if (facing == charDirection.Up or facing == charDirection.Up_Left or facing == charDirection.Up_Right)
		{
			image_xscale = 1;
			//show_debug_message("facing Up Idle");
			sprite_index = spr_PlayerUp;
		}
		if (facing == charDirection.Down or facing == charDirection.Down_Left or facing == charDirection.Down_Right)
		{
			image_xscale = 1;
			sprite_index = spr_PlayerDown;
		}
		if (facing == charDirection.Left)
		{
			image_xscale = 1;
			sprite_index = spr_PlayerSide;
		}
		if (facing == charDirection.Right)
		{
			image_xscale = -1;
			sprite_index = spr_PlayerSide;
		}
	}
}	


// bone shooting
BoneAttackTimerCurrent += 0.1;
//if (keyboard_check(vk_space))
// when it is as space you can't move or shoot up left while holding space??
// X probably makes more sense but ask hugo maybe

if (keyboard_check(ord("X")))
{
	if (facing == charDirection.Up_Left)
	{
		//show_debug_message("facing Up_Left again");
	}
	
	if (BoneAttackTimerCurrent > BoneAttackTimer)
	{
		BoneAttackTimerCurrent = 0;
		bone = instance_create_layer(x, y, layer,obj_BoneAttack)
		audio_play_sound(snd_bone, 1, false, 1, 0.2);
		if(bone != noone)
		{	
			show_debug_message("bone shoot");
			//audio_play_sound(sfx_pew, 1, false, 1);
			
			
			if (facing == charDirection.Up)
			{
				bone.direction = 90;
			}
			
			else if (facing == charDirection.Up_Right)
			{
				bone.direction = 45;
			}
			
			else if (facing == charDirection.Right)
			{
				bone.direction = 360;
			}
			
			else if (facing == charDirection.Down_Right)
			{
				bone.direction = 315;
			}
			
			else if (facing == charDirection.Down)
			{
				bone.direction = 270;
			}
			
			else if (facing == charDirection.Down_Left)
			{
				bone.direction = 225;
			}
			
			else if (facing == charDirection.Left)
			{
				bone.direction = 180;
			}
			
			else if (facing == charDirection.Up_Left)
			{
				bone.direction = 135;
				//show_debug_message("Shoot Up_Left");
			}
			//bone.direction = image_angle;
			bone.image_angle = bone.direction;
			bone.speed = 5;
			
			if (facing == charDirection.Up or facing == charDirection.Up_Left or facing == charDirection.Up_Right)
			{
				image_xscale = 1;
				show_debug_message("facing Up Idle Hurt");
				sprite_index = spr_GaryAttackUp;
			}
			if (facing == charDirection.Down or facing == charDirection.Down_Left or facing == charDirection.Down_Right)
			{
				image_xscale = 1;
				sprite_index = spr_GaryAttackDown;
			}
			if (facing == charDirection.Left)
			{
				image_xscale = -1;
				sprite_index = spr_GaryAttackDown;
			}
			if (facing == charDirection.Right)
			{
				image_xscale = 1;
				sprite_index = spr_GaryAttackDown;
			}
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
			audio_play_sound(snd_Punch, 1, false);
			BlobbyAttackTimerCurrent = 0;
			blobbyAttack = instance_create_layer(x, y, layer,obj_PunchAttack)
			
			if(blobbyAttack != noone)
			{	
				show_debug_message("punch");
				//audio_play_sound(sfx_pew, 1, false, 1);
				if (facing == charDirection.Up)
				{
					blobbyAttack.direction = 90;
					blobbyAttack.y += -45;
				}
				
				else if (facing == charDirection.Up_Right)
				{
					blobbyAttack.direction = 45;
					blobbyAttack.y += -25;
					blobbyAttack.x += 35;
				}
				else if (facing == charDirection.Right)
				{
					blobbyAttack.direction = 0;
					blobbyAttack.x += 35;
				}
				else if (facing == charDirection.Down_Right)
				{
					blobbyAttack.direction = 315;
					blobbyAttack.x += 35;
					blobbyAttack.y += 25;
				}
				else if (facing == charDirection.Down)
				{
					blobbyAttack.direction = 270;
					blobbyAttack.y += 45;
				}
				else if (facing == charDirection.Down_Left)
				{
					blobbyAttack.direction = 225;
					blobbyAttack.y += 25;
					blobbyAttack.x += -35;
				}

				else if (facing == charDirection.Left)
				{
					blobbyAttack.direction = 180;
					blobbyAttack.x += -35;
				}
				else if (facing == charDirection.Up_Left)
				{
					blobbyAttack.direction = 135;
					blobbyAttack.x += -35;
					blobbyAttack.y += -25;
				}
				else
				{
					blobbyAttack.y += 25;
				}
				//bone.direction = image_angle;
				blobbyAttack.image_angle = blobbyAttack.direction;
				//golemAttack.speed = 1;
				
				if (facing == charDirection.Up or facing == charDirection.Up_Left or facing == charDirection.Up_Right)
				{
					image_xscale = 1;
					show_debug_message("facing Up Idle Hurt");
					sprite_index = spr_GaryAttackUp;
				}
				if (facing == charDirection.Down or facing == charDirection.Down_Left or facing == charDirection.Down_Right)
				{
					image_xscale = 1;
					sprite_index = spr_GaryAttackDown;
				}
				if (facing == charDirection.Left)
				{
					image_xscale = -1;
					sprite_index = spr_GaryAttackDown;
				}
				if (facing == charDirection.Right)
				{
					image_xscale = 1;
					sprite_index = spr_GaryAttackDown;
				}
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
			//show_debug_message("invincibility");
			global.invincible = true;
			InvincibleTimerDurationCurrent = 0;
			image_xscale = 1;
			sprite_index = spr_PlayerArmorDown;
		}
	}
}

if (global.invincible == true)
{
	//show_debug_message("invincibility true");
	InvincibleTimerDurationCurrent += 0.1;
	if (InvincibleTimerDurationCurrent > InvincibleTimerDuration)
	{
		global.invincible = false;
		//show_debug_message("invincibility ran out");
	}
}
else
{
	//show_debug_message("invincibility false");
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

// invicible for a short period after being hurt
if (audio_is_playing(snd_DamageTaken))
{
	health = previousHealth
}

// play hurt sound if hurt
if (previousHealth > health)
{
	if (room != r_Tutorial)
	{
		audio_play_sound(snd_DamageTaken, 1.5, false);
		previousHealth = health;
		show_debug_message("Hurt");
		if (facing == charDirection.Up or facing == charDirection.Up_Left or facing == charDirection.Up_Right)
		{
			image_xscale = 1;
			show_debug_message("facing Up Idle Hurt");
			sprite_index = spr_PlayerHurtUp;
		}
		if (facing == charDirection.Down or facing == charDirection.Down_Left or facing == charDirection.Down_Right)
		{
			image_xscale = 1;
			sprite_index = spr_PlayerHurt;
		}
		if (facing == charDirection.Left)
		{
			image_xscale = 1;
			sprite_index = spr_PlayerHurtSide;
		}
		if (facing == charDirection.Right)
		{
			image_xscale = -1;
			sprite_index = spr_PlayerHurtSide;
		}
		
	}
}

// play hurt sound if hurt
if (previousHealth < health)
{
	if (room != r_Tutorial)
	{
		audio_play_sound(snd_HealthUp, 1, false);
		previousHealth = health;
	}
}

if (health <= 0)
{
	global.bGameRunning = false;
	instance_destroy();
}


