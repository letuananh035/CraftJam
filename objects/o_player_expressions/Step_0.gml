/// @description 

if !instance_exists(o_player) exit;
switch o_player.sprite_index{
	case s_player_idle: if beat_combo(){
		sprite_index = s_ui_player_idle_happy; 
	}else{
			sprite_index = s_ui_player_idle; 
	}	break;
	
	case s_player_idle_happy: sprite_index = s_ui_player_idle; break;	
	case s_player_walk: sprite_index = s_ui_player_move;break;
	case s_player_walk_happy: 
	if o_player.image_index < 5 {
		sprite_index = s_ui_player_move_happy; 
	}else{
		sprite_index = s_ui_player_idle_happy; 
	}
		break;
	case s_player_attack: sprite_index = s_ui_player_attack; break;
	case s_player_weapon_attack_happy:  sprite_index = s_ui_player_move_happy;break;
	case s_player_attack_happy:
	if o_player.image_index < 4 {
		sprite_index = s_ui_player_move_happy; 
	}else{
		sprite_index = s_ui_player_idle_happy; 
	}
}
