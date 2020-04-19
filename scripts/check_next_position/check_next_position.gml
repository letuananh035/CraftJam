///@arg x
///@arg y
///@arg x_move
///@arg y_move
if o_player.state = player.cutscene exit;
#region press once per beat
if instance_exists(o_music){
	if can_move = false exit;
}
#endregion
var xx = align(x);
var yy = align(y);
var x_move = argument2;
var y_move = argument3;
var grid_x = argument0 div CELL_SIZE;
var grid_y = argument1 div CELL_SIZE;
var grid_x_target = grid_x + sign(x_move);
var grid_y_target = grid_y + sign(y_move);
var collision = o_grid.grid[# grid_x_target, grid_y_target];
change_star(-global.star_lose_amount);
with o_music{
	if on_beat {
		global.beat_count += 1;
		if beat_combo(){
				
			if  global.beat_count = global.beat_thresh + 1{
				audio_play(a_disco_start,0,0,0);
			}
			turn_on_disco_lights();
		}
		}else{ 
		global.current_score -= .02;	
			if beat_combo(){
				audio_play(a_disco_start,0,0,0);	
				turn_off_disco_lights();
			}
		global.beat_count = 0;
		global.combo = 0;
		
		if room != r_tutorial {
			create_text(o_player.x,o_player.y-5,SEC*3,"PRESS ON THE BEAT",C_GUM,noone);
			exit;	
		}
	}
}


if sign(x_move) = 1{
	image_xscale = -1;		
	}else if sign(x_move) = -1{
	image_xscale = 1;	
}

switch collision{
	case INTERACT: // there is a rock or something to touch and stuff

				global.combo++;
				if global.combo > global.combo_max{
				global.combo_max =	global.combo;
				}
				#region 
				var interact = instance_position(o_player.x + x_move, o_player.y + y_move, o_interactable_parent);
				//audio put interact here
				with interact{
					event_user(0);	
				}
			image_index = 0;
			
			if beat_combo() {
			image_speed = 2;
			sprite_index = s_player_attack_happy;
			}else{
			image_speed = 3;	
			sprite_index = s_player_attack;
			}

			view_x -= x_move*.1;			
			view_y -= y_move*.1;	
				#endregion
	break;
	
	case PICKUP:
			o_grid.grid[# grid_x_target, grid_y_target] = FLOOR;
			player_move_tile(x_move,y_move);
			
			if global.star_percent = 1 and global.star_count < 3{
				global.star_count++;
				global.star_count = clamp(global.star_count,0,3);
			}
			change_star(global.star_gain_amount);
			
			var x_ = align(x);
			var y_ = align(y);
					
			audio_play(a_pickup,0,0,0);

			#region pickup interactable item
			with o_ore_pickup{
				if x_ = align(x) and y_ = align(y){ 
					create_animation_effect(s_twinkle,x,y,1,false);
						event_user(0);
						instance_destroy();
				}
			}
			#endregion

			with o_ore_pickup{
				if x_ = align(x) and y_ = align(y){ 
					create_animation_effect(s_twinkle,x,y,1,false);
						event_user(0);
						instance_destroy();
				}
			}
			break;	
	case FLOOR:  //move  normally
			player_move_tile(x_move,y_move);

	break;
	case WALL: //cannot traverse through wall;
			screenshake(1,SEC*.03);
	break;
}

if instance_exists(o_music){
	can_move = false;
}