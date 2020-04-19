/// oggles between fullscreen and not fullscreen.
window_set_fullscreen(!window_get_fullscreen());
with(obj_camera){
	if window_get_fullscreen(){
			
		zoom_prev = zoom;
		zoom = display_get_height()/ideal_height;
		
	}else{
		zoom = zoom_prev;
	}
	
	display_set_gui_maximize(zoom,zoom);
}