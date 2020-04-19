///@arg xx
///@arg yy
///@arg min_
///@arg max_

if room = r_ran_black_and_white exit;

var xx = argument0;
var yy = argument1;

var min_ = argument2;
var max_ = argument3;

global.dir_explosion_min = min_;
global.dir_explosion_max = max_;

var explode = instance_create_layer(xx,yy,"Effects",o_fire_explosion);
return explode;