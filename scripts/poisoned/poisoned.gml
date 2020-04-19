

if poison >0 { //poison stacks
		for (var i = 0; i< poison; i++){
		poison_timer_interval[i]--;	
	
		if poison_timer_interval[i] <= 0{
			
		
		var s = create_hitbox(s_red_quill,x,y,0,2,[o_enemy_parent],poison_damage,0,5);
		s.made_from_poison = true;
		s.made_from_player = true;
		poison_timer_interval[i] = global.poison_interval;
		}	
		//damage duration
		poison_timer[i]++;
		if poison_timer[i] >= poison_duration{
		poison--;	
		}
	}	
}