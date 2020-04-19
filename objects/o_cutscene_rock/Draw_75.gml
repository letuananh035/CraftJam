/// @description 


if instance_exists(o_rock){
	if o_rock.hp = o_rock.hp_max{
	triangle_offset = lerp(triangle_offset,0,.1);	
	}else{
	triangle_offset = lerp(triangle_offset,320,.2);	
	}
}

//draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2-1,1,1,0,c_white,1);
//draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2+1,1,1,180,c_white,1);
draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2,1,1,0,c_black,1);
draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2,1,1,180,c_black,1);
var _demo_string  = "HIT THE [s_rock_scribble]";
scribble_draw(W/2+triangle_offset+50, H -50, _demo_string);
