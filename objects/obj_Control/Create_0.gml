/// @description Insert description here
// You can write your code in this editor

//happenOnce = true;

// for pausing
gamePause = false;

get_Middle_X = round(camera_get_view_width(view_camera[0])/2);
get_Middle_Y = round(camera_get_view_height(view_camera[0])/2);

// for if player instance destroyed
global.bGameRunning = true;

global.bloodWitchDead = false;
global.blobbyDead = false;
global.golemDead = false;
global.monsterKingDead = false;

pauseOption = ["Continue", "Save & Quit"];
pauseOptionSelected = 0;

legsDone = false;
armsDone = false;
chestDone = false;