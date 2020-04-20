/// @description Insert description here
// You can write your code in this editor
with(o_tentacle){
	if draw = true{
	vertex_submit(v_buff,pr_trianglestrip,-1);

	var _seg = segments[0];
	var _rot = 360-radtodeg(_seg[3]);
		draw_sprite_ext(spr_tentacle_eyeball,0,_seg[0]+_seg[2]*cos(_seg[3]),_seg[1]+_seg[2]*sin(_seg[3]),1,1,_rot,c_white,1);
	}
}