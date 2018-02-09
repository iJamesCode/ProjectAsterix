x += (xTo - x)/8;

if (follow != noone) {
	xTo  = follow.x;
} 

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(view_camera[0], vm);