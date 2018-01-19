global.zKeyIsDown = true;
if global.cKeyIsDown && global.toggleSplit {
	global.state = 5;
	image_index = 5;
} else if global.xKeyIsDown && global.toggleSplit {
	global.state = 3;
	image_index = 3;
} else if global.toggleSplit == false {
	global.state = 0;
	image_index = 0;
}

