/// @description 
width  = room_width div CELL_SIZE;
height = room_height div CELL_SIZE;
grid = ds_grid_create(width,height);


if room = r_random_world{
	ds_grid_clear(grid, WALL);//make a new dungeon
	event_user(0);
}else{
	ds_grid_clear(grid, FLOOR);	
		for (var xx = 0; xx < width; xx++){
			for (var yy = 0; yy < height; yy++){
				
				var lay_id = layer_get_id("Collision");
				var map_id = layer_tilemap_get_id(lay_id);
				var data = tilemap_get_at_pixel(map_id, xx*CELL_SIZE, yy*CELL_SIZE);

				if  data != 0 {
						grid[# xx,yy] =	WALL;
				}
			}
		}
}