
if file_exists("save.sav"){
	
	var _wrapper = load_json("save.sav");
	var _list = _wrapper[? "ROOT"];// SAME THING var _list = ds_map_find_value(_wrapper,"ROOT");
	
	for (var i = 0; i < ds_list_size(_list); i++){
		
		var _map  = _list[| i]; //ds_list_find_value(_list,i);
		pr_xp		= _map[? "pr_xp"];
		pr_xp_max	= _map[? "pr_xp_max"];
		pr_level	= _map[? "pr_level"];
		//unlock[i] = _map[? "unlock_"+string(i)];
	}
for (var i = 0; i <= pr_level; i++){
switch i{			
case U_ANG_GAME :
case U_RACE_1 :
case U_DAILY :
case U_UP_FRIEND_DISCOUNT :
case U_DAILY_SWORD :
case U_RACE_2 :
case U_UP_SIREN :
case U_BOOMERANG_DAILY :
case U_BADGE_GHOST :
case U_UP_CELLO:
case U_BADGE_BOSS_BRAWL :
case U_BADGE_MYSTERY:
case U_RACE_3:
case U_WEP_DIAGONALS:
case U_UP_ROOT:
case U_RACE_4: unlock[i] = true;

break;
}

if unlock[i] = true{	
	//show_debug_message("UNLOCKED "+string(i));
}

				
		}
		ds_map_destroy(_wrapper);
		show_debug_message("GAME LOADED");
}else{
	
	show_debug_message("ERROR:NO SAVE FILE FOUND");
}