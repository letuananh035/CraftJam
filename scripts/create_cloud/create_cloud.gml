if room = r_ran_black_and_white exit;

var h = sprite_height;
//var w = sprite_width;

var ran_x = random_range(-4,4);
var ran_y = random_range(-2,-h/3);
//part_system_depth(global.sys_walk_cloud,depth+5);
//part_system_depth(global.sys_walk_cloud_outline,depth+10);

part_type_life(global.pt_walk_cloud,SEC*.4,SEC*.4);
part_type_life(global.pt_walk_cloud_outline,SEC*.4,SEC*.4);


part_particles_create(global.sys_walk_cloud,x+ran_x,y+z_+ran_y, global.pt_walk_cloud,1);
part_particles_create(global.sys_walk_cloud_outline,x+ran_x,y+z_+ran_y, global.pt_walk_cloud_outline,1);