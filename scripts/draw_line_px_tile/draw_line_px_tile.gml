/// draw_line_px(x1, y1, x2, y2, ?headless)
///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg alpha
///@arg color
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var alpha = argument[4];
var color = argument[5];

var ax, ay, dx, dy;
ax = abs(x2 - x1)
ay = abs(y2 - y1)
//
/*
    // vertical:
    if (y2 > y1) {
    //  draw_rectangle_px(x1, y1, 1, ay, 0)
    } else {
    //  draw_rectangle_px(x1, y1 - ay + 1, 1, ay, 0)
    }
*/


var ds, dc = 0.5;
if (x2 > x1) dx = 1 else dx = -1
if (y2 > y1) dy = 1 else dy = -1
if (ax > ay) { // left/right
    ds = ay / ax
    repeat (ax) {
		
		
        draw_sprite_ext(s_pixel,0,x1 , y1,1,1,0,color,alpha);
        x1 += dx
        dc += ds
        if (dc >= 1) {
            y1 += dy
            dc -= 1
        }
    }
} else { // up/down
    ds = ax / ay
    repeat (ay) {

		draw_sprite_ext(s_pixel,0,x1,y1,1,1,0,color,alpha);

        y1 += dy
        dc += ds
        if (dc >= 1) {
            x1 += dx
            dc -= 1
        }
		

    }
}