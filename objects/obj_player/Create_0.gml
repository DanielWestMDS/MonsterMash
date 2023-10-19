/// @description Insert description here
// You can write your code in this editor

enum legState
{
	base,
	witch
};




enum torsoState
{
	base,
	blobby
};



enum armState
{
	base,
	iron_golem
};
	
	BoneAttackTimer = 3;
	BoneAttackTimerCurrent = 0;
	
	GolemAttackTimer = 2;
	GolemAttackTimerCurrent = 0;
	
	currentXSpeed = 0;
	currentYSpeed = 0;
	
	if (health == 100)
	{
		health = 3;
		global.maxSpeed = 2.0;
		global.arm = armState.base;
		global.torso = torsoState.base;
		global.leg = legState.base;
	}
	
	
