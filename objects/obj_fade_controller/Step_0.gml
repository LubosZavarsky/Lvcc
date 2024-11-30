// Fade out if transitioning hasn't completed
if (!transition_completed) {
    fade_alpha += fade_speed; // Increase opacity for fade-out
    if (fade_alpha >= 1) {
        fade_alpha = 1;          // Clamp to 1
        room_goto(target_room);  // Switch to the target room
        transition_completed = true; // Mark transition as completed
    }
} 
// Fade in if the transition is completed
else {
    fade_alpha -= fade_speed; // Decrease opacity for fade-in
    if (fade_alpha <= 0) {
        fade_alpha = 0;         // Clamp to 0
        instance_destroy();      // Destroy the fade controller after fade-in is complete
    }
}
