nearest_longbutton = instance_nearest(mouse_x, mouse_y, obj_long_button)

if position_meeting(mouse_x, mouse_y, nearest_longbutton) {
	nearest_longbutton.image_index = 1
} else {
	image_index = 0
}
