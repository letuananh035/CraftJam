/// @description make a new dungeon



instance_destroy(o_player);
ds_grid_set_region(grid, 0,0, width-1 , height-1, WALL);
ds_grid_clear(grid,WALL); 
tilemap = layer_tilemap_get_id("Collision");
tileground = layer_tilemap_get_id("ROCK_SHADOWS");
grass_init = layer_tilemap_get_id("grass_init");
var cx = width div 2;
var cy = height div 2;
ready = false;
instance_create_layer(cx*CELL_SIZE+16, cy*CELL_SIZE+16,I, o_player);
var cdir = irandom(3);
var floor_size = (300);

#region//build grid
for (var i = 0; i < floor_size; i++){
	cx = clamp(cx,5, width-5);
	cy = clamp(cy,5, height-5);

	grid[# cx, cy] = FLOOR;


		var odds = 0; //make the real dungeon	
		if (irandom(odds)) == odds {
			cdir = irandom(6);	
		}
	
	



	//Move the controller
	//we multiply our 0 1 2 3 by 90 to get a 360 direction
	var xdir = lengthdir_x(1, cdir*90);
	var ydir = lengthdir_y(1, cdir*90);

		if i = floor_size -1{
		grid[# cx, cy] = FLOOR;
		grid[# cx-1, cy] = FLOOR;
		grid[# cx+1, cy] = FLOOR;
		grid[# cx, cy-1] = FLOOR;
		grid[# cx, cy+1] = FLOOR;
		
		grid[# cx+1, cy+1] = FLOOR;
		grid[# cx+1, cy-1] = FLOOR;
		grid[# cx-1, cy+1] = FLOOR;
		grid[# cx-1, cy-1] = FLOOR;
		//instance_create_layer(cx*CELL_SIZE,cy*CELL_SIZE, I, o_crafting_bench);
		ready = true;
		}
		
		cx += xdir;
		cy += ydir;
	
		cx = clamp(cx,5, width-5);
		cy = clamp(cy,5, height-5);
}
#endregion
#region//add the walls
for (var  yy = 1; yy < height-1; yy++) {
	for (var xx = 1; xx < width-1; xx++){

		
	

	if (grid[# xx, yy] == WALL) {	
				//remove double wall ver	from the top square
	if  grid[# xx,yy] == WALL and 
		grid[# xx,yy+1] = WALL and
		//top
		grid[# xx, yy-1] == FLOOR and  //top 
		grid[# xx-1, yy] == FLOOR and //l
		grid[# xx+1, yy] == FLOOR and //r
		//bot
		grid[# xx, yy+2] == FLOOR and  //bot 
		grid[# xx+1, yy+1] == FLOOR and  //br
		grid[# xx-1, yy+1] == FLOOR and chance(.15)  //bl
		{
		grid[# xx,yy] = FLOOR;		
		grid[# xx,yy+1] = FLOOR;			
		}

		//remove double wall hor	from the right square
	if
		chance(.35) and
		grid[# xx, yy+1] == FLOOR and
		grid[# xx, yy-1] == FLOOR and //top
		grid[# xx-1, yy] == FLOOR and //l
		
		//r
		grid[# xx+1, yy-1] == FLOOR and //top
		grid[# xx+2, yy] == FLOOR and //left
		grid[# xx+1, yy+1] == FLOOR //down
		{
		grid[# xx,yy] = FLOOR;		
		grid[# xx+1,yy] = FLOOR;			
		}
		
	//remove single wall horizontal
	if //grid[# xx,yy] == WALL and 
		chance(.15) and
		grid[# xx,yy-1] == FLOOR and //up
		grid[# xx,yy+1] == FLOOR and //down
		grid[# xx-1,yy] == FLOOR and //left
		grid[# xx+1,yy] == FLOOR { //right
		grid[# xx,yy] = FLOOR
		}
			build_dungeon_tiles(grid, xx, yy, tilemap, WALL);
		}
	

	//CHECK IF WE ARE A WALL, then it checks up,  down, left, and right if there are floor tiles
		if grid[# xx,yy] == FLOOR

	{
		
		/*
			if chance(.01)   and instance_number(o_enemy_parent) < max_enemy{
			instance_create_layer(xx*CELL_SIZE+CELL_SIZE/2,yy*CELL_SIZE+CELL_SIZE/2, I, o_bat);
			grid[# xx,yy] = ENEMY;		
			
			*/
			}

	
			
			//3
	//	if chance(.02) and 

			//instance_create_layer(xx*CELL_SIZE+CELL_SIZE/2,yy*CELL_SIZE+CELL_SIZE/2, "Instances", s);
			
		//	grid[# xx,yy] = ENEMY;
	//}
}


	//clean the dungeon
	if grid[# xx,yy] = ENEMY{
		grid[# xx,yy] = FLOOR;
	}	

	////END
		}
	

