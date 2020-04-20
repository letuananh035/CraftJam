/// @description Insert description here
// You can write your code in this editor
var dgrid = depth_grid;
var inst_num = instance_number(o_depth_parent);
ds_grid_resize(dgrid,2,inst_num);

var yy = 0; with(o_depth_parent){
	dgrid[# 0,yy] = id;
	switch(object_index){
		case o_player_expressions:
			dgrid[# 1,yy] = -9000;
		break;
		
		case o_player:
			dgrid[# 1,yy] = o_player.yy+26;
			break;
		
		default:
			dgrid[# 1,yy] = y;
			break;
	}
	
	yy++;
}

ds_grid_sort(dgrid,1,true);
yy = 0; repeat(inst_num){
	var inst = dgrid[# 0,yy];	
	with(inst){
		event_perform(ev_draw,0);	
	}
	yy++;
}