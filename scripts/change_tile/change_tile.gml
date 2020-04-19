///@arg x
///@arg y
///@arg new_tile


var xx = argument0;
var yy = argument1;
var new_tile = argument2;

xx = xx div 32;
yy = yy div 32;

with o_grid{
	grid[# xx, yy] = new_tile;	
}