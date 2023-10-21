/// @description Insert description here
// You can write your code in this editor

// timers
time = 24;
blobTimer = 0;
chargeTimer = time;
chargeCooldown = 0;

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
upSprite = spr_BlobbyDown;
downSprite = spr_BlobbyUp;
idleSprite = spr_BlobbyIdle;
