/// @description Insert description here
// You can write your code in this editor

if o_music._current_division-divison_number < .5 && o_music._current_division-divison_number > 0{
	animate = true;
}else{
	animate = false;
}
show_debug_message(o_music._current_division);

if animate = true{
	if !instance_exists(light){
		light = instance_create_layer(x,y,"instances",obj_light_parent);
		light.radius = 32;
		light.red = color_get_red(C_RED);
		light.green = color_get_green(C_RED);
		light.blue = color_get_blue(C_RED);
	}
	
	image_speed = 1;
	if image_index = image_number-1{
		image_speed = 0;	
	}
	
	if (o_player.x div CELL_SIZE == x div CELL_SIZE) && (o_player.y div CELL_SIZE == y div CELL_SIZE){
		level_restart();
	}
	
}else{
	image_speed = 0;
	image_index = 0;
	if instance_exists(light){
		instance_destroy(light);
	}
}