/// @desc Initialize chatterbox and set variables


test_var = "penis";
dezole = false;


ChatterboxLoadFromFile("lvcc.yarn");               // Load file
//ChatterboxAddFunction("bg", background_set_index); // Add function to change background index
ChatterboxAddFunction("rm", rm_change);
chatterbox = ChatterboxCreate();                   // Create a chatterbox
ChatterboxJump(chatterbox, "Start");               // Go to "Start" node



// Declare the variable for Chatterbox
ChatterboxVariableDefault("test_var", test_var);
//ChatterboxVariableDefault("dezole", dezole);


chatterbox_update();                               // Get current node and current node text



option_index = 0;                                  // Initialize option index

size = [0.7, 0.75];                                // Character sprite scale (small and large)
colour = [c_ltgray, c_white];                      // Character sprite blend (dark and light)