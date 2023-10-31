/// @description Insert description here
// You can write your code in this editor

// timers
time = 24;
laserTimer = time;
laserCooldown = 0;
laserStartup = 0;

rockTime = 50;
rockTimer = 50;
rockStartup = 0;
rockCooldown = 40;

flameTime = 14;
flameTimer = time;
flameCooldown = 100;
flameStartup = 0;

colliding = false;

laserOn = false;
rockOn = false;
flameOn = false;
armor = true;

enum monsterKingState
{
	idle,
	// fire laser at player
	laser,
	// create rock underneath player
	rock,
	// flame directed at player
	flame
}

stance = attackState.idle;

// Inherit the parent event
event_inherited();

hp = 100;
maxHp = 100;

armorHp = 30;
maxArmorHp = 30;

sideSprite = spr_MonsterKingSide;
downSprite = spr_MonsterKingDown;
upSprite = spr_MonsterKingUp;
idleSprite = spr_MonsterKing;