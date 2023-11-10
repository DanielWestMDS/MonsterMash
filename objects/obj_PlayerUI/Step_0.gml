/// @description Insert description here
// You can write your code in this editor

if (RunStamina < 50)
{
	RunStamina += 0.5;
}

if (keyboard_check(vk_shift))
{
	if RunStamina >= 0
	{
		RunStamina += -1.5;
	}
}
