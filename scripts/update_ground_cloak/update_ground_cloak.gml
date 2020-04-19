///@description update_ground_cloak(x,y,grid_object);

///@arg x
///@arg y 
///@arg grid_object
if instance_exists(argument2){
var Tile_Grid = argument2.Tile_Grid;
var xx = argument0 div 32;
var yy = argument1 div 32;
xx = clamp(xx, 0, ds_grid_width(Tile_Grid)-1);
yy = clamp(yy, 0, ds_grid_height(Tile_Grid)-1);
Tile_Grid[# xx, yy] = 1;
scr_update_tile(Tile_Grid, xx, yy, global.Tilemap_Wall, 1);
}
