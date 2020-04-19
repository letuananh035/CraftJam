/// @description SAVE GAME


/*
with o_save_manager{
		var map = ds_map_create();
		ds_list_add(root_list, map);
		//last entry gets 
		ds_list_mark_as_map(root_list,ds_list_size(root_list)-1);
		
		var obj = object_get_name(object_index);
		ds_map_add(map, "obj", obj);
		ds_map_add(map, "y", y);
		ds_map_add(map, "x", x);
		ds_map_add(map, "angle_intensity", angle_intensity);
		ds_map_add(map, "sprite_index", sprite_index);
		ds_map_add(map, "image_blend", image_blend);		
}
*/

	var root_list = ds_list_create();

	var map = ds_map_create();
		ds_list_add(root_list, map);
		//last entry gets 
		ds_list_mark_as_map(root_list,ds_list_size(root_list)-1);
		
		
		ds_map_add(map, "pr_level", pr_level);
		ds_map_add(map, "pr_xp", pr_xp);
		ds_map_add(map, "pr_xp_max", pr_xp_max);
		
		for (var i = 0; i <= unlock_total_reward; i++){
			ds_map_add(map, "unlock_"+string(i), unlock[i]);
	
		}
		
//wrap the root LIST up in a MAP!
var wrapper = ds_map_create();

ds_map_add_list(wrapper, "ROOT", root_list);

var str = json_encode(wrapper);
save_string_to_file("save.sav", str);

//nuke the data
ds_map_destroy(wrapper);


show_debug_message("Game Saved");