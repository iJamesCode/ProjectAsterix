draw_self();
draw_set_font(global.t);
draw_set_color(c_white);
draw_text(x + 13, y + 7, "II" );

if global.toggleSplit == true {
	draw_text(view_xport[0] + 1520, view_yport[0] + 100, "Split Mode = ON")
} else if global.toggleSplit == false {
	draw_text(view_xport[0] + 1520, view_yport[0] + 100, "Split Mode = OFF")
}