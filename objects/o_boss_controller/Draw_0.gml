/// @description 


var xx = MX div 32;
var yy = MY div 32;
//draw attack
#region lazer attack
if state = boss_state.lazer{
	if lazer_warning > 0 {
	var index = 1;	
	}else{
		index = 0;	
	}
	for (var s = 0; s < 3; s++){
		var yy = lazer[s];
		for (var i = 0; i < 12; i++){
			if o_player.y div 32 = yy and index = 0{
				deal_damage();
				
			}
			var xx = view_x-32;
			draw_sprite(s_boss_lazer,index, xx+32+i*32 , yy*CELL_SIZE) ;
		}
	}
}
#endregion