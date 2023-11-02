/// @description Insert description here
// You can write your code in this editor

if (gamePause)
{
	show_debug_message("Game is paused");
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1; 
	
	keyActivate = keyboard_check_pressed(ord("O"));
	if (keyActivate)
	{
		switch (pauseOptionSelected)
		{
			case 0: //Continue
			{
			global.bGameRunning = true;
			gamePause = false;
			pauseOptionSelected = 0;
			}break;
			
			case 1: //options
			{
				
							
			}break;
			
			case 2:
			{
				room_goto(r_MainMenu);
				gamePause = false;
				pauseOptionSelected = 0;
				//goto main menu
			}break;
			
		}
	}

}
