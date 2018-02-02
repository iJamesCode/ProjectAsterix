velocity_ = [0,0];
gravity_ = 1.5;
jump_speed_ = 28.5;
max_velocity_ = [8, 32];
acceleration_ = 2.5;
global.death = false;
global.game_paused = false;

global.start_x = x;
global.start_y = y;

global.state = 0
global.color_switch_count = 0

global.cKeyIsDown = false;
global.zKeyIsDown = false;
global.xKeyIsDown = false;
global.toggleSplit = false;

global.finishedLevel = false;

// Get the tile_map_id's
var layer_id = layer_get_id("t_empty");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id)

var layer_id1 = layer_get_id("t_shaded");
collision_tile_map_id_1_ = layer_tilemap_get_id(layer_id1)

var layer_id2 = layer_get_id("t_full");
collision_tile_map_id_2_ = layer_tilemap_get_id(layer_id2)

var layer_id3 = layer_get_id("t_splitES");
collision_tile_map_id_3_ = layer_tilemap_get_id(layer_id3)

var layer_id4 = layer_get_id("t_splitFS");
collision_tile_map_id_4_ = layer_tilemap_get_id(layer_id4)

var layer_id5 = layer_get_id("t_splitFE");
collision_tile_map_id_5_ = layer_tilemap_get_id(layer_id5)

var layer_id6 = layer_get_id("t_any");
collision_tile_map_id_6_ = layer_tilemap_get_id(layer_id6)