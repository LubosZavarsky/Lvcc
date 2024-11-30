/// @desc Navigate text and options

//TEST
// Increment timer
timer += typewriter_speed;

// Update the number of characters to show
if (chars_shown < string_length(text)) {
    chars_shown = min(string_length(text), floor(timer)); // Reveal characters one by one
}

var _count = ChatterboxGetOptionCount(chatterbox); // Get the number of options we have


if keyboard_check_pressed(vk_space) && chars_shown < string_length(text)
{

	chars_shown = string_length(text)

}

else if ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(vk_space) //Is Chatterbox waiting for user input
{
	
	chars_shown = 0;
	timer = 0;
	ChatterboxContinue(chatterbox);
	chatterbox_update();
}


else if _count //Is Chatterbox presenting the user with options
{
	var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	// Move option_index twice if next option is invalid
	
	repeat (1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false))
	{
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
	if keyboard_check_pressed(vk_enter)
	{
		ChatterboxSelect(chatterbox, option_index);
		option_index = 0;
		
		chatterbox_update();
	}
}

if ChatterboxIsStopped(chatterbox) // End when reached end of chatterbox
{
	instance_destroy();
}

