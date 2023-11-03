/// @description Insert description here
// You can write your code in this editor
global.maxhp = 3;

global.bGameRunning = true;

enum legState
{
	base,
	witch
};

enum torsoState
{
	base,
	iron_golem
};

enum armState
{
	base,
	blobby
};
	RunStamina = 0;
	
	BlobbyAttackTimer = 3;
	BlobbyAttackTimerCurrent = 0;
	
	InvincibleTimer = 10;
	InvincibleTimerCurrent = 0;
	
	InvincibleTimerDuration = 5;
	InvincibleTimerDurationCurrent = 0;
	
	BoneAttackTimer = 3;
	BoneAttackTimerCurrent = 0;
	currentXSpeed = 0;
	currentYSpeed = 0;
	
	if (health == 100)
	{
		health = global.maxhp;
		global.maxSpeed = 2.0;
		global.arm = armState.blobby;
		global.torso = torsoState.base;
		global.leg = legState.base;
		global.invincible = false;
	}

//hit flash
being_hit = false;
hit_timer = 0;

// invincible shader
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