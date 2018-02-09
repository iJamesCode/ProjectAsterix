global.paused_count += 1

// check if paused is odd
if global.paused_count % 2 == 1 {
	obj_pause_screen.visible = true;
	global.continue_button.visible = true;
	global.settings_button.visible = true;
	global.quit_button.visible = true;
	global.game_paused = true;
}

// check if paused is even
if global.paused_count % 2 == 0 {
	obj_pause_screen.visible = false;
	global.continue_button.visible = false;
	global.settings_button.visible = false;
	global.quit_button.visible = false;
	global.game_paused = false;
}