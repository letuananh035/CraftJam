/// @description 

//draw attack
#region lazer attack



var time = SEC*1.5;
if timer < time{
	
	lazeryscale = easings("easeoutelastic",0,1,time,timer);
}
var alpha = 1;
timer++;


if lazer_warning = true or lazer_fire = 1{
	var index = 1;
	
	if lazer_warning = 0 and lazer_fire = 1 {
		index = 0;	
		alpha = 1;
	}else{
	
		if timer mod 2 = 0{
			alpha = .8;	
		}
	
	}
	
//	for (var s = 0; s < 3; s++){
//		}

		var yy = lazer[0];
		for (var i = 0; i < 12; i++){
			if o_player.y div 32 = yy and index = 0 and lazer_fire{
				deal_damage();
			}
			var xx = view_x-32;
			draw_sprite_ext(s_boss_lazer,index, xx+32+i*32 , yy*CELL_SIZE+16,1,lazeryscale,0,c_white,alpha) ;
		}
	
}
#endregion