
///Properties
ideal_width=0; //Doesn't matter because we are going to calculate this.
ideal_height= 180; 
zoom=1;
max_zoom=1;

//screenshake alarm
alarm[1] = -1;
screenshake_intensity = 0;
shake = 0;
//Aspect ratio
aspect_ratio = display_get_width()/display_get_height();

//Calculate new ideal width or height
ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width/aspect_ratio);

ideal_width=round(ideal_width);
ideal_height=round(ideal_height);

//Check to make sure our ideal width and height isn't an odd number, as that's usually not good.
if(ideal_width & 1)
  ideal_width++;
      
if(ideal_height & 1)
  ideal_height++;
 
    
max_zoom = floor(display_get_width()/ideal_width);

zoom_prev = zoom;

zoom = max_zoom-1;
surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width*zoom,ideal_height*zoom);
display_set_gui_maximize(zoom,zoom);

camera = camera_create();
globalvar view_x, view_y, view_w, view_h, view_zoom;
view_x = 0;
view_y = 0;
view_w = ideal_width;
view_h = ideal_height;
view_zoom = 1;

alarm[0]=1; //Center Window

follow = o_player;

smoothness = 15;
clamped = true;

shader_enable_corner_id(true);

