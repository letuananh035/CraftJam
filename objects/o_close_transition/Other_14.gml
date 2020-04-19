/// @description double_circle transitions

persistent = true;

if second_target = noone{
instance_destroy();
exit;
}


if (surface_exists(surf)) {
	surface_set_target(surf);
	//Set the dark overlay
	draw_set_colour(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,room_width,room_height,0);
	
	//Set light circles
	gpu_set_blendmode(bm_subtract);
	draw_set_colour(c_white);
	//Set light circles
	gpu_set_blendmode(bm_subtract);
	draw_set_colour(c_white);
	//1.4 becaues that's how long our alarm is
	if alarm[2] > -1{
	radius = easings("easeoutexpo",300, -300,time,timer);
	timer++;
	draw_circle(return_gui_x(x + random_range(-.2,.2)),return_gui_y( y+ random_range(-.2,.2)),radius,false);
	}
	if alarm[3] > -1{
	radius = easings("easeinquad",0, -350,time2,timer2);
	timer2++;
	draw_circle(return_gui_x( target.x + random_range(-.2,.2)),return_gui_y( target.y+ random_range(-.2,.2)),radius,false);
	}
	//Reset all of the set draws, or else everything else gets the overridden blend modes
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}else{
	surf = surface_create(room_width,room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0,);
	draw_set_color(c_white);
	surface_reset_target();
}