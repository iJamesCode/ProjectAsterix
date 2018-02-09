levels_layer = layer_get_id("Levels")
var current_instance = noone;

for (i=0; i<8; i++) {
	current_instance = instance_create_layer(((i * 128) + 256), 256, levels_layer, obj_squareButton)
	current_instance.buttonNum = i
}