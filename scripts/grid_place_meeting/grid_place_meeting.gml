///@desc grid_place_meeting(x,y)
///@para objects
///@para grid

var objects = argument0;
var grid = argument1;

var top_right = grid[# (objects.bbox_right-1) div CELL_SIZE, objects.bbox_top div CELL_SIZE] == VOID;
var top_left = grid[# objects.bbox_left div CELL_SIZE, objects.bbox_top div CELL_SIZE] == VOID;
var bottom_right = grid[# (objects.bbox_right-1) div CELL_SIZE, (objects.bbox_bottom-1) div CELL_SIZE] == VOID;
var bottom_left = grid[# objects.bbox_left div CELL_SIZE, (objects.bbox_bottom-1) div CELL_SIZE] == VOID;

//if we find a collision in any of them then they are all true
return top_right || top_left || bottom_right || bottom_left;
