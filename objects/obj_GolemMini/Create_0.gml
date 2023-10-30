/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
hp = 2;
maxHp = 2;

randSprite = irandom_range(1, 4);

if (randSprite == 1)
{
	sprite = spr_GolemMini0;
}
else if (randSprite == 1)
{
	sprite = spr_GolemMini1;
}
else if (randSprite == 1)
{
	sprite = spr_GolemMini2;	
}
else if (randSprite == 1)
{
	sprite = spr_GolemMini3;	
}

sideSprite = sprite;
downSprite = sprite;
upSprite = sprite;
idleSprite = sprite;