if !instance_exists(o_this_is_a_dungeon) exit;
if !instance_exists(o_grid_parent) exit;

var xx = argument0 div 32;
var yy = argument1 div 32;
var Tile_Grid = o_grid_parent.grid_burn;
xx = clamp(xx, 0, ds_grid_width(Tile_Grid));
yy = clamp(yy, 0, ds_grid_height(Tile_Grid));

var a = 1;
var down = 32;

//mid
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx)),(CELL_SIZE*yy)) = 0{
Tile_Grid[# xx, yy] = 1;
scr_update_tile(Tile_Grid, xx, yy, global.Tilemap_Wall, 1);
}


// left up
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy-a)) = 0{
Tile_Grid[# xx-1, yy-1] = 1;
scr_update_tile(Tile_Grid, xx-1, yy-1, global.Tilemap_Wall, 1);
}


//up
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx)),(CELL_SIZE*yy-a)) = 0{
Tile_Grid[# xx, yy-1] = 1;
scr_update_tile(Tile_Grid, xx, yy-1, global.Tilemap_Wall, 1);
}

//up right
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy-a)) = 0{
Tile_Grid[# xx+1, yy-1] = 1;
scr_update_tile(Tile_Grid, xx+1, yy-1, global.Tilemap_Wall, 1);
}

// right
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy)) = 0{
Tile_Grid[# xx+1, yy] = 1;
scr_update_tile(Tile_Grid, xx+1, yy, global.Tilemap_Wall, 1);
}

// right down
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx+a)),(CELL_SIZE*yy+down)) = 0{
Tile_Grid[# xx+1, yy+1] = 1;
scr_update_tile(Tile_Grid, xx+1, yy+1, global.Tilemap_Wall, 1);
}



// left down
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy+down)) = 0{
Tile_Grid[# xx-1, yy+1] = 1;
scr_update_tile(Tile_Grid, xx-1, yy+1, global.Tilemap_Wall, 1);
}

// down
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx)),(CELL_SIZE*yy+down)) = 0{
Tile_Grid[# xx, yy+1] = 1;

scr_update_tile(Tile_Grid, xx, yy+1, global.Tilemap_Wall, 1);
}

// left
if tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx-a)),(CELL_SIZE*yy)) = 0{
Tile_Grid[# xx-1, yy] = 1;
scr_update_tile(Tile_Grid, xx-1, yy, global.Tilemap_Wall, 1);
}

