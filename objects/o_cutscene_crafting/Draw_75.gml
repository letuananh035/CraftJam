/// @description 



if instance_exists(o_crafting_bench){
	if o_crafting_bench.hp = o_crafting_bench.hp_max{
	triangle_offset = lerp(triangle_offset,0,.1);	
	}else{
	triangle_offset = lerp(triangle_offset,320,.2);	
	}
}

//draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2-1,1,1,0,c_white,1);
//draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2+1,1,1,180,c_white,1);
draw_sprite_ext(s_triange_border,0,W/2+triangle_offset,H/2,1,1,0,c_black,1);
draw_sprite_ext(s_triange_border,0,W/2-triangle_offset,H/2,1,1,180,c_black,1);
var str  = "CRAFT THE  [s_ore_scribble]";
scribble_draw(W/10-triangle_offset, H/2 -70, str);
var str = "[rainbow][wave]HERE[] [s_bench_scribble]";
scribble_draw(W/2+triangle_offset+60, H -35, str);