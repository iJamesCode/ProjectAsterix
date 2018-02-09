if global.SelectLevel == false {
	if id == global.continue_button.id {
		pause_game()
	} else if id == global.quit_button.id {
		game_end();
	}
}
