/// @description DESTROY TILE
///@arg x
///@arg y

if instance_exists(o_this_is_boss_room) exit;
if !instance_exists(o_grid_parent) exit;
if room = r_ran_three exit; //not on manta ray boss room 
//Update floor
var Tile_Grid = o_grid_parent.grid;
var wall_tiles = o_grid_parent.tilemap;
var wall_ground = o_grid_parent.tileground;
var lines = o_grid_parent.lines;
var xx = argument0 div CELL_SIZE;
var yy = argument1 div CELL_SIZE; 

xx = clamp(xx, 0, ds_grid_width(Tile_Grid)-1);
yy = clamp(yy, 0, ds_grid_height(Tile_Grid)-1);

if instance_exists(o_player) and o_player.finish = true = true and room != r_ran_black_and_white{
	
	
	//only build dirt when our player has landed and stuff
	if Tile_Grid[# xx,yy] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx),CELL_SIZE*(yy),amount);
	}

	if Tile_Grid[# xx-1,yy-1] == WALL{
	var amount = random_range(25,35);	
	create_debri(CELL_SIZE*(xx-1),CELL_SIZE*(yy-1),amount);
	}

	if Tile_Grid[# xx+1,yy-1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx+1),CELL_SIZE*(yy-1),amount);
	}
	if Tile_Grid[# xx-1,yy+1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx-1),CELL_SIZE*(yy+1),amount);
	}
	if Tile_Grid[# xx+1,yy+1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx+1),CELL_SIZE*(yy+1),amount);
	}


	if Tile_Grid[# xx-1,yy-1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx-1),CELL_SIZE*(yy-1),amount);
	}
	if Tile_Grid[# xx+1,yy-1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx+1),CELL_SIZE*(yy-1),amount);
	}
	if Tile_Grid[# xx-1,yy+1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx-1),CELL_SIZE*(yy+1),amount);
	}
	if Tile_Grid[# xx+1,yy+1] == WALL{
	var amount = random_range(25,35);
	create_debri(CELL_SIZE*(xx+1),CELL_SIZE*(yy+1),amount);
	}
}

Tile_Grid[# xx-1,yy-1] = FLOOR;
Tile_Grid[# xx+1,yy-1] = FLOOR;
Tile_Grid[# xx-1,yy+1] = FLOOR;
Tile_Grid[# xx+1,yy+1] = FLOOR;

Tile_Grid[# xx,yy-1] = FLOOR;
Tile_Grid[# xx,yy+1] = FLOOR;
Tile_Grid[# xx-1,yy] = FLOOR;
Tile_Grid[# xx+1,yy] = FLOOR;

Tile_Grid[# xx, yy] = FLOOR;


//update the art firstwd

#region //WE WANT TO KEEP THE SHADOWS ON ONE FOR SOME REASON
if room != r_ran_three{
	var a = 1;
	//TL
	if Tile_Grid[# xx-1,yy-2] = WALL and Tile_Grid[# xx-1,yy-1] = FLOOR{
		//no wall left and no wall right
		if Tile_Grid[# xx-2,yy-2] != WALL and 
		Tile_Grid[# xx,yy-2] != WALL{
		tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx-a)),(CELL_SIZE*(yy-a)));		
		}
		//NO WALL LEFT AND WALL RIGHT
		if Tile_Grid[# xx-2,yy-2] != WALL and 
		Tile_Grid[# xx,yy-2] = WALL{

		tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx-a)),(CELL_SIZE*(yy-a)));		
		}
		//WALL LEFT AND NO WALL RIGHT
		if Tile_Grid[# xx-2,yy-2] = WALL and 
		Tile_Grid[# xx,yy-2] != WALL{
		tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx-a)),(CELL_SIZE*(yy-a)));		
		}
		//WALL LEFT AND RIGHT
		if Tile_Grid[# xx-2,yy-2] = WALL and 
		Tile_Grid[# xx,yy-2] = WALL{
		tilemap_set_at_pixel(wall_ground,4,(CELL_SIZE*(xx-a)),(CELL_SIZE*(yy-a)));		
		}
	
	}

	//T
	if Tile_Grid[# xx,yy-2] = WALL and Tile_Grid[# xx,yy-1] = FLOOR{
		//-L -R
		if Tile_Grid[# xx-1,yy-2] != WALL and 
		Tile_Grid[# xx+1,yy-2] != WALL{
		tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx)),(CELL_SIZE*(yy-a)));		
		}
		//-L R
		if Tile_Grid[# xx-1,yy-2] != WALL and 
		Tile_Grid[# xx+1,yy-2] = WALL{
		
		tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx)),(CELL_SIZE*(yy-a)));		
		}
		//L -R
		if Tile_Grid[# xx-1,yy-2] = WALL and 
		Tile_Grid[# xx+1,yy-2] != WALL{
		tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx)),(CELL_SIZE*(yy-a)));		
		}
		//L R
		if Tile_Grid[# xx-1,yy-2] = WALL and 
		Tile_Grid[# xx+1,yy-2] = WALL{
		tilemap_set_at_pixel(wall_ground,4,(CELL_SIZE*(xx)),(CELL_SIZE*(yy-a)));		
		}
	}

	//TR
	if Tile_Grid[# xx+1,yy-2] = WALL and Tile_Grid[# xx+1,yy-1] = FLOOR{
		//-L -R
		if Tile_Grid[# xx,yy-2] != WALL and 
		Tile_Grid[# xx+2,yy-2] != WALL{
		tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx+a)),(CELL_SIZE*(yy-a)));		
		}
		//-L R
		if Tile_Grid[# xx,yy-2] != WALL and 
		Tile_Grid[# xx+2,yy-2] = WALL{
		tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx+a)),(CELL_SIZE*(yy-a)));		
		}
		//L -R
		if Tile_Grid[# xx,yy-2] = WALL and 
		Tile_Grid[# xx+2,yy-2] != WALL{
		tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx+a)),(CELL_SIZE*(yy-a)));		
		}
		//L R
		if Tile_Grid[# xx,yy-2] = WALL and 
		Tile_Grid[# xx+2,yy-2] = WALL{
		tilemap_set_at_pixel(wall_ground,4,(CELL_SIZE*(xx+a)),(CELL_SIZE*(yy-a)));		
		}
	
	}
	/*
		so aftewards these are the tiles that have potential to be walls
		what we are going to do is to update them, and if we want we can add
		debri and more tilesets 
		
	*/

	//ML
	if Tile_Grid[# xx-1,yy] = FLOOR {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy));	
	}

	//M
	if Tile_Grid[# xx,yy] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*xx),(CELL_SIZE*yy));	
	}
	//MR
	if Tile_Grid[# xx+1,yy] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy));	
	}


	//BL
	if Tile_Grid[# xx-1,yy+1] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy+a));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx-a)),(CELL_SIZE*(yy+a)));	
	}

	//B
	if Tile_Grid[# xx,yy+1] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx)),(CELL_SIZE*yy+a));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*xx),(CELL_SIZE*(yy+a)));	
	}
	//BR
	if Tile_Grid[# xx+1,yy+1] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy+a));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx+a)),(CELL_SIZE*(yy+a)));	
	}

	//ML
	if Tile_Grid[# xx-1,yy] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy));	
	}

	//M
	if Tile_Grid[# xx,yy] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*xx),(CELL_SIZE*yy));	
	}
	//MR
	if Tile_Grid[# xx+1,yy] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy));	
	}

	///THESE ARE FOR ONE EXTRA SO WE CAN REACH THE FARTHEST SHADOWS 2 SQUARES AWAY!!!
	//BB L
	
	
	if Tile_Grid[# xx-1,yy+2] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy+a*2));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx-a)),(CELL_SIZE*(yy+a*2)));	
	}

	//BB 
	if Tile_Grid[# xx,yy+2] = FLOOR{
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx)),(CELL_SIZE*yy+a*2));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*xx),(CELL_SIZE*(yy+a*2)));	
	}
	//BR

	if Tile_Grid[# xx+1,yy+2] = FLOOR{
		
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy+a*2));
		tile_set_empty(GET_REKT);
		tilemap_set_at_pixel(wall_ground,5,(CELL_SIZE*(xx+a*1)),(CELL_SIZE*(yy+a*2)));	
	}

	//UPDATES FAR RiGHT AND FAR LEFT TO THE RIGHT SHADOW



	//LL
	if Tile_Grid[# xx-2,yy] = FLOOR and Tile_Grid[# xx-2, yy-1] =WALL {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		// -L -R
		if Tile_Grid[# xx-3,yy-1] != WALL and
		Tile_Grid[# xx-1,yy-1] != WALL{
			tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy)));	
		}
	
		// -L R
		if Tile_Grid[# xx-3,yy-1] != WALL and
		Tile_Grid[# xx-1,yy-1] = WALL{
			tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy)));	
		}
	
		// L -R
		if Tile_Grid[# xx-3,yy-1] = WALL and
		Tile_Grid[# xx-1,yy-1] != WALL{
			tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy)));	
		}
	
			// L R
		if Tile_Grid[# xx-3,yy-1] = WALL and
		Tile_Grid[# xx-1,yy-1] = WALL{
			tilemap_set_at_pixel(wall_ground,4,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy)));	
		}
	}

	//RR
	if Tile_Grid[# xx+2,yy] = FLOOR and Tile_Grid[# xx+2, yy-1] =WALL {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		// -L -R
		if Tile_Grid[# xx+3,yy-1] != WALL and
		Tile_Grid[# xx+1,yy-1] != WALL{
			tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy)));	
		}
	
		// -L R
		if Tile_Grid[# xx+3,yy-1] != WALL and
		Tile_Grid[# xx+1,yy-1] = WALL{
			tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy)));	
		}
	
		// L -R
		if Tile_Grid[# xx+3,yy-1] = WALL and
		Tile_Grid[# xx+1,yy-1] != WALL{
			tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy)));	
		}
	
			// L R
		if Tile_Grid[# xx+3,yy-1] = WALL and
		Tile_Grid[# xx+1,yy-1] = WALL{
			tilemap_set_at_pixel(wall_ground,4,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy)));	
		}
	}


	//RR DD
	if Tile_Grid[# xx+2,yy+2] = FLOOR and Tile_Grid[# xx+2, yy+1] =WALL {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		// -L -R
		if Tile_Grid[# xx+3,yy+1] != WALL {
			tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy+a*2)));	
		}else{
			tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy+a*2)));	
		}
	}

	//LL DD
	if Tile_Grid[# xx-2,yy+2] = FLOOR and Tile_Grid[# xx-a*2, yy+a] =WALL {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		// -L -R
		if Tile_Grid[# xx-3,yy+1] != WALL {
			tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy+a*2)));	
		}else{
			tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy+a*2)));	
		}
	}

	//RR D
	if Tile_Grid[# xx+2,yy+1] = FLOOR and Tile_Grid[# xx+2, yy] =WALL {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		// -L -R
		if Tile_Grid[# xx+3,yy] != WALL {
			tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy+a)));	
		}else{
			tilemap_set_at_pixel(wall_ground,2,(CELL_SIZE*(xx+a*2)),(CELL_SIZE*(yy+a)));	
		}
	}

	//LL D
	if Tile_Grid[# xx-2,yy+1] = FLOOR and Tile_Grid[# xx-2, yy] =WALL {
		var GET_REKT = tilemap_get_at_pixel(wall_ground,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*yy));
		tile_set_empty(GET_REKT);
		// -L -R
		if Tile_Grid[# xx-3,yy] != WALL {
			tilemap_set_at_pixel(wall_ground,1,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy+a*1)));	
		}else{
			tilemap_set_at_pixel(wall_ground,3,(CELL_SIZE*(xx-a*2)),(CELL_SIZE*(yy+a)));	
		}
	}
}
#endregion

build_dungeon_tiles(Tile_Grid, xx, yy, wall_tiles, WALL);

//FAR RIGHT
if Tile_Grid[# xx+2,yy-2] == WALL{
	build_dungeon_tiles(Tile_Grid, xx+2, yy-2, wall_tiles, WALL);
}
if Tile_Grid[# xx+2,yy-1] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx+2, yy-1, wall_tiles, WALL);
}
if Tile_Grid[# xx+2,yy] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx+2, yy, wall_tiles, WALL);
}
if Tile_Grid[# xx+2,yy+1] == WALL{
	build_dungeon_tiles(Tile_Grid, xx+2, yy+1, wall_tiles, WALL);
}
//FAR BOT
if Tile_Grid[# xx+2,yy+2] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx+2, yy+2, wall_tiles, WALL);
}
if Tile_Grid[# xx+1,yy+2] == WALL{
	build_dungeon_tiles(Tile_Grid,xx+1, yy+2, wall_tiles, WALL);
}
if Tile_Grid[# xx,yy+2] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx, yy+2, wall_tiles, WALL);
}
if Tile_Grid[# xx-1,yy+2] == WALL{ 
	build_dungeon_tiles(Tile_Grid,  xx-1, yy+2, wall_tiles, WALL);
}
//LEFT
if Tile_Grid[# xx-2,yy+2] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx-2, yy+2, wall_tiles, WALL);
}
if Tile_Grid[# xx-2,yy+1] == WALL{ 
	build_dungeon_tiles(Tile_Grid,xx-2, yy+1, wall_tiles, WALL);
}
if Tile_Grid[# xx-2,yy] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx-2, yy, wall_tiles, WALL);
}
if Tile_Grid[# xx-2,yy-1] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx-2, yy-1, wall_tiles, WALL);
}
if Tile_Grid[# xx-2,yy-2] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx-2, yy-2,  wall_tiles, WALL);
}
//TOP
if Tile_Grid[# xx-1,yy-2] == WALL{
	build_dungeon_tiles(Tile_Grid, xx-1, yy-2, wall_tiles, WALL);
}
if Tile_Grid[# xx,yy-2] == WALL{
	build_dungeon_tiles(Tile_Grid, xx, yy-2, wall_tiles, WALL);
}
if Tile_Grid[# xx+1,yy-2] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx+1, yy-2, wall_tiles, WALL);
}
//quicker update
if Tile_Grid[# xx+1,yy] == WALL{
	build_dungeon_tiles(Tile_Grid, xx+1, yy, wall_tiles, WALL);
}
//quicker update
if Tile_Grid[# xx-1,yy] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx-1, yy, wall_tiles, WALL);
}
if Tile_Grid[# xx,yy+1] == WALL{
	build_dungeon_tiles(Tile_Grid, xx, yy+1, wall_tiles, WALL);
}

if Tile_Grid[# xx,yy-1] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx, yy-1, wall_tiles, WALL);
}
//TR
if Tile_Grid[# xx+1,yy-1] == WALL{
	build_dungeon_tiles(Tile_Grid,  xx+1, yy-1, wall_tiles, WALL);
}
//TL
if Tile_Grid[# xx-1,yy-1] == WALL{
	build_dungeon_tiles(Tile_Grid, xx-1, yy-1, wall_tiles, WALL);
}
//BR
if Tile_Grid[# xx+1,yy+1] == WALL{ 
	build_dungeon_tiles(Tile_Grid, xx+1,yy+1, wall_tiles, WALL);
}
//BL
if Tile_Grid[# xx-1,yy+1] == WALL{
	build_dungeon_tiles(Tile_Grid, xx-1, yy+1, wall_tiles, WALL);
}
if Tile_Grid[# xx,yy] == WALL{
	build_dungeon_tiles(Tile_Grid, xx, yy, wall_tiles, WALL);
}