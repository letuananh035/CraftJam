/// @param x
/// @param y
/// @param sprite
/// @param speed_
var xx = argument0;
var yy = argument1;
var sprite = argument2;
var speed_ = argument3;


var s = create(xx,yy,o_effect);

s.sprite_index = sprite;
s.image_speed  = speed_;

return s;