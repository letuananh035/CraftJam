/// @description CIRCLE CLOSE
/// @description add a surface the size of the room

if (surface_exists(surf)) {
	surface_set_target(surf);
	// Set the dark overlay
	draw_set_colour(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,room_width,room_height,0);
	
	// Set light circles
	gpu_set_blendmode(bm_subtract);
	draw_set_colour(c_white);
	// 1.4 becaues that's how long our alarm is
	radius = easings("easeoutexpo",300, -300,SEC*1.4,timer);
	timer++;
	// Blurry outside tingies
	var c = 12
	for(i=0;i<c;i++)
	{
		draw_set_alpha(1/i);
		draw_circle( return_gui_x(x+random_range(-.2,.2)),return_gui_x(y+random_range(-.2,.2)),radius*(1+(0.007*(i^1.25))),false);
	}
	// Reset
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

