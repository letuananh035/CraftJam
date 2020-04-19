/// @description 


if global.boss_hp <= 0 and !instance_exists(o_cutscene_parent){
	create(0,0,o_cutscene_alien_boss_rip);
	global.boss_complete = true;
	instance_destroy()
	exit;
}

if instance_exists(o_cutscene_parent){

global.current_score = 1;
instance_destroy(o_fail_bullets);
exit;	
}

if global.hp <= 0{
	global.killed_by_boss++;
	global.skip_boss_cutscene = true;
	room_restart();	
}
	show_debug_message(instance_number(o_boss_controller));

if instance_number(o_boss_controller) > 1 {
	show_debug_message("ERROR MORE THAN 1 BOSS CONTROLLER DETECTED");
}

event_user(state);

bot_tile = 8;
top_tile = 5;
left_tile = 7;
right_tile = 12;
create_rock_timer--;

var xx = left_tile+2;
var yy = top_tile+1;


/*
if !instance_exists(o_crafting_bench) and create_rock_timer <= 0 and ore[0 , ORE_COUNT] > 4
		and crafting_bench_flag = false and  o_player.x div 32 != xx and o_player.y div 32 != yy 
		and  o_grid.grid[# xx, yy] != INTERACT {

		disable_rock_creatiron = true;
		crafting_bench_flag = true;
		
		o_grid.grid[# xx, yy] = INTERACT;
		var s = create((xx)*32,(yy)*32,o_crafting_bench);
		s.hp = ore[0 , ORE_COUNT];
		s.hp_max = ore[0 , ORE_COUNT];
		last_rock_x = xx;
		last_rock_y = yy;
		
		
		#region
		
		
		
		#endregion
		create_rock_timer = SEC*3;
}

*/

var item = o_rock;
if ore[0 , ORE_COUNT] >= 5{
	item = o_crafting_bench;
}

var xx = left_tile+3;
var yy = top_tile+1;

var s = irandom(3);

	switch (s){
		
	case 0: //top left
	
					var xx = left_tile+1;
					var yy = top_tile;
				if !instance_exists(item) and o_player.x div 32 != xx and o_player.y div 32 != yy and  o_grid.grid[# xx, yy] != INTERACT{
					o_grid.grid[# xx, yy] = INTERACT;
					create((xx)*32,(yy)*32,item);
					last_rock_x = xx;
					last_rock_y = yy;
					create_rock_timer = SEC*3;
				}
	break;
	
	case 1:
				xx = right_tile-1;
				yy = top_tile;
				
			if !instance_exists(item) and o_player.x div 32 != xx and o_player.y div 32 != yy and  o_grid.grid[# xx, yy] != INTERACT{
				o_grid.grid[# xx, yy] = INTERACT;
				create((xx)*32,(yy)*32,item);
				last_rock_x = xx;
				last_rock_y = yy;
				create_rock_timer = SEC*3;
			}
	break;
	
	case 2:			
				xx = right_tile-1;
				yy = bot_tile-1;
			if !instance_exists(item) and o_player.x div 32 != xx and o_player.y div 32 != yy and  o_grid.grid[# xx, yy] != INTERACT{
				o_grid.grid[# xx, yy] = INTERACT;
				create((xx)*32,(yy)*32,item);
				last_rock_x = xx;
				last_rock_y = yy;
				create_rock_timer = SEC*3;
			}
	break;
	
	case 3:
				xx = left_tile+1;
				yy = bot_tile-1;
				
			if !instance_exists(item) and o_player.x div 32 != xx and o_player.y div 32 != yy and  o_grid.grid[# xx, yy] != INTERACT{
				o_grid.grid[# xx, yy] = INTERACT;
				create((xx)*32,(yy)*32,item);
				last_rock_x = xx;
				last_rock_y = yy;
				create_rock_timer = SEC*3;
			}	
	
	break;
}	

stronger_attacks = false;

