/// @description 
switch o_player.sprite_index{
	case s_player_idle: sprite_index = s_ui_player_idle_highlights; break;
	case s_player_walk: sprite_index = s_ui_player_move_highlights;break;
	case s_player_walk_happy: sprite_index = s_ui_player_move_happy_highlights; break;
	case s_player_attack: sprite_index = s_ui_player_attack_highlights; break;
	case s_player_weapon_attack_happy:  sprite_index = s_ui_player_move_happy_highlights;break;
}
