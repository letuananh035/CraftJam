///@arg x
///@arg y


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

}
	
var xx = 0;

#region add left right up down
var U = -1;
var R = -1;
var L = -1;
var D = -1;
#endregion

for (var i=0; i<4; i++){
	var angle = i*90;//angle of line
 
	var current_x = argument0 div CELL_SIZE;
	var current_y = argument1 div CELL_SIZE; 
 
	 current_x *= CELL_SIZE;
	 current_y *= CELL_SIZE;
 #region offset
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
	var x_incr = lengthdir_x(32,angle);
	var y_incr = lengthdir_y(32,angle);


	while(true){
	    if tilemap_get_at_pixel(wall_tiles, current_x , current_y) != 0{
		
	        break;
	    } 
	    current_x += x_incr;
	    current_y += y_incr;
		
		
		#region debug
		if current_x < 0 or current_x > room_width{
			show_debug_message("X "+string(current_x))
		break;	
		}
	
		if current_y < 0 or current_y > room_height{
			show_debug_message("Y "+string(current_y))
		break;	
		}
		#endregion
		
		#region add L U R D
		var x_ = argument0 div CELL_SIZE;
		var y_ = argument1 div CELL_SIZE;

		x_ *= CELL_SIZE;
		y_ *= CELL_SIZE;
		
		switch i{
			case 0: R++;
			burn_grass_small(x_+R*32,y_); 
			break;
			case 1: U++;
			burn_grass_small(x_,y_-U*32);
			break;
			case 2: L++;
			burn_grass_small(x_-L*32,y_);
			break;
			case 3: D++;
			burn_grass_small(x_,y_+D*32);
			break;
		}
		#endregion
	
	}
		var x_ = argument0 div CELL_SIZE;
		var y_ = argument1 div CELL_SIZE;
		
		var s = 0;
	
	switch i{
	case 0:		
		var s = create_hitbox(s_pixel,x_*CELL_SIZE,y_*CELL_SIZE+1,0,4,
		[o_enemy_parent, o_grass,o_breakable_parent,o_cut_grass],4,12,20);
		s.image_xscale =  current_x - x_*CELL_SIZE;
		s.image_yscale = 30;
		s.burn_grass = true;
		s.is_a_bomb = true;
		
		if collision_rectangle(current_x,current_y+16,x_*CELL_SIZE ,y_*CELL_SIZE,o_player,false,false){
			s = 1;
		}
		
	
	break;
	
	case 1:
	
		var s = create_hitbox(s_pixel,x_*CELL_SIZE,y_*CELL_SIZE,0,4,
		[o_enemy_parent, o_grass,o_breakable_parent,o_cut_grass],4,12,20);
		s.image_xscale =  32;
		s.image_yscale = current_y - y_*CELL_SIZE;
		s.burn_grass = true;
		s.is_a_bomb = true;
	
		var s = collision_rectangle(current_x+16,current_y,x_*CELL_SIZE ,y_*CELL_SIZE,o_enemy_parent,false,false);
		if s != noone{
			with s{
				var n = create_hitbox(s_bomb_hitbox,x,y,0,4,[o_enemy_parent],4,12,20);
				n.is_a_bomb = true;
			}	
		}
		if collision_rectangle(current_x+16,current_y,x_*CELL_SIZE ,y_*CELL_SIZE,o_player,false,false){
			s = 1;
		
		}
	break;
	
	case 2:	
	
		var s = create_hitbox(s_pixel,x_*CELL_SIZE,y_*CELL_SIZE+1,0,4,
		[o_enemy_parent, o_grass,o_breakable_parent,o_cut_grass],4,12,20);
		s.image_xscale = current_x - x_*CELL_SIZE;
		s.image_yscale = 30;
		s.burn_grass = true;
		s.is_a_bomb = true;
		
			var s = collision_rectangle(current_x,current_y-16,x_*CELL_SIZE+16 ,y_*CELL_SIZE+32,o_enemy_parent,false,false);
		if s != noone{
			with s{
				var n =	create_hitbox(s_bomb_hitbox,x,y,0,4,[o_enemy_parent],4,12,20);
				n.is_a_bomb = true;
			}	
		}	
			
		if collision_rectangle(current_x,current_y-16,x_*CELL_SIZE+16 ,y_*CELL_SIZE+32,o_player,false,false){
			s = 1;
		
		}

	break;
	case 3:		
	
		var s = create_hitbox(s_pixel,x_*CELL_SIZE,y_*CELL_SIZE,0,SEC*1,
		[o_enemy_parent, o_grass,o_breakable_parent,o_cut_grass],4,12,20);
		s.image_xscale =  32;
		s.image_yscale =  current_y - y_*CELL_SIZE;
		s.burn_grass = true;
		s.is_a_bomb = true;
	
			var s = collision_rectangle(current_x+16,current_y,x_*CELL_SIZE ,y_*CELL_SIZE,o_enemy_parent,false,false);
		if s != noone{
			with s{
				var n = create_hitbox(s_bomb_hitbox,x,y,0,4,[o_enemy_parent],4,12,20);
				n.is_a_bomb = true;
			}	
		}
		if collision_rectangle(current_x+16,current_y,x_*CELL_SIZE ,y_*CELL_SIZE,o_player,false,false){
			s = 1;
		}
	break;
	}
	
	if s = 1{
		with o_player{
		var n = create_hitbox(o_hitbox,x,y,0,4,[o_player],.75,4,100);
			n.is_a_bomb = true;
		}
	}		
}