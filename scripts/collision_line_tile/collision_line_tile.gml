
/// @function		collision_line_point_tile(x1, y1, x2, y2, tilemap_id)
/// @description	Checks along a line from point X1|Y1 to point X2|Y2 for a Collision with any tile 
///					of the Tilemap specified by the argument "tilemap_id".
///
///					Returns: Collision/No Collision = true/false.
///
/// @argument		{real}		x1				The X Coordinate of the Start of the Line.
/// @argument		{real}		y1				The Y Coordinate of the Start of the Line.
/// @argument		{real}		x2				The X Coordinate of the End   of the Line.
/// @argument		{real}		y2				The Y Coordinate of the End   of the Line.
/// @argument		{id}		tilemap_id		The Tilemap ID to check for the Collision Point.

var _x1		 = argument0;
var _y1		 = argument1;
var _x2		 = argument2;
var _y2		 = argument3;
var _tilemap = argument4;

var _dist = point_distance (_x1, _y1, _x2, _y2);
var _dir  = point_direction(_x1, _y1, _x2, _y2);

for (var i = 0; i <= _dist; ++i) 
{
	var _pos_x = _x1 + lengthdir_x(i, _dir);
	var _pos_y = _y1 + lengthdir_y(i, _dir);
	
	if (tilemap_get_at_pixel(_tilemap, _pos_x, _pos_y)) return true;
}

return false;
