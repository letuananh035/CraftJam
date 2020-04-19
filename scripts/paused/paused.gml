if !instance_exists(o_level_up) {	
	//does not pause when shop is present
	if o_input.pause_pressed and !instance_exists(o_shop_parent) and !instance_exists(o_clickable_ui_parent) and !instance_exists(o_keybinding) and !instance_exists(o_no_hud) {
		if paused_ = false
			paused_ = false;
			if sprite_exists(paused_sprite_)
			{
				sprite_delete(paused_sprite_);	
			}
			instance_activate_all();
			display_set_gui_size(global.gui_default_width,global.gui_default_height);
			audio_resume_all();
			audio_play_sound(a_stapler,1,false);

			}else{
				paused_ = true;

				//everything on the game window is on the application surface		

				paused_sprite_ = sprite_create_from_surface(application_surface,0,0, view_wport[0], view_hport[0], true, false, 0,0 );
				//we don't want to deactivate the game object
				instance_deactivate_all(true);
				display_set_gui_size(640,360);	
				//reactivate items
			
				instance_activate_object(o_input);
				instance_activate_object(o_audio);
				audio_pause_all();
		}
	}

