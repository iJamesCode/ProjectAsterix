nearest_checkpoint = instance_nearest(obj_player.x, obj_player.y, obj_save)

if position_meeting(obj_player.x, obj_player.y, nearest_checkpoint) {
	nearest_checkpoint.image_index = 1;
	global.start_x = nearest_checkpoint.x
	global.start_y = nearest_checkpoint.y
}
