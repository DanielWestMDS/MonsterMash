/// @description Insert description here
// You can write your code in this editor

if (room == r_BloodWitch && global.bloodWitchDead)
{
	if (!legsDone)
	{
		instance_deactivate_layer("Instances");
		instance_deactivate_layer("Magic");
		
		if (keyboard_check_released(vk_escape))
		{
			legsDone = true;
		}
	}
}




