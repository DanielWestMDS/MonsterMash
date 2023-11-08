/// @description Insert description here
// You can write your code in this editor

var _playerHealth = health;
var _playerHealthMax = global.maxhp;
var _playerHealthFrac = frac(_playerHealth);
_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i++)
{
	draw_sprite(spr_Hearts,
	(i > _playerHealth) + ((i == _playerHealth+1) && (_playerHealthFrac > 0)),
	UI_MARGIN + ((i-1) * UI_HEALTHSEPARATION),
	UI_MARGIN)
}

if (global.arm == armState.blobby)
{
    // Add a boolean flag to control input
    
    if (keyboard_check_pressed(ord("C")) && canPunch) 
    {
        PunchTimer = 10;
        canPunch = false; // Disable input
    }

    if (PunchTimer > 0)
    {
        punch_current_sprite_index += 0.5;
        PunchTimer--;
    }
    else
    {
        canPunch = true; // Enable input when the iteration is complete
    }

    draw_sprite(spr_PunchIcon, punch_current_sprite_index, 200, 640);
}

if (global.torso = torsoState.iron_golem)
{
	if (keyboard_check_pressed(ord("Z")) && canGoInvincible)
    {
        invincibleTimer = 90;
        canGoInvincible = false; // Disable input
    }

    if (invincibleTimer > 0)
    {
        invincible_current_sprite_index += 0.1;
        invincibleTimer--;
    }
    else
    {
        canGoInvincible = true; // Enable input when the iteration is complete
    }

    draw_sprite(spr_InvincibleIconFinal, invincible_current_sprite_index, 335, 640);
}

if (canGoInvincible == true)
{
	invincible_current_sprite_index = 0;
}
if (canGoInvincible = true)
{
	invincible_current_sprite_index = 0;
}

if (global.leg = legState.witch)
{
	
	if (keyboard_check(vk_shift))
    {
		leg_current_sprite_index = 1;
    }
	
	if (!keyboard_check(vk_shift))
    {
		leg_current_sprite_index = 0;
    }
	
	draw_sprite(spr_LegIcon, leg_current_sprite_index, 65, 640);
}
