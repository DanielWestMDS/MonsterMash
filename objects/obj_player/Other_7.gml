/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_PlayerHurt or sprite_index == spr_PlayerHurtSide or sprite_index == spr_PlayerHurtUp)
{
	sprite_index = spr_PlayerIdle;
}

if (sprite_index == spr_GaryAttackUp or sprite_index == spr_GaryAttackDown)
{
	sprite_index = spr_PlayerIdle;
}

if (sprite_index == spr_PlayerArmorDown)
{
	sprite_index = spr_PlayerIdle;
}