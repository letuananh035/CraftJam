/// @description move_intended_direction(hspd,vspd,distance)
/// @function move_intended_direction
/// @param hspd
/// @param vspd
/// @param distance
var hspd = argument0;
var vspd = argument1;
var dis = argument2;
var spd = max_speed_;
dis = 15;
//Check for a wall
var lay_id = layer_get_id("Collision");
var tilemap = layer_tilemap_get_id(lay_id);

var dir_4 = get_facing(direction_);
if _x_speed > 0  {
	var bbox_hor = bbox_right
}else{ 
	bbox_hor = bbox_left;	
}

if (_y_speed > 0)  var bbox_ver = bbox_bottom + 2 else bbox_ver = bbox_top;


	
var collx = tilemap_get_at_pixel(tilemap,bbox_hor+_x_speed,y-6);

var colly = tilemap_get_at_pixel(tilemap,x,bbox_ver+_y_speed);





//Make sure there is a wall

if collx != -1 or colly != -1 {
    switch (dir_4){
    
    case UP:
    
    case DOWN:
        if (hspd !=0) exit; //No need to slide if we already have hspd
       for (var i=0; i<dis; i+= spd;) {
  
        }
        break;
        
        
        case RIGHT:

        case LEFT:
		
			
			
	
            //moving up
          // if (_y_speed !=0) exit; //No need to slide if we already have vspd
	        
				
				for (var i=0; i<dis; i += spd) {
					
				var move_up = false;
				var move_down = false;
				if tilemap_get_at_pixel(tilemap,bbox_hor+spd,y-6-i) = 0{
						
						y -= max_speed_;
						x += max_speed_;
						
						exit;

				}
				
				if tilemap_get_at_pixel(tilemap,bbox_hor+spd,y-6+i) = 0{
						y += max_speed_ +4;
						x += max_speed_;

				
						exit;
				}
				 
				
					

		      
			}
        break;
  
	}
}