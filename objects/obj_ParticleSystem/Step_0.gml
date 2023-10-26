/// @description Insert description here
// You can write your code in this editor

if (room == r_Golem && !global.golemDead)
{
	if (obj_Golem.sprite_index == spr_Shockwave)
	{
		part_particles_create(global.particleSystem, obj_Golem.x,  obj_Golem.x, global.ptBasic, 1);
	}
}



