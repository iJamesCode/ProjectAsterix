nearest_button = instance_nearest(mouse_x, mouse_y, obj_squareButton)

if position_meeting(mouse_x, mouse_y, nearest_button) {
	nearest_button.image_index = 1
} else {
	image_index = 0
}
