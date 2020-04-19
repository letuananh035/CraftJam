///@arg x
///@arg y
///@arg delay_grow_timer
var s = instance_position(argument0,argument1,o_spider_web);
var web = noone;
if instance_exists(o_spider_web) and s != noone{
	s.alarm[0] = SEC*15;
	
}else{
	web = instance_create_layer(argument0,argument1,"cut_grass_layer",o_spider_web);
	web.delay_grow_timer = argument2;

}

return web;