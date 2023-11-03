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
        current_sprite_index += 0.5;
        PunchTimer--;
    }
    else
    {
        canPunch = true; // Enable input when the iteration is complete
    }

    draw_sprite(spr_PunchIcon, current_sprite_index, 65, 640);
}
