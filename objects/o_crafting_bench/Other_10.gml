/// @description we are hitting the table





if room = r_boss_battle_second_phase{
	
	global.beat_count = 9999;	

}
var can_hit = false;
var audio_output = a_miss;

for (var i = 0; i < ore_type.size_; i++){
	
	
	
	if cost[i] > 0 {
		if ore[ i , ORE_COUNT] > 0 {
		audio_output = a_craft;
		if ore[i] >= 5 and cost[i] >= 5 and hp >= 5 and room != r_tutorial and beat_combo() or 
		room = r_boss_battle_second_phase
		{
		global.star_percent = 1;
		audio_output = a_impact;
		cost[i] -= 5;
		ore[ i , ORE_COUNT] -= 5;
		hp -= 5;
		ore[i , ORE_X_OFFSET]	= 14;
		ore[i , ORE_FLASH_COLOR] = C_GUM;	
		
		
		if ore[ i , ORE_COUNT] <= 0 ore[ i , ORE_COUNT] = 0;
		}else{
		cost[i]--;
		ore[ i , ORE_COUNT]--;
		hp -= 1;
		ore[i , ORE_X_OFFSET]	= 7;
		ore[i , ORE_FLASH_COLOR] = C_YELLOW;
		}
		can_hit = true;
		ore[i , ORE_SCALE_TIMER]  = 0;
		ore[i , ORE_FLASH_TIMER] = SEC*.5;

		
		}else{
		#region NOT ENOUGH RESOURCES
		instance_destroy(o_miss_text);
		create_text(o_player.xx,o_player.yy + i * 15, SEC*2,"NOT ENOUGH "+ore[ i , ORE_TITLE],C_GUM,0);
		ore[i , ORE_SCALE_TIMER]  = 0;
		ore[i , ORE_FLASH_TIMER] = SEC*.5;
		ore[i , ORE_X_OFFSET]	= 7;
		ore[i , ORE_FLASH_COLOR] = C_GUM;
		#endregion
		}
	}
}
audio_play(audio_output,0,0,0);

if can_hit = false{
	exit;	
}



hit_timer = 0;


if hp <= 0 {
	change_tile(x,y,FLOOR);
	audio_play(a_whack,0,0,0);
}