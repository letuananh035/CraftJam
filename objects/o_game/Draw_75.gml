/// @description 

if global.hide_ui exit;
var xx_margin = 20;

draw_set_halign(fa_left);
draw_set_halign(fa_center);
for (var i = 0; i < 3; i++){
	var alpha = 1;
	switch i {
		case ore_type.iron_: if room = r_tutorial { var spr = s_iron_ore_1 } else {spr = s_ore_iron  };
		break;
		case ore_type.steel_:  spr = s_steel_ore_1; 
			if ore[i, ORE_COUNT] = 0 {
				alpha = 0;
			}
		break;
		case ore_type.diamond_: spr = s_rad_ore_1;
			
			if ore[i, ORE_COUNT] = 0 {
				alpha = 0;
			}
		break;
	}
	draw_set_alpha(alpha);
	if ore[i, ORE_X_OFFSET] > 0{
		ore[i, ORE_X_OFFSET] = lerp(ore[i, ORE_X_OFFSET],0,.1)
	}
	var x_off = ore[i, ORE_X_OFFSET];
	draw_outline_ext(spr,0,10+x_off,20*(i+1)+90,ore[i, ORE_SCALE ],ore[i, ORE_SCALE ],0,c_white,alpha);
	draw_sprite_ext(spr,0,10+x_off,20*(i+1)+90, ore[i, ORE_SCALE ],ore[i, ORE_SCALE ],0,c_white,alpha);
	var xx = xx_margin+x_off;
	var yy = 20*(i+1)+93;
	#region //colors
	var interval = 8;
	if ore[i, ORE_FLASH_TIMER] !=  0 {
		ore[i, ORE_FLASH_TIMER]--;
	}
	if (ore[i, ORE_FLASH_TIMER] % interval) <= interval/2 and ore[i, ORE_FLASH_TIMER] > 0 {
		draw_set_color(ore[i , ORE_FLASH_COLOR]);
		draw_text(xx-1,yy,string(ore[i, ORE_COUNT ]));
		draw_text(xx+1,yy,string(ore[i, ORE_COUNT ]));
		draw_text(xx,yy-1,string(ore[i, ORE_COUNT ]));
		draw_text(xx,yy+1,string(ore[i, ORE_COUNT ]));
		draw_set_color(C_DARK);
		draw_text(xx,yy,string(ore[i, ORE_COUNT ]));
	}else{
		draw_set_color(C_DARK);
		draw_text(xx-1,yy,string(ore[i, ORE_COUNT ]));
		draw_text(xx+1,yy,string(ore[i, ORE_COUNT ]));
		draw_text(xx,yy-1,string(ore[i, ORE_COUNT ]));
		draw_text(xx,yy+1,string(ore[i, ORE_COUNT ]));
		draw_set_color(c_white);
		draw_text(xx,yy,string(ore[i, ORE_COUNT ]));
	}
		draw_set_color(c_white);
	#endregion
	
		if ore[i , ORE_SCALE_TIMER] <= ore_time{
			ore[i, ORE_SCALE ] = easings("easeoutelastic",0,1,ore_time,ore[i, ORE_SCALE_TIMER ]);
			ore[i , ORE_SCALE_TIMER]++;	
	}
}
draw_set_alpha(1);

if !instance_exists(o_player) exit;
if o_player.state = player.cutscene exit;
if beat_combo() exit;

with o_music{
		var col = c_white;
	switch global.beat_count{
		case 0: col = C_FUCHISIA; break;
		case 1: col = C_AQUA; break;
		case 2: col = C_RED; break;
		case 3: col = C_BLUE; break;
		case 4: col = C_AQUA; break;
		case 5: col = C_RED; break;
		
	}
		draw_set_color(col);
	draw_circle_px(return_gui_x(o_player.xx+16),return_gui_y(o_player.yy+16),o_music.beat_size*3,true)  ;
	draw_set_color(c_white);
}
//draw_circle_px(return_gui_x( o_player.xx+16),return_gui_y(o_player.yy+16),o_music.beat_size*3,true)  ;
	