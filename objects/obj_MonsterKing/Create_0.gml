/// @description Insert description here
// You can write your code in this editor

// timers
time = 24;
//rockTimer = 0;
laserTimer = time;
laserCooldown = 200;

colliding = false;

alarm[0] = 10;
alarm_set(0, 10);
laserOn = false;

enum monsterKingState
{
	idle,
	// fire laser at player
	laser,
	// create rock underneath player
	rock
	// maybe armor?
}

stance = attackState.idle;

// Inherit the parent event
event_inherited();

hp = 100;

sideSprite = spr_MonsterKingSide;
downSprite = spr_MonsterKingDown;
upSprite = spr_MonsterKingUp;
idleSprite = spr_MonsterKing;