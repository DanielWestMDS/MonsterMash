/// @description Insert description here
// You can write your code in this editor

InvincibleTimer = 10;
InvincibleTimerCurrent = 0;

InvincibleTimerDuration = 5;
InvincibleTimerDurationCurrent = 0;

golemInvicible = false;

// Inherit the parent event
event_inherited();

sideSprite = spr_GolemSide;
upSprite = spr_GolemDown;
downSprite = spr_GolemUp;
idleSprite = spr_Golem;