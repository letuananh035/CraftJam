/// @description Insert description here
// You can write your code in this editor
if room = r_main_menu{
	
	if keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down){
		selected++;
		hovered = false;
		if selected >= ds_list_size(page){
			selected = 0;	
		}
		audio_play_sound(snd_button_hover,0,false);
	}
	
	if keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up){
		selected--;
		hovered = false;
		if selected < 0{
			selected = ds_list_size(page)-1;	
		}
		audio_play_sound(snd_button_hover,0,false);
	}
	var _originx = view_w/2,
		_originy = view_h/2;


	draw_sprite_ext(s_textlogo, 0, _originx,_originy/2,1.25+.25*sin(current_time*.001),1,1,c_white,1);
	
	for(var i = 0; i < ds_list_size(page); i++){
		
		scribble_draw_set_box_align(fa_center,fa_middle);
		
		var _element = page[|i],
		_yy = i*20,
		_string = _element[|0],
		_bbox = scribble_get_bbox(_string, _originx,_originy+_yy);
		
		if point_in_rectangle(return_gui_x(mouse_x),return_gui_y(mouse_y), _bbox[0], _bbox[1], _bbox[2], _bbox[3]){
			if hovered = false{
				audio_play_sound(snd_button_hover,0,false);
			}
			selected = i;
			hovered = true;
		}else if hovered = true && selected = i{
			hovered = false;
			selected = -1;
		}
		
		if selected = i{
			scribble_draw_set_transform(2,2,0)
			_string = "[wave]"+_string;
			
			if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space){
				script_execute(_element[|1]);
				audio_play_sound(snd_button_click,0,false);
			}
		}
		
		scribble_draw(_originx,_originy+_yy,_string);
		
		scribble_draw_reset();
	}
	
	
	
}
