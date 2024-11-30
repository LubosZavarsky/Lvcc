/// @desc Draw sprites, text and options

draw_set_font(fnt_game);
draw_set_color(c_black);
draw_set_valign(fa_middle);

//var _margin_text = 128; // Horizontal text margin
//var _margin_char = 200; // Horizontal character margin

if IsChatterbox(chatterbox) and text != undefined
{
	
	draw_set_halign(fa_left);
	
	var _xx = 60;
	var _yy = room_height - 90;
	
	// Display the current portion of the text
	
	var text_to_display = string_copy(text, 1, chars_shown);
	draw_text(_xx, _yy, text_to_display);
	
	//If there are options, draw them to the center of the screen
	
	
	// !!! ZACAT PISAT TEXT AZ KED DOBEHNE FADE !!! ???
	if ChatterboxGetOptionCount(chatterbox) && chars_shown >= string_length(text)
	{
		draw_set_halign(fa_center);
		
		var _width = 400;
		var _height = 64;
		
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++;)
		{
			if ChatterboxGetOptionConditionBool(chatterbox, i)
			{
				_xx = room_width/1.2 ;
				_yy = ((room_height / 9) * (i/2)) + 400;
				
				//draw_rectangle_center(_xx, _yy, _width, _height, false, c_black, 0.5);
				
				var _icon = "";
				if (option_index == i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, i);
				draw_set_font(fnt_choice);
				draw_text(_xx, _yy, _icon + _option);
			}
		}
	}
}