// Get sprite data
sprite = spr_ground_random;
frames = sprite_get_number(sprite);
texture = sprite_get_texture(sprite, 0);

width = sprite_get_width(sprite);
height = sprite_get_height(sprite);

// Grass properties
grassCount = 300;

color = c_white;
alpha = 1;

// 3D properties
gpu_set_alphatestenable(true);

// Vertex format
vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();

format = vertex_format_end();

// Vertex buffer
vbuff = vertex_create_buffer();

vertex_begin(vbuff, format);

var _tmap = layer_tilemap_get_id("Collision");

repeat (grassCount) {
            // 1: Grass coordinates
	    var _x1 = irandom_range(0, room_width);
	    var _y1 = irandom_range(0, room_height);
	    var _x2 = _x1 + width;
	    var _y2 = _y1 + height;


	if tilemap_get_at_pixel(_tmap,_x1,_y1) != 0 && 
		tilemap_get_at_pixel(_tmap,_x2,_y1) != 0 && 
		tilemap_get_at_pixel(_tmap,_x1,_y2) != 0 && 
		tilemap_get_at_pixel(_tmap,_x2,_y2) != 0 {
			
			   var _depth = -_y2;
		
				// 2: Texture coordinates
		    var _frame = irandom(frames - 1);
		    var _uvs = sprite_get_uvs(sprite, _frame);

		    var _uv_x1 = _uvs[0];
		    var _uv_y1 = _uvs[1];
		    var _uv_x2 = _uvs[2];
		    var _uv_y2 = _uvs[3];
	
			// 3: Triangle 1
		    vertex_position_3d(vbuff, _x1, _y1, _depth);
		    vertex_texcoord(vbuff, _uv_x1, _uv_y1);
		    vertex_color(vbuff, color, alpha);

		    vertex_position_3d(vbuff, _x2, _y1, _depth);
		    vertex_texcoord(vbuff, _uv_x2, _uv_y1);
		    vertex_color(vbuff, color, alpha);

		    vertex_position_3d(vbuff, _x1, _y2, _depth);
		    vertex_texcoord(vbuff, _uv_x1, _uv_y2);
		    vertex_color(vbuff, color, alpha);
	
			// 4: Triangle 2
		    vertex_position_3d(vbuff, _x2, _y1, _depth);
		    vertex_texcoord(vbuff, _uv_x2, _uv_y1);
		    vertex_color(vbuff, color, alpha);

		    vertex_position_3d(vbuff, _x1, _y2, _depth);
		    vertex_texcoord(vbuff, _uv_x1, _uv_y2);
		    vertex_color(vbuff, color, alpha);

		    vertex_position_3d(vbuff, _x2, _y2, _depth);
		    vertex_texcoord(vbuff, _uv_x2, _uv_y2);
		    vertex_color(vbuff, color, alpha);
	}
}
vertex_end(vbuff);
vertex_freeze(vbuff);