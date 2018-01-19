global.xKeyIsDown = true;
if global.cKeyIsDown && global.toggleSplit {
	global.state = 4;
	image_index = 4;
} else if global.zKeyIsDown && global.toggleSplit {
	global.state = 3;
	image_index = 3;
} else if global.toggleSplit == false {
	global.state = 1;
	image_index = 1;
}