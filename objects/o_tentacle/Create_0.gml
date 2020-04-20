/// @description Insert description here
// You can write your code in this editor
event_inherited();

segments = ds_list_create();
start_width = 10;
end_width = 2;

dist_away = 20;

///x,y,length,angle
segLength = 20;
segments[0] = [x,y,segLength,0];
segments[1] = [x,y,segLength,0];
segments[2] = [x,y,segLength,0];

targetx = x;
targety = y;

gravy = -5;

endx = x;
endy = y;

totalLength = 0;
for(var i = 0; i < array_length_1d(segments); i++){
	var _segment = segments[i];
	
	totalLength += _segment[2];
	
}

//vertex stuff
v_buff = vertex_create_buffer();

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_colour();
v_format = vertex_format_end();

c = c_purple;

instance_create_layer(x,y,"shadow_layer",o_tentalcle_hole);

follow = o_player;

draw = false;
alarm[0] = 2;