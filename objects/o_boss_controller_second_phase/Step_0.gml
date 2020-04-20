/// @description 


if global.boss_hp > 3 {
	lazer[0] = -3000;	
}

global.boss_complete = 1;
global.star_power_attack = 99;


//show_debug_message(string(xx)+"  "+string(yy));
if instance_exists(o_fade_out) exit;
if global.boss_hp <= 0 and !instance_exists(o_cutscene_parent){
	create(0,0,o_cutscene_alien_boss_2_rip);
	instance_destroy()
	exit;
}

if instance_exists(o_cutscene_parent){

global.current_score = 1;
instance_destroy(o_fail_bullets);
exit;	
}


if global.hp <= 0{
	global.darkness_alpha = 1;
	global.hp = 5;
	global.killed_by_boss++;
	global.skip_boss_cutscene = true;
	audio_stop_sound(a_boss_battle);
	room_restart();	
	create(0,0,o_fade_out);
}
if instance_number(o_boss_controller) > 1 {
	show_debug_message("ERROR MORE THAN 1 BOSS CONTROLLER DETECTED");
}
event_user(state);

bot_tile = 10;
top_tile = 7;
left_tile = 7;
right_tile = 12;
create_rock_timer--;


var xx = left_tile+3;
var yy = top_tile+1;



var s = 0;

if spawn_top{
	yy = 7;	
	s = 1;
	}else{
	yy = 10;	
}


if spawn_left = false{
	var xx = 9;
}else{
	var xx = 10;
}


var item = o_rock;





if global.hp > 3 {
	if ore[0 , ORE_COUNT] >= 5{
	item = o_crafting_bench;
}
	
}else{
	if ore[0 , ORE_COUNT] >= 3{
		item = o_crafting_bench;
	}	
}





	switch (s){
		
	case 0: //top lef
					
				if !instance_exists(item) and o_player.x div 32 != xx and o_player.y div 32 != yy and  o_grid.grid[# xx, yy] != INTERACT{
					o_grid.grid[# xx, yy] = INTERACT;
					create((xx)*32,(yy)*32,item);
					last_rock_x = xx;
					last_rock_y = yy;
					create_rock_timer = SEC*3;
					
					if spawn_top{
						spawn_top = false;
					}else{
						spawn_top = true;
					}
					
					
					if spawn_left{
						spawn_left = false;
					}else{
						spawn_left = true;
					}
				}
	break;
	
	case 1:
	
				
			if !instance_exists(item) and o_player.x div 32 != xx and o_player.y div 32 != yy and  o_grid.grid[# xx, yy] != INTERACT{
				o_grid.grid[# xx, yy] = INTERACT;
				create((xx)*32,(yy)*32,item);
				last_rock_x = xx;
				last_rock_y = yy;
				create_rock_timer = SEC*3;
				
				if spawn_left{
					spawn_left = false;
				}else{
					spawn_left = true;
				}				
				
				if spawn_top{
					spawn_top = false;
				}else{
					spawn_top = true;
				}
				
			}
	break;

}	

stronger_attacks = false;

#region BUllets

	bullet_firing_speed--;	
	
	
if bullet_firing_speed < 0 {
	var time = SEC;
	switch global.boss_hp{
		
		case 5: time = SEC*.9;
		case 4: time = SEC*.8;
		case 3: time = SEC*.6;
		case 2: time = SEC*.5;
		case 1: time = SEC*.4;
		
	}
	bullet_firing_speed = SEC*.4;
	
	
		var xx = left_tile - 3 - irandom(2);
		var yy = top_tile + irandom(3);
		if !instance_position(xx*32,yy*32,o_fail_bullets){
			var s = create(xx*32,yy*32,o_fail_bullets);	
				s.direction_ = 0;
			}
}

#endregion