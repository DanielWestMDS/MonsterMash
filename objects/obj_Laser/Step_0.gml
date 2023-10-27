/// @description Insert description here
// You can write your code in this editor

x = obj_MonsterKing.x;
y = obj_MonsterKing.y;

direction = point_direction(x, y, xPlayer, yPlayer);

var maxLength = 900;

for (i = 0; i < maxLength; i++)
{
	xEnd = x + lengthdir_x(i, direction);
	yEnd = y + lengthdir_y(i, direction);
	
	length_laser = i;
	
	if (collision_point(xEnd, yEnd, obj_Wall, 0, 0)) 
	{
		break;	
	}
	
	if (collision_point(xEnd, yEnd, obj_Player, 0, 0) && colliding = false)
	{
		//instance_change(obj_BlobbyDestroy, false);
		if (colliding = false && global.invincible == false)
		{
			instance_create_layer(x, y, "Obstacles", obj_ScreenShake);
			health -= 0.5;
			obj_Player.being_hit = true;
			obj_Player.hit_timer = 10;
		}
		colliding = true;
	}
}

// deal damage if colliding with player
//var player = instance_place(x, y, obj_Player);


