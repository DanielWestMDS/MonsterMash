/// @description Insert description here
// You can write your code in this editor

if (!variable_global_exists("TutorialFinished"))
{
	global.TutorialFinished = false;
}

// Inherit the parent event
event_inherited();

if (global.TutorialFinished)
{
	room_goto(r_Hub);
}
else
{
	room_goto(r_Tutorial);
}