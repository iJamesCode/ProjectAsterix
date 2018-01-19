var tile_map_id_empty = argument[0];
var tile_map_id_shaded = argument[1];
var tile_map_id_full = argument[2];

var tile_map_id_splitES = argument[3];
var tile_map_id_splitFS = argument[4];
var tile_map_id_splitFE = argument[5];

var tile_map_id_any = argument[6];

// Found variable
var found_empty = false;
var found_shaded = false;
var found_full = false;

var found_splitES = false;
var found_splitFS = false;
var found_splitFE = false;

var found_any = false;

var tilefound = noone;

// For the point arrays

// Empty
var vector2_x_empty = 0;
var vector2_y_empty = 1;
// Shaded
var vector2_x_shaded = 0;
var vector2_y_shaded = 1;
// Full
var vector2_x_full = 0;
var vector2_y_full = 1;

// SplitES
var vector2_x_splitES = 0;
var vector2_y_splitES = 1;
// SplitFS
var vector2_x_splitFS = 0;
var vector2_y_splitFS = 1;
// SplitFE
var vector2_x_splitFE = 0;
var vector2_y_splitFE = 1;

// Any
var vector2_x_any = 0;
var vector2_y_any = 1;

// Loop through the points and check for a tile
for (var i=7; i<argument_count; i++) {
	point = argument[i]
	found_empty = found_empty || tilemap_get_at_pixel(tile_map_id_empty, point[vector2_x_empty], point[vector2_y_empty]);
	found_shaded = found_shaded || tilemap_get_at_pixel(tile_map_id_shaded, point[vector2_x_shaded], point[vector2_y_shaded]);
	found_full = found_full || tilemap_get_at_pixel(tile_map_id_full, point[vector2_x_full], point[vector2_y_full]);
	
	found_splitES = found_splitES || tilemap_get_at_pixel(tile_map_id_splitES, point[vector2_x_splitES], point[vector2_y_splitES]);
	found_splitFS = found_splitFS || tilemap_get_at_pixel(tile_map_id_splitFS, point[vector2_x_splitFS], point[vector2_y_splitFS]);
	found_splitFE = found_splitFE || tilemap_get_at_pixel(tile_map_id_splitFE, point[vector2_x_splitFE], point[vector2_y_splitFE]);
	
	found_any = found_any || tilemap_get_at_pixel(tile_map_id_any, point[vector2_x_any], point[vector2_y_any]);
}

if found_empty {
	tilefound = 0;
} else if found_shaded {
	tilefound = 1;
} else if found_full {
	tilefound = 2;
} else if found_splitES {
	tilefound = 3;
} else if found_splitFS {
	tilefound = 4;
} else if found_splitFE {
	tilefound = 5;
} else if found_any {
	tilefound = 6
} 

// return found
return tilefound;