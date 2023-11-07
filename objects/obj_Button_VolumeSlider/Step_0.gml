
if mouse_check_button_pressed(mb_left) {
    var button_x = x + sprite_width * volumevalue;
    var button_y = y;
    var button_radius = sprite_get_width(spr_slider);
    if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius) {
        selected = true;
    }
}

if !mouse_check_button(mb_left) {
    selected = false;
}

show_debug_message(volumevalue);

if selected {
    volumevalue = clamp((mouse_x - x) / sprite_width, 0, max_value);
	audio_group_set_gain(agSFX, volumevalue, 0);
}