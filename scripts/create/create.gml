///@arg x
///@arg y
///@arg object

var _x = argument0;
var _y = argument1;
var _obj = argument2;

var instance = instance_create_layer(_x,_y,"Instances",_obj);

return instance;