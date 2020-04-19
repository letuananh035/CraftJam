
/// @function		collision_line_point_tile(x1, y1, x2, y2, tilemap_id)
/// @description	Finds the collision_line()'s Point of Collision.
///
///					Returns: 
///					- Collision Found:			Array containing X&Y Coordinates of the Point of Collision.
///					- Collision Not Found:		undefined.
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

var _collision		   = collision_line_tile(_x1, _y1, _x2, _y2, _tilemap);
var _collision_point_x = _x2;
var _collision_point_y = _y2;

if (_collision) 
{
    var _p0 = 0;
    var _p1 = 1;
	
    repeat (ceil(log2(point_distance(_x1, _y1, _x2, _y2))) + 1) 
	{
        var _np = _p0 + (_p1 - _p0) * 0.5;
        var _nx = _x1 + (_x2 - _x1) * _np;
        var _ny = _y1 + (_y2 - _y1) * _np;
        var _px = _x1 + (_x2 - _x1) * _p0;
        var _py = _y1 + (_y2 - _y1) * _p0;
		
        if (collision_line_tile(_px, _py, _nx, _ny, _tilemap)) 
		{
            _collision_point_x = _nx;
            _collision_point_y = _ny;
            _p1				   = _np;
        } 
		
		else _p0 = _np;
    }
	
	var _collision_point;
	_collision_point[0] = _collision_point_x;
	_collision_point[1] = _collision_point_y;
	return _collision_point;
}

return undefined;
