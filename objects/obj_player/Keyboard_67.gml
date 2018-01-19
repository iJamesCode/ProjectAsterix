global.cKeyIsDown = true;
if global.zKeyIsDown && global.toggleSplit {
	global.state = 5;
	image_index = 5;
} else if global.xKeyIsDown && global.toggleSplit {
	global.state = 4;
	image_index = 4;
} else if global.toggleSplit == false {
	global.state = 2;
	image_index = 2;
}