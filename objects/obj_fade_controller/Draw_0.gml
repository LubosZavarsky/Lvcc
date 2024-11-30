// Set the draw color to black and apply the fade_alpha to control opacity
draw_set_alpha(fade_alpha);
draw_set_color(c_black);

// Draw a rectangle over the entire screen to create the fade effect
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

// Reset the draw alpha back to 1 to prevent affecting other objects
draw_set_alpha(1);
