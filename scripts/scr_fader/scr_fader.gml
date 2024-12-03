// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fader(argument0, argument1){

	/// @arg target_room - The room to switch to after fading out
	/// @arg fade_speed  - Speed of the fade effect (e.g., 0.05)

	var _target_room = argument0;  // The room to go to
	var _fade_speed = argument1;   // Speed of the fade

	// Check if fade controller already exists in the room
	if (!instance_exists(obj_fade_controller)) {
		
		// Create layer if not existing (on top of all other to cover instances)
		var _layer_id = layer_get_id("fader_layer");
		
		if (_layer_id == -1) layer_create(-100, "fader_layer");		
		
		
	    // Create the fade controller if it doesn't exist
	    var _fade_instance = instance_create_layer(0, 0, "fader_layer", obj_fade_controller);
    
	    // Set the fade parameters
	    _fade_instance.fade_alpha = 0;        // Start fully visible (no fade yet)
	    _fade_instance.fade_speed = _fade_speed; // Set fade speed from argument
	    _fade_instance.fade_in = true;        // Start with fade-in (if the controller was just created)
	    _fade_instance.target_room = _target_room; // Set target room to transition to after fade-out
		_fade_instance.transition_completed = false;
		
	    // Ensure the fade controller is persistent so it can continue after the room switch
	    _fade_instance.persistent = true;
	} else {
	    // If fade controller already exists, just update its properties
	    with (obj_fade_controller) {
	        fade_alpha = 0;           // Start fully visible
	        fade_speed = argument1;    // Set fade speed
	        fade_in = true;				// Begin fade-in process
			transition_completed = false;
	        target_room = argument0;   // Set target room for transition
	    }
	}

}