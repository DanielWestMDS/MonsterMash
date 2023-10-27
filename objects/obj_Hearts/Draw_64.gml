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

