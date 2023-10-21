/// @description Insert description here
// You can write your code in this editor

// larger number = longer wait between invincibility
InvincibleTimer = 400;
InvincibleTimerCurrent = 0;

InvincibleTimerDuration = 300;
InvincibleTimerDurationCurrent = 0;

golemInvicible = false;

doingPowerUp = false;
attacking = false;

// for time between attacks
cooldown = 50;

// Inherit the parent event
event_inherited();

maxHp = 100;
hp = 100;
tempHP = hp;

sideSprite = spr_GolemSide;
upSprite = spr_GolemDown;
downSprite = spr_GolemUp;
idleSprite = spr_Golem;

// shader
_uniUV         = shader_get_uniform(sha_Invincible, "u_uv");
_uniTime       = shader_get_uniform(sha_Invincible, "u_time");
_uniSpeed      = shader_get_uniform(sha_Invincible, "u_speed");
_uniSection    = shader_get_uniform(sha_Invincible, "u_section");
_uniSaturation = shader_get_uniform(sha_Invincible, "u_saturation"); 
_uniBrightness = shader_get_uniform(sha_Invincible, "u_brightness");
_uniMix        = shader_get_uniform(sha_Invincible, "u_mix");

_time  = 0;
_speed = 1.0;
_section = 0.5;
_saturation = 0.7;
_brightness = 0.8;
_mix = 0.5;

_mix = 0.5;