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
    // Define a variable to keep track of the current sprite index

    
    current_sprite_index = 0; // Initialize to the first sprite

    
   draw_sprite(spr_PunchIcon, current_sprite_index, 65, 640);
   
   //instance_create_layer(65, 640, "Instances", spr_PunchIcon);
    
    if (keyboard_check_pressed(ord("C")))
    {
        // Increment the current sprite index
        current_sprite_index += 1;
        
        //// Check if it goes beyond sprite 5, and reset to 1
        if (current_sprite_index > 4)
        {
            current_sprite_index = 1;
        }
    }
}
