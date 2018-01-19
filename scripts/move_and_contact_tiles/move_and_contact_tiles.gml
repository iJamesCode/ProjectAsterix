var tile_map_id_empty = argument0;
var tile_map_id_shaded = argument1; 
var tile_map_id_full = argument2;

var tile_map_id_splitES = argument3;
var tile_map_id_splitFS = argument4;
var tile_map_id_splitFE = argument5;

var tile_map_id_any = argument6;

var tile_size = argument7;
var velocity = argument8;

// For the velocity array
var vector2_x = 0;
var vector2_y = 1;

// Move horizontally
x += velocity[vector2_x];

// Right collisions
if velocity[vector2_x] > 0 {
	var tile_right = tile_collide_at_points(tile_map_id_empty, tile_map_id_shaded, tile_map_id_full, tile_map_id_splitES, tile_map_id_splitFS, tile_map_id_splitFE, tile_map_id_any, [bbox_right-1, bbox_top], [bbox_right-1, bbox_bottom-1]);
	if tile_right == 0 && global.state != 0 {
		global.death = true;
	} else if tile_right == 1 && global.state != 1 {
		global.death = true;
	} else if tile_right == 2 && global.state != 2 {
		global.death = true;
	} else if tile_right == 3 && global.state != 3 {
		global.death = true;
	} else if tile_right == 4 && global.state != 4 {
		global.death = true;
	} else if tile_right == 5 && global.state != 5 {
		global.death = true;
	
	} else if (tile_right == 0 && global.state == 0) || (tile_right == 1 && global.state == 1)  || (tile_right == 2 && global.state == 2) || (tile_right == 3 && global.state == 3) || (tile_right == 4 && global.state == 4) || (tile_right == 5 && global.state == 5) || (tile_right == 6) {
		x = bbox_right & ~(tile_size-1);
		x -= bbox_right-x;
		velocity[@ vector2_x] = 0;
	}
} else {
	var tile_left = tile_collide_at_points(tile_map_id_empty, tile_map_id_shaded, tile_map_id_full, tile_map_id_splitES, tile_map_id_splitFS, tile_map_id_splitFE, tile_map_id_any, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	if tile_left == 0 && global.state != 0 {
		global.death = true;
	} else if tile_left == 1 && global.state != 1 {
		global.death = true;
	} else if tile_left == 2 && global.state != 2 {
		global.death = true;
	} else if tile_left == 3 && global.state != 3 {
		global.death = true;
	} else if tile_left == 4 && global.state != 4 {
		global.death = true;
	} else if tile_left == 5 && global.state != 5 {
		global.death = true;
	
	} else if (tile_left == 0 && global.state == 0) || (tile_left == 1 && global.state == 1)  || (tile_left == 2 && global.state == 2) || (tile_left == 3 && global.state == 3) || (tile_left == 4 && global.state == 4) || (tile_left == 5 && global.state == 5) || (tile_left == 6){
		
		x = bbox_left & ~(tile_size-1);
		x += tile_size+x-bbox_left;
		velocity[@ vector2_x] = 0;
	}
}

// Move vertically
y += velocity[vector2_y];

// Vertical collisions
if velocity[vector2_y] > 0 {
	var tile_bottom = tile_collide_at_points(tile_map_id_empty, tile_map_id_shaded, tile_map_id_full, tile_map_id_splitES, tile_map_id_splitFS, tile_map_id_splitFE, tile_map_id_any, [bbox_left, bbox_bottom-1], [bbox_right-1, bbox_bottom-1]);
	if tile_bottom == 0 && global.state != 0 {
		global.death = true;
	} else if tile_bottom == 1 && global.state != 1 {
		global.death = true;
	} else if tile_bottom == 2 && global.state != 2 {
		global.death = true;
	} else if tile_bottom == 3 && global.state != 3 {
		global.death = true;
	} else if tile_bottom == 4 && global.state != 4 {
		global.death = true;
	} else if tile_bottom == 5 && global.state != 5 {
		global.death = true;
	
	} else if (tile_bottom == 0 && global.state == 0) || (tile_bottom == 1 && global.state == 1)  || (tile_bottom == 2 && global.state == 2) || (tile_bottom == 3 && global.state == 3) || (tile_bottom == 4 && global.state == 4) || (tile_bottom == 5 && global.state == 5) || (tile_bottom == 6) {
		y = bbox_bottom & ~(tile_size-1);
		y -= bbox_bottom-y;
		velocity[@ vector2_y] = 0;
	}
	
} else {
	var tile_top = tile_collide_at_points(tile_map_id_empty, tile_map_id_shaded, tile_map_id_full, tile_map_id_splitES, tile_map_id_splitFS, tile_map_id_splitFE, tile_map_id_any, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
	if tile_top == 0 && global.state != 0 {
		global.death = true;
	} else if tile_top == 1 && global.state != 1 {
		global.death = true;
	} else if tile_top == 2 && global.state != 2 {
		global.death = true;
	} else if tile_top == 3 && global.state != 3 {
		global.death = true;
	} else if tile_top == 4 && global.state != 4 {
		global.death = true;
	} else if tile_top == 5 && global.state != 5 {
		global.death = true;
	
	} else if (tile_top == 0 && global.state == 0) || (tile_top == 1 && global.state == 1)  || (tile_top == 2 && global.state == 2) || (tile_top == 3 && global.state == 3) || (tile_top == 4 && global.state == 4) || (tile_top == 5 && global.state == 5) || (tile_top == 6){
		y = bbox_top & ~(tile_size-1);
		y += tile_size+y-bbox_top;
		velocity[@ vector2_y] = 0;
	}
}