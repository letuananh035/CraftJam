if !window_get_fullscreen(){
	with(obj_camera){
		zoom++;
	
		if(zoom>max_zoom) {zoom=1};
	
		window_set_size(ideal_width*zoom, ideal_height*zoom);
		display_set_gui_maximize(zoom,zoom);
		alarm[ 0] = 1;
	}
}