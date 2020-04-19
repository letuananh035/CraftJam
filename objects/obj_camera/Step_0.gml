/// @description

///Toggle Fullscreen and Change Zoom
if keyboard_check_pressed(vk_f9) && !window_get_fullscreen(){
	scr_window_size();
}
if keyboard_check_pressed(vk_f10){
	scr_fullscreen();
}
