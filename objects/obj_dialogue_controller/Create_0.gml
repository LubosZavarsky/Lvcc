/// @desc Initialize chatterbox and set variables

ChatterboxLoadFromFile("Lvcc.yarn");               // Load file
ChatterboxAddFunction("rm", rm_change);
chatterbox = ChatterboxCreate();                   // Create a chatterbox
ChatterboxJump(chatterbox, "Start");               // Go to "Start" node

chatterbox_update();                               // Get current node and current node text

option_index = 0;                                  // Initialize option index

size = [0.7, 0.75];                                // Character sprite scale (small and large)
colour = [c_ltgray, c_white];                      // Character sprite blend (dark and light)

// Typewriter
chars_shown = 0; // Number of characters currently shown
typewriter_speed = 0.5; // Speed of typing (characters per frame, adjust as needed)
timer = 0; // Internal timer to control typing speed