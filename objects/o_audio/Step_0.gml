// Update Listener Position & Orientation


if instance_exists(obj_camera)
{
	// Set Listener Position to Center of Camera
	xx = obj_camera.x;
	yy = obj_camera.y;
	audio_listener_orientation(0,1,0,0,0,1);
	audio_listener_position(xx,yy,0);
	// Legacy Emitter Positions
	//audio_emitter_position(sfx_emitter,xx,yy,0);
	//audio_emitter_position(ran_emitter,xx,yy,0);
}
audio_falloff_set_model(audio_falloff_inverse_distance_clamped);
for(i=0;i<ds_list_size(emitter_list);i++)
{
	if audio_emitter_exists(ds_list_find_value(emitter_list,i))
	{
		// Count down all emitter timers by one
		ds_list_set(emitter_list_time,i,ds_list_find_value(emitter_list_time,i)-1);
		
		// If time ran out
		if ds_list_find_value(emitter_list_time,i) <= 0
		{
			// Free emitter and remove from lists
			audio_emitter_free(ds_list_find_value(emitter_list,i));
			ds_list_delete(emitter_list,i);
			ds_list_delete(emitter_list_time,i);
		}
	}
}

// Change /Play Music
//if music_current != noone
//{
//	if music_changeto != noone
//	{
//		if music_current != music_changeto
//		{
//			audio_stop_sound(music_current);
//			music_current = audio_play_sound(music_changeto,1,music_loops);
//			music_changeto = noone;
//		}
//	}
//}
//else
//{
//	if music_changeto != noone
//	{
//		music_current = audio_play_sound(music_changeto,1,music_loops);
//		music_changeto = noone;
//	}
//}



