/// @description
/// @description Insert description here
// You can write your code in this editor
if generated = true && done = false{
	var w_ = surface_get_width(surf);
	var h_ = surface_get_height(surf);
	var buff = buffer_create(w_*h_*4,buffer_fixed,4);
	buffer_get_surface(buff,surf,0,0,0);
	surface_free(surf);
	
	for(var yy= 0; yy < h_; yy++){
		for(var xx= 0; xx < w_; xx++){
			var _col = buffer_read(buff, buffer_u32); 
            var _a = (_col >> 24) & 255;
			
			//if _a > 0 && _a < 100 && irandom_range(0,100) > 80{
			//	instance_create_layer(xx* GCD + GCD/2, yy * GCD + GCD/2, "instances",o_grass);
			//}
			
			if _a > 0 && _a < 10 && irandom_range(0,100) > 80{
				instance_create_layer(xx* GCD + GCD/2, yy * GCD + GCD/2, "instances",o_alien_plant);
			}
			
			if _a > 0 && _a < 5 && irandom_range(0,100) > 80{
				instance_create_layer(xx* GCD + GCD/2, yy * GCD + GCD/2, "instances",o_tentacle);
			}
			
		}
	}
	
	buffer_delete(buff);
	
	done = true;
	instance_create_layer(x,y,"instances",o_grass_controller);
}