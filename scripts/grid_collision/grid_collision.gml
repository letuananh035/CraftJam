//clamps the player inside
if instance_exists(o_mystery_dungeon_generator){

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

//go right
if _x_speed > 0{
if grid_place_meeting(self,o_mystery_dungeon_generator.grid){
			x = bbox_right&~(CELL_SIZE-1);
			x -= bbox_right -x;
		}
//go left
	}else if _x_speed < 0{
		if grid_place_meeting(self,o_mystery_dungeon_generator.grid){
			x = bbox_left&~(CELL_SIZE+1);
			x -= bbox_right+bbox_left;
	}
}
//go up
if _y_speed > 0 {
	if grid_place_meeting(self, o_mystery_dungeon_generator.grid){
		y = bbox_bottom &~(CELL_SIZE-1);
		y -= bbox_bottom-y;
		_y_speed = 0;
		
	}
// go down
}else if _y_speed < 0{
	if grid_place_meeting(self, o_mystery_dungeon_generator.grid){
		y = bbox_top&~(CELL_SIZE-1);
		y += CELL_SIZE +y-bbox_top;
		_y_speed = 0;
	}
}
}
