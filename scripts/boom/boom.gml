if room = r_ran_black_and_white exit;



var xx = argument0;
var yy = argument1;

var upright = instance_create_layer(xx,yy,"Effects",o_explosion_bomb_rock);
upright.dire = 40;
var downright = instance_create_layer(xx,yy,"Effects",o_explosion_bomb_rock);
downright.dire = -40;
var upleft = instance_create_layer(xx,yy,"Effects",o_explosion_bomb_rock);
upleft.dire = 160;
var downleft = instance_create_layer(xx,yy,"Effects",o_explosion_bomb_rock);
downleft.dire = 220;

var explosive = instance_create_layer(xx,yy,"Effects",o_explosion_ring);
explosive.made_from_bomb = true;