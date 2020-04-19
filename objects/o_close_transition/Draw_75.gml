/// @description


draw_set_color(c_black);
event_user(state);
draw_set_color(c_white);


if !surface_exists(surf){
	surf = surface_create(room_width,room_height);	
}else{
	if (view_current == 0) {
		draw_surface(surf,_L,_T);
	}
}