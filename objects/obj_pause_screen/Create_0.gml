/// @description Insert description here
// You can write your code in this editor
global.paused_count = 0
global.game_paused = false;

pause_menu_layer = layer_get_id("pause_menu")

global.continue_button = instance_create_layer(960, 412, pause_menu_layer, obj_long_button)
global.settings_button = instance_create_layer(960, 508, pause_menu_layer, obj_long_button)
global.quit_button = instance_create_layer(960, 604, pause_menu_layer, obj_long_button)

global.continue_button.visible = false;
global.settings_button.visible = false;
global.quit_button.visible = false;

global.continue_button.button_pressed = false;
global.settings_button.button_pressed = false;
global.quit_button.button_pressed = false;

global.continue_button.depth = depth - 1
global.settings_button.depth = depth - 1
global.quit_button.depth = depth - 1