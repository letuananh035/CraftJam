/// @description init grid


x = x div CELL_SIZE;
y = y div CELL_SIZE;

x *= CELL_SIZE;
y *= CELL_SIZE;


var xx = x div 32;
var yy = y div 32;

with o_grid{
	grid[# xx ,yy] = INTERACT;	
}

x = xx * CELL_SIZE;
y = yy * CELL_SIZE;