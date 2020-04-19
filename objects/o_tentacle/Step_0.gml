/// @description Insert description here
// You can write your code in this editor

var _arr_length = array_length_1d(segments);

//frustum culling
if (x < view_x-totalLength || y <  view_y-totalLength) || (x > view_x+view_w+totalLength || y >  view_y+view_h+totalLength){
	draw = false;
	exit;
}else{
	draw = true;	
}

if distance_to_point(follow.x,follow.y) < totalLength+dist_away{
	
	var _seg = segments[0];
	
	targetx = lerp(targetx,follow.x-dist_away*cos(_seg[3]),.1);
	targety = lerp(targety,follow.y-dist_away*sin(_seg[3]),.1);
	
	//player near
	/*
	if o_music.key_pressed && !o_music.on_beat{
		level_restart();
	}*/
	
}else{
	targetx = lerp(targetx, x+10*sin((current_time+x)*0.001),.1);
	targety = lerp(targety, y-(o_music.beat_size)*4 ,.1);
}

var _segment, _target;
for(var i = 0; i < _arr_length; i++){
	_segment = segments[i];
	
	_target = (i == 0? [targetx,targety,0,0] : segments[i-1]);
	
	_segment[3] = arctan2(_target[1]-_segment[1],_target[0]-_segment[0]);
	
	_segment[0] = _target[0]-_segment[2]*cos(_segment[3]);
	_segment[1] = _target[1]-_segment[2]*sin(_segment[3]);
	
	
	segments[i] = _segment;
	
}

var _lastseg = segments[_arr_length-1];

for(var i = 0; i < _arr_length; i++){
	_segment = segments[i];
	
	_segment[0] = _segment[0]+(x-_lastseg[0]);
	_segment[1] = _segment[1]+(y-_lastseg[1]);
	
	segments[i] = _segment;

}



vertex_begin(v_buff,v_format);
//construct vertex buffer
var _x1,_y1,_x2,_y2, _base_w, _base_width_vector, _base_height_vector;
for(var i = _arr_length-1; i > -1; i--){
	var _segment = segments[i];
	
	_base_w = lerp(end_width,start_width,i/_arr_length)/2;
	
	_base_width_vector = _base_w*cos(_segment[3]+1.5708);
	_base_height_vector = _base_w*sin(_segment[3]+1.5708);
	
	_x1 = _segment[0]-_base_width_vector;
	_y1 = _segment[1]-_base_height_vector;
	_x2 = _x1+_base_width_vector*2;
	_y2 = _y1+_base_height_vector*2;
	
	vertex_position(v_buff,_x1,_y1);
	vertex_color(v_buff,c,1);
	vertex_position(v_buff,_x2,_y2);
	vertex_color(v_buff,c,1);
	//vertex_position(v_buff,_x3,_y3);
	//vertex_color(v_buff,c_white,1);
	
}

	//add end of the last segment
	_base_width_vector = _base_w*cos(_segment[3]+1.5708);
	_base_height_vector = _base_w*sin(_segment[3]+1.5708);
	
	var _cap_vectorx = _segment[2]*cos(_segment[3]),
		_cap_vectory = _segment[2]*sin(_segment[3]);
	
	_x1 = _segment[0]+_cap_vectorx-_base_width_vector;
	_y1 = _segment[1]+_cap_vectory-_base_height_vector;
	_x2 = _segment[0]+_cap_vectorx+_base_width_vector;
	_y2 = _segment[1]+_cap_vectory+_base_height_vector;
	
	vertex_position(v_buff,_x1,_y1);
	vertex_color(v_buff,c,1);
	vertex_position(v_buff,_x2,_y2);
	vertex_color(v_buff,c,1);

vertex_end(v_buff);