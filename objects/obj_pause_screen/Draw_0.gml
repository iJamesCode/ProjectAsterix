draw_self()
draw_set_font(global.t);
draw_set_color(c_white);

continue_str_len = string_width("Continue");
settings_str_len = string_width("Settings");
quit_str_len = string_width("Quit");

if global.game_paused {
	draw_text(global.continue_button.x - (continue_str_len/2), global.continue_button.y - 24, "Continue" );
	draw_text(global.settings_button.x - (settings_str_len/2), global.settings_button.y -24, "Settings");
	draw_text(global.quit_button.x - (quit_str_len/2), global.quit_button.y - 24, "Quit")
}