/// @description Insert description here
// You can write your code in this editor
var Enemy = instance_place(x, y, obj_EnemyParent);

TimerCurrent += 0.1;
if (TimerCurrent >= Timer)
{
	instance_change(obj_BlobbyDestroy, false);
}

if (Enemy != noone)
{
	show_debug_message("Attack Working I think");
	instance_change(obj_BlobbyDestroy, false);
}