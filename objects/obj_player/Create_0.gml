/// @description Insert description here
// You can write your code in this editor
global.maxhp = 3;

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
		global.arm = armState.base;
		global.torso = torsoState.base;
		global.leg = legState.base;
		global.invincible = false;
	}

//hit flash
being_hit = false;
hit_timer = 0;
