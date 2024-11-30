var _space = keyboard_check_pressed(vk_space);
var _enter = keyboard_check_pressed(vk_enter);
var _click = mouse_check_button_pressed(mb_left);
var _fullscrn = keyboard_check_pressed(ord("F"));

// Fullscreen toggle
if _fullscrn window_set_fullscreen(!window_get_fullscreen());

if (room == rm_start) {
	
	 if _enter || _space || _click {
	
		room_goto_next();
	
	 }
	
}
 