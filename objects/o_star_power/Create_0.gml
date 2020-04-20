/// @description 

x = x div 32;
y = y div 32;


o_grid.grid[# x , y] = PICKUP;

x *= 32;
y *= 32;

x += 16;
y += 16;

timer = 0;