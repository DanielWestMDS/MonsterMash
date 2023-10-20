/// @description Insert description here
// You can write your code in this editor
sideSprite = spr_BlobbySide;
upSprite = spr_BlobbyDown;
downSprite = spr_BlobbyUp;

enum attackState
{
	idle,
	// create little blob enemies
	blobs,
	// move back a little then charge really fast into player damaging them
	charge
}

// Inherit the parent event
event_inherited();

