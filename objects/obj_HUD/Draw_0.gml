draw_set_font(global.t);
draw_set_color(c_white);
draw_text(128, 128, "II" );

if global.toggleSplit == true {
	draw_text(0, 0, "Split Mode = ON")
} else if global.toggleSplit == false {
	draw_text(0, 0, "Split Mode = OFF")
}