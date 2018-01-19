
var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * acceleration_;

// Vector variables
var vector2_x = 0;
var vector2_y = 1;

// Horizontal movement
velocity_[vector2_x] = clamp(velocity_[vector2_x]+x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]);
// Friction
if x_input == 0 {
	velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .2);
}

// Gravity
velocity_[vector2_y] += gravity_;

// Move and contact tiles
move_and_contact_tiles(collision_tile_map_id_, collision_tile_map_id_1_, collision_tile_map_id_2_, collision_tile_map_id_3_, collision_tile_map_id_4_, collision_tile_map_id_5_, collision_tile_map_id_6_, 64, velocity_);

// Jumping
var on_ground = tile_collide_at_points(collision_tile_map_id_, collision_tile_map_id_1_, collision_tile_map_id_2_, collision_tile_map_id_3_, collision_tile_map_id_4_, collision_tile_map_id_5_, collision_tile_map_id_6_, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);
if on_ground == 0 || on_ground == 1 || on_ground == 2 || on_ground == 3 || on_ground == 4 || on_ground == 5 || on_ground == 6{
	// Jumping
	if keyboard_check_pressed(vk_up) {
		velocity_[vector2_y] = -jump_speed_;
	}
} else {
	// Control jump height
	if keyboard_check_released(vk_up) && velocity_[vector2_y] <= -(jump_speed_/3) {
		velocity_[vector2_y] = -(jump_speed_/3);
	}
}

// Death
if global.death == true {
	velocity_ = [0, 0];
 	x = global.start_x
 	y = global.start_y
	global.state = 0;
	global.toggleSplit = false;
	image_index = 0;
	global.death = false;
}
