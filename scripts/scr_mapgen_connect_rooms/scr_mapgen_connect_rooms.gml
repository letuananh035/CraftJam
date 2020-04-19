var room_list = argument0;

// Relative Neighborhood Graph
for(var i=0; i<ds_list_size(room_list); i++) {
	var room_a = ds_list_find_value(room_list, i);
			
	for(var j=i+1;j<ds_list_size(room_list); j++) { // for each pair of rooms
		var skip = false;
		var room_b = ds_list_find_value(room_list, j);
				
		// get the distance between rooms
		var ab_dist = point_distance((room_a[? "x1"]+room_a[? "x2"])/2, (room_a[? "y1"]+room_a[? "y2"])/2, (room_b[? "x1"]+room_b[? "x2"])/2, (room_b[? "y1"]+room_b[? "y2"])/2);
				
		for(var k=0; k<ds_list_size(room_list); k++) {
			if(k == i || k == j) continue;
			var room_c = ds_list_find_value(room_list, k);
					
			// get other distances
			var ac_dist = point_distance((room_a[? "x1"]+room_a[? "x2"])/2, (room_a[? "y1"]+room_a[? "y2"])/2, (room_c[? "x1"]+room_c[? "x2"])/2, (room_c[? "y1"]+room_c[? "y2"])/2);
			var bc_dist = point_distance((room_b[? "x1"]+room_b[? "x2"])/2, (room_b[? "y1"]+room_b[? "y2"])/2, (room_c[? "x1"]+room_c[? "x2"])/2, (room_c[? "y1"]+room_c[? "y2"])/2);
				
			// if ab distance is greater than the other two distances, then skip it
			if(ac_dist < ab_dist and bc_dist < ab_dist) skip = true;
			if(skip) break;
		}
				
		if(!skip) {
			var list_a = ds_map_find_value(room_a, "links");
			if(is_undefined(ds_map_find_value(list_a, j))) {
				var new_link_a = ds_map_create();
				ds_map_add_map(list_a, j, new_link_a);
			}
					
			var list_b = ds_map_find_value(room_b, "links");
			if(is_undefined(ds_map_find_value(list_b, i))) {
				var new_link_b = ds_map_create();
				ds_map_add_map(list_b, i, new_link_b);
			}
		}
	}
}