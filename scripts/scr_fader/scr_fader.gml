// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fader(argument0, argument1){

	/// @arg target_room - The room to switch to after fading out
	/// @arg fade_speed  - Speed of the fade effect (e.g., 0.05)

	var target_room = argument0;  // The room to go to
	var fade_speed = argument1;   // Speed of the fade

	// Check if fade controller already exists in the room
	if (!instance_exists(obj_fade_controller)) {
	    // Create the fade controller if it doesn't exist
	    var fade_instance = instance_create_layer(0, 0, "Instances", obj_fade_controller);
    
	    // Set the fade parameters
	    fade_instance.fade_alpha = 0;        // Start fully visible (no fade yet)
	    fade_instance.fade_speed = fade_speed; // Set fade speed from argument
	    fade_instance.fade_in = true;        // Start with fade-in (if the controller was just created)
	    fade_instance.target_room = target_room; // Set target room to transition to after fade-out
		fade_instance.transition_completed = false;
		
	    // Ensure the fade controller is persistent so it can continue after the room switch
	    fade_instance.persistent = true;
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