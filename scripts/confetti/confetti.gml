///@arg x
///@arg y
///@arg amount
		 

var x_ = argument0;
var y_ = argument1;
var amount_ = argument2;

//s_confetti
part_type_orientation(global.pt_confetti , 0, 0, 0, 0, 0);

part_type_gravity(global.pt_confetti, 0.25, 270);
part_type_direction(global.pt_confetti , 0, 360, 0, 40);
part_type_speed(global.pt_confetti , 4, 17, -0.3, 0);
part_type_size(global.pt_confetti , 1, 1, 0, 0);
part_type_life(global.pt_confetti , SEC*.2, SEC*1.1);
part_system_depth(global.sys_confetti,-8002);

repeat(amount_){
if chance(.40){
	part_type_sprite(global.pt_confetti , s_twinkle, true, true, 0); 
	
}else{
	part_type_sprite(global.pt_confetti , s_butterfly_particle, true, true, 0); 
}
var col = choose(C_GUM, C_BLUE,make_color_rgb(255,50,197),  C_YELLOW,make_color_rgb(45 ,255,63))
part_type_color1(global.pt_confetti,col)
part_particles_create(global.sys_confetti, x_, y_, global.pt_confetti , 1);
}
/*
confetti_ = instance_create_layer(x_,y_,I,o_confetti_init);
confetti_.amount = amount_;