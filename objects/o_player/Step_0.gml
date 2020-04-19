/// @description 

event_inherited();

switch sprite_index{
	case s_player_idle: weapon_sprite_index = s_weapon_idle;break;
	case s_player_walk: weapon_sprite_index = s_weapon_move;break;
	case s_player_walk_happy: weapon_sprite_index = s_weapon_move_happy;break;
	case s_player_attack: weapon_sprite_index = s_weapon_attack;break;
	case s_player_attack_happy: weapon_sprite_index = s_player_weapon_attack_happy;
}

#region damage checks
with (o_fail_bullets){
	var x_ = x div 32;
	var y_ = y div 32;
	
	var px = other.x div 32;
	var py = other.y div 32;
		
if no_damage_timer < 0 and  x_ = px and y_ = py{
	
		
		switch room{
			case r_boss_battle:  deal_damage();
			break;
			
			case r_boss_battle_second_phase: deal_damage();
			break;
			default:
				if instance_exists(o_level_save_controller){
					o_player.x = o_level_save_controller.x_save_point;
					o_player.y = o_level_save_controller.y_save_point;
						audio_play(a_gasp,0,0,0);
				}
			break;
		}
		
		instance_destroy();
	}
}


#endregion
if animation_end(){
	sprite_index = s_player_idle;
	image_speed = 1;
}
x = x div CELL_SIZE;
y = y div  CELL_SIZE;

x *= CELL_SIZE;
y *= CELL_SIZE;

x = clamp(x, 0, o_grid.width * CELL_SIZE);
y = clamp(y, 0, o_grid.height * CELL_SIZE);

image_blend = c_white;

xx = lerp(xx, x div CELL_SIZE * CELL_SIZE , .1);
yy = lerp(yy, y div CELL_SIZE * CELL_SIZE,  .1);

left_pressed	= keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left);
right_pressed	= keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right);
up_pressed		= keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
down_pressed	= keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);

left_check		= keyboard_check(ord("A")) or keyboard_check(vk_left);
right_check		= keyboard_check(ord("D")) or keyboard_check(vk_right);
up_check		= keyboard_check(ord("W")) or keyboard_check(vk_up);
down_check		= keyboard_check(ord("S")) or keyboard_check(vk_down);


press = false;
press_check = false

if left_check || right_check || up_check || down_check{
	press_check = true;	
}

if left_pressed{
	press = true;
	check_next_position(x, y ,-CELL_SIZE,0);
}

if right_pressed{
	press = true;
	check_next_position(x, y ,CELL_SIZE,0);
}

if up_pressed{
	press = true;
	check_next_position(x, y ,0,-CELL_SIZE);
}

if down_pressed{
	press = true;
	check_next_position(x, y ,0,CELL_SIZE);
}