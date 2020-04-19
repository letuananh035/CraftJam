///@arg x
///@arg y
///@arg amount


var _x = argument0;
var _y = argument1;
var amount = argument2;

amount = random_range(25,35)
repeat(amount){
var a = instance_create_layer(_x+16,_y+16,"Instances",o_box_pieces);

a.sprite_index = s_wall_debri;
a.z_speed_ = random_range(-1,-3);
	with a{
		var spd = random_range(3,8);		
		add_movement_maxspeed(random(360),spd,spd);
	}
}
return a;