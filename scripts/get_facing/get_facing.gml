/// @description get_facing(direction)
/// @function get_facing
/// @param direction
var dir = argument0;

var facing = round(dir/90) //gets a direction then divides by 90 then gives us a value by 1-4, which we can use with our macros

if (facing == 4) facing = RIGHT;
return facing;
