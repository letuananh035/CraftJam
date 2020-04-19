///@arg x
///@arg y
///@arg sprite
var xx = argument0 div CELL_SIZE;
var yy = argument1 div CELL_SIZE; 
if instance_exists(o_grid_parent){
//Update floor
var Tile_Grid = o_grid_parent.grid;
var wall_tiles = o_grid_parent.tilemap;

//xx = clamp(xx, 0, ds_grid_width(Tile_Grid)-1);
//yy = clamp(yy, 0, ds_grid_height(Tile_Grid)-1);

xx = clamp(xx, 0, ds_grid_width(Tile_Grid)-1);
yy = clamp(yy, 0, ds_grid_height(Tile_Grid)-1);

}else{
	
exit;
wall_tiles = layer_tilemap_get_id("Collision");

var width = room_width div CELL_SIZE;
var height = room_height div CELL_SIZE;
var grid = Tile_Grid;
xx = clamp(xx, 0, ds_grid_width(grid)-1);
yy = clamp(yy, 0, ds_grid_height(grid)-1);
ds_grid_destroy(grid);
}

var sprite_ = argument2;

var _alpha = .6;

if sprite_ = s_explosion_cross{
	_alpha = 1;	
}
var lerp_amount = .75;
var mod_ = 1;
var xx = 0;



//var ground = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx)),(CELL_SIZE*(yy)));

var U = -1;
var R = -1;
var L = -1;
var D = -1;

for (var i=0; i<4; i++){

	var angle = i*90;//angle of line


 
	var current_x = argument0 div CELL_SIZE;
	var current_y = argument1 div CELL_SIZE;

 
	 current_x *= CELL_SIZE;
	 current_y *= CELL_SIZE;
	 
 #region
 
	switch i{
	case 0:

	
	 current_y += 16;
	break;
	
	case 1:
	 current_x += 16;
	 current_y += 31;
	break;
	
	case 2:
	current_x += 31;
	current_y += 16;	
	break;
	
	case 3:
	current_x += 16;
	break;
	}
#endregion
	// if place_meeting(x+_x_speed, y, collision_object_) {
	//	if !place_meeting(x+sign(_x_speed), y, collision_object_) {
	//		x += sign(_x_speed);

 
	var x_incr = lengthdir_x(32,angle);
	var y_incr = lengthdir_y(32,angle);

	draw_set_alpha(1);
	while(true){
	    if tilemap_get_at_pixel(wall_tiles, current_x , current_y) != 0{
		
	        break;
	    } 
	switch i{
		case 0: R++;
		break;
		case 1: U++;
		break;
		case 2: L++;
		break;
		case 3: D++;
		break;
	}
	

	
	    current_x += x_incr;
	    current_y += y_incr;
		if current_x < 0 or current_x > room_width{
			show_debug_message("X "+string(current_x))
		break;	
		}
	
		if current_y < 0 or current_y > room_height{
			show_debug_message("Y "+string(current_y))
		break;	
		}
	}
}

if object_index = o_bomb_cross_helper{
	R_ = R; //we use this for the lighting
	U_ = U;
	L_ = L;
	D_ = D;
}
#region

var x_center = argument0 div CELL_SIZE;
var y_center = argument1 div CELL_SIZE;


if object_index = o_bomb_cross_helper{
x_lerp = lerp(x_lerp,x_center*CELL_SIZE,lerp_amount);
y_lerp = lerp(y_lerp,y_center*CELL_SIZE,lerp_amount);	
	
}


	if R > 0{
		
	for (var i = 0; i<R;i++){
		
			if i = R-1{
			draw_sprite_ext(sprite_,0,16+x_lerp+32+i*32,16+y_lerp
			,1*mod_,1*mod_,0,c_white,_alpha);	
			}else{
			draw_sprite_ext(sprite_,1,16+x_lerp+32+i*32,16+y_lerp
			,1*mod_,1*mod_,0,c_white,_alpha);
			}
		}
	}



	if U > 0{
	for (var i = 0; i<U;i++){
		
			if i = U-1{
			draw_sprite_ext(sprite_,2,16+x_lerp,16+y_lerp-32-i*32
				,1*mod_,1*mod_,0,c_white,_alpha);	
			}else{
			draw_sprite_ext(sprite_,3,16+x_lerp,16+y_lerp-32-i*32
			,1*mod_,1*mod_,0,c_white,_alpha);
			
			}
		}
	}

	if L > 0{
	for (var i = 0; i<L;i++){
		
			if i = L-1{
			draw_sprite_ext(sprite_,4,16+x_lerp-32-i*32,16+y_lerp
			,1*mod_,1*mod_,0,c_white,_alpha);	
			}else{
			draw_sprite_ext(sprite_,5,16+x_lerp-32-i*32,16+y_lerp
			,1*mod_,1*mod_,0,c_white,_alpha);
			}
		}
	}

	if D > 0{
	for (var i = 0; i<D;i++){
		
		if i = D-1{
			draw_sprite_ext(sprite_,6,16+x_lerp,16+y_lerp+32+i*32
			,1*mod_,1*mod_,0,c_white,_alpha);
		}else{
			draw_sprite_ext(sprite_,7,16+x_lerp,16+y_lerp+32+i*32
			,1*mod_,1*mod_,0,c_white,_alpha);
		}
	}
}


#endregion
#region angles


var cross = 1;

if R < 1 and U < 1 and L < 1 and D >= 1{ //UP 
	draw_sprite_ext(sprite_,2,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}



if R < 1 and U >= 1 and L < 1 and D < 1{ //DOWN
	draw_sprite_ext(sprite_,6,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}

if R >= 1 and U < 1 and L < 1 and D < 1{ //RIGHT
	draw_sprite_ext(sprite_,4,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);
	cross = 0;
}

if R < 1 and U < 1 and L >= 1 and D < 1{ //LEFT
	draw_sprite_ext(sprite_,0,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}

//sides
//LEFT DOWN
if L >= 1 and D >= 1 and R < 1 and U < 1{
	draw_sprite_ext(sprite_,9,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}
//RIGHT DOWN
if L < 1 and D >= 1 and R >= 1 and U < 1{
	draw_sprite_ext(sprite_,10,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}
//LEFT UP
if L >= 1 and D < 1 and R < 1 and U >= 1{
	draw_sprite_ext(sprite_,12,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}
//RIGHT UP
if L < 1 and D < 1 and R >= 1 and U >= 1{
	draw_sprite_ext(sprite_,11,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}

//UP/DOWN ONLY
if U >= 1 and D >= 1 and L < 1 and R < 1{
	draw_sprite_ext(sprite_,1,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}


//LEFT/RIGHT ONLY
if U >= 1 and D >= 1 and L < 1 and R < 1{
	draw_sprite_ext(sprite_,3,16+x_lerp,16+y_lerp	
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}



//T LEFT
if U >= 1 and D >= 1 and L < 1 and R >= 1{
	draw_sprite_ext(sprite_,16,16+x_lerp,16+y_lerp,
	1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}

//T RIGHT
if U >= 1 and D >= 1 and L >= 1 and R < 1{
	draw_sprite_ext(sprite_,14,16+x_center*CELL_SIZE,16+y_lerp,
	1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}

//T UP
if U >= 1 and D < 1 and L >= 1 and R >= 1{
	draw_sprite_ext(sprite_,13,16+x_lerp,16+y_lerp,
	1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}

//T DOWN
if U < 1 and D >= 1 and L >= 1 and R >= 1{
	draw_sprite_ext(sprite_,15,16+x_lerp,16+y_lerp
	,1*mod_,1*mod_,0,c_white,_alpha);	
	cross = 0;
}


//LEFT ONLY

if cross = 1{
		draw_sprite_ext(sprite_,8,16+x_lerp,16+y_lerp,1*mod_,1*mod_,0,c_white,_alpha);	
}




#endregion




draw_set_alpha(1);
draw_set_color(c_white);