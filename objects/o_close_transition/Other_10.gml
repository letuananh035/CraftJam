/// @description top down close
if alarm[1] = -1 and bubble_flag = false{
alarm[1] = SEC*.41;
}
//Top rectangle 
draw_rectangle(0,0,width,top_box_y,false);
//Bot Rectangle
draw_rectangle(0,bot_box_y,width, height,false);



if(timer <= SEC*1.3)
{
	top_box_y = easings("easeoutexpo",0,height/2,SEC*1.3,timer);
	bot_box_y = easings("easeoutexpo", height,-height/2,SEC*1.3,timer);
	
}
timer++;

/*
repeat(80){

ran_x = random_range(0,room_width);
ran_y = random_range(1,-1);
create(ran_x,ran_y+ room_height/2,o_nice_cloud);
draw_sprite(s_bubble_white,cloud_images,ran_x,ran_y);
}
