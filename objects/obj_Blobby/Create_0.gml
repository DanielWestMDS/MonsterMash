/// @description Insert description here
// You can write your code in this editor
sideSprite = spr_BlobbySide;
upSprite = spr_BlobbyDown;
downSprite = spr_BlobbyUp;

// timers
time = 100;
blobTimer = time;
chargeTimer = time;

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

