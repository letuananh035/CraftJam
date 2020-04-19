var room_list = argument0;
var numrooms = floor(argument1);
var invisrooms = floor(argument2);

var count=0;
repeat(numrooms+invisrooms) {
	var this_room = ds_map_create();
	
	
	if(count < numrooms) {
		ds_map_add(this_room, "spacer", false)
		var width = irandom_range(5,12);
		var height = irandom_range(5,12);
	}
	else {
		ds_map_add(this_room, "spacer", true)
		var width = irandom_range(3,5);
		var height = irandom_range(3,5);
	}
	
	var x1 = round(-width/2) + irandom_range(-5,5)
	var y1 = round(-height/2) + irandom_range(-5,5)
	ds_map_add(this_room, "x1", x1)
	ds_map_add(this_room, "y1", y1)
	ds_map_add(this_room, "x2", x1+width)
	ds_map_add(this_room, "y2", y1+height)
	ds_map_add(this_room, "w", width)
	ds_map_add(this_room, "h", height)
	ds_map_add(this_room, "collision", false)
	ds_map_add(this_room, "bgcolor", c_ltgray)
	
	
	var links = ds_map_create();
	ds_map_add_map(this_room, "links", links);
	
	ds_list_add(room_list, this_room);
	ds_list_mark_as_map(room_list, ds_list_size(room_list)-1)
	count+=1;
}
