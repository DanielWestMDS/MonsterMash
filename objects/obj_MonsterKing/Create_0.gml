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

flameTime = 60;
flameTimer = time;
flameCooldown = 100;
flameStartup = 0;
flameSound = false;

colliding = false;

laserOn = false;
rockOn = false;
flameOn = false;
armor = true;

enum monsterKingState
{
	idle,
	// fire laser at player
	flame,
	// create rock underneath player
	rock,
	// flame directed at player
	laser
}

stance = attackState.idle;

// Inherit the parent event
event_inherited();

hp = 10;
maxHp = 70;
previousHealth = hp;

hit_timer = 10;

armorHp = 10;
maxArmorHp = 30;

sideSprite = spr_MonsterKing;
downSprite = spr_MonsterKing;
upSprite = spr_MonsterKing;
idleSprite = spr_MonsterKing;

global.flameColliding = false;