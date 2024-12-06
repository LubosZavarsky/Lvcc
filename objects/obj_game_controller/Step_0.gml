var _space = keyboard_check_pressed(vk_space);
var _enter = keyboard_check_pressed(vk_enter);
var _click = mouse_check_button_pressed(mb_left);
var _fullscrn = keyboard_check_pressed(ord("F"));


// Fullscreen toggle
if _fullscrn window_set_fullscreen(!window_get_fullscreen());

if (room == rm_intro_0 || room == rm_intro_1 || room == rm_intro_2)  {
    if (_enter || _space || _click) {
		//room_goto_next();
        var _next_room = room_next(room); // Get the next room
        if (_next_room != -1 && !instance_exists(obj_fade_controller)) { // Ensure there is a next room
            scr_fader(_next_room, 0.03); // Transition to the next room
        } 
    }	
}

if (room == rm_2020_19 || room == rm_2021_20 || room == rm_2023_21 || room == rm_2024_22) {
	
	audio_stop_all();
	//if (audio_is_playing(snd_typing_1)) audio_stop_sound(snd_typing_1);	

}


// Glitch
if (room == rm_intro_0) {
	if (!alarm[0]) { 		
		alarm[0] = 4 * rm_spd;	
	} 
}

if (room == rm_koniec_23 ) {
	if (!alarm[0]) { 
		alarm[0] = choose(1, 2, 3, 4) * rm_spd;	
	}
} 
 
