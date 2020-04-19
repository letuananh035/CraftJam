/// @param x
/// @param y
/// @param TIME
/// @param STRING
/// @param COLOR
/// @param CREATOR_TO_FOLLOW
var xx = argument0;
var yy = argument1;
var time = argument2;
var str = argument3;
var color = argument4;
var creator = argument5;
instance_destroy(o_miss_text);
var s = create(xx,yy,o_miss_text);
s.alarm[0] = time;
s.text = str;
s.color = color;
if creator != 0{
s.creator = creator;
}
return s;