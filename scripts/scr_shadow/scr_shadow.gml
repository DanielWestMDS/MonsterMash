// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shadow()
{
    draw_sprite_ext(sprite_index,-1,x,y+(sprite_get_height(sprite_index)/2),-image_xscale,0.5,180,c_black,0.4);
    draw_self();
}