var _space = keyboard_check_pressed(vk_space);
var _enter = keyboard_check_pressed(vk_enter);
var _click = mouse_check_button_pressed(mb_left);
var _fullscrn = keyboard_check_pressed(ord("F"));

// Fullscreen toggle
if _fullscrn window_set_fullscreen(!window_get_fullscreen());

if (room == rm_intro_0 || room == rm_intro_1 || room == rm_intro_2) {
    if (_enter || _space || _click) {
		//room_goto_next();
        var next_room = room_next(room); // Get the next room
        if (next_room != -1 && !instance_exists(obj_fade_controller)) { // Ensure there is a next room
            scr_fader(next_room, 0.03); // Transition to the next room
        } 
    }
}

 