/// @description Insert description here
// You can write your code in this editor

// timers
time = 24;
rockTimer = 0;
laserTimer = time;
laserCooldown = 200;

laserOn = false;
colliding = false;

// Inherit the parent event
event_inherited();


sideSprite = spr_MonsterKingSide;
downSprite = spr_MonsterKingDown;
upSprite = spr_MonsterKingUp;
idleSprite = spr_MonsterKing;