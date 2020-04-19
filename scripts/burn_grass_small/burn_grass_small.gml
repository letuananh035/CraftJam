///@arg x
///@arg y
if !instance_exists(o_this_is_a_dungeon) exit;
if !instance_exists(o_grid_parent) exit;
if room = r_ran_black_and_white exit;

var xx = argument0 div CELL_SIZE;
var yy = argument1 div CELL_SIZE;
var Tile_Grid = o_grid_parent.grid_burn;
xx = clamp(xx, 0, ds_grid_width(Tile_Grid));
yy = clamp(yy, 0, ds_grid_height(Tile_Grid));

if Tile_Grid[# xx,yy] = 0 and tilemap_get_at_pixel(o_grid_parent.underwall,(CELL_SIZE*(xx)),(CELL_SIZE*yy)) = 0{
		create((CELL_SIZE*(xx)),(CELL_SIZE*yy),o_fire_running);
		Tile_Grid[# xx,yy] = 1;
		scr_update_tile(Tile_Grid, xx, yy, global.Tilemap_Wall, 1);
}