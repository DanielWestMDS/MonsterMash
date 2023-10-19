/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

	if (distance_to_object(obj_Player) > 70)
	{
		speed = 2;
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	}
	// movement
	// right
	if (direction >= 0 && direction < 90)
	{
		sprite_index = spr_BlobbySide;
		image_xscale = -1
	}
	// up
	else if (direction >= 90 && direction < 180)
	{
		sprite_index = spr_BlobbyUp;
		image_xscale = 1
	}
	// left
	else if (direction >= 180 && direction < 270)
	{
		sprite_index = spr_BlobbySide;
		image_xscale = 1
	}
	// down
	else if (direction >= 270 && direction <= 360)
	{
		sprite_index = spr_BlobbyDown;
		image_xscale = 1
	}

// Inherit the parent event
event_inherited();

