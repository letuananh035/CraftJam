

if room = r_sync_delay{
	//syncing
	if keyboard_check_pressed(vk_anykey){
		if !keyboard_check_pressed(vk_f5) || keyboard_check_pressed(vk_f6){
			ds_list_add(average_delay,_division);
			if ds_list_size(average_delay) > 20{
				ds_list_delete(average_delay,0);
			}
		}
	}
	
	var _total = 0;
	for (var i = 0; i < ds_list_size(average_delay); i++){
		_total += average_delay[|i];
	}
	key_sync = (_total/ds_list_size(average_delay))*beat_division_list[current_song]*bpm_list[current_song]/60/60
	draw_text(view_w/2,view_h/2,"delay: "+string(key_sync)+"s");
	
	if abs(_division-.75) < .45{
	draw_set_color(c_lime);
	}else{
	draw_set_color(C_GUM);
	}
		draw_text(30,30,"DIVISION: "+string(abs(_division-.5) ));

draw_set_color(c_white);
}
