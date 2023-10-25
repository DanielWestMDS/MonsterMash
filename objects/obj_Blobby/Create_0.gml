/// @description Insert description here
// You can write your code in this editor

// timers
time = 24;
blobTimer = 0;
chargeTimer = time;
chargeCooldown = 200;

charging = false;
colliding = false;

followRadius = 60;

enum attackState
{
	idle,
	// create little blob enemies
	blobs,
	// move back a little then charge really fast into player damaging them
	charge
}

stance = attackState.idle;

// Inherit the parent event
event_inherited();

// set sprites
sideSprite = spr_BlobbySide;
upSprite = spr_BlobbyUp;
downSprite = spr_BlobbyDown;
idleSprite = spr_BlobbyIdle;

maxHp = 17;
hp = 17;