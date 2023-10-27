/// @description Insert description here
// You can write your code in this editor

x = obj_MonsterKing.x;
y = obj_MonsterKing.y;

direction = point_direction(x, y, obj_Player.x, obj_Player.y);

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
}

