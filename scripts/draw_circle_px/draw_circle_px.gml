/// draw_circle_px(x, y, r, outline)
var cx = argument0;
var cy = argument1;
var dx = argument2;
var dy = 0;
var re = 1 - dx;
if (argument3) {
    for (var step = 0; step < 2; step++) {
        if (!step || (step && dx == dy)) {
            draw_rectangle_px(cx - dx, cy - dy, 1, 1, 0)
            draw_rectangle_px(cx + dy, cy - dx, 1, 1, 0)
            draw_rectangle_px(cx + dx, cy + dy, 1, 1, 0)
            draw_rectangle_px(cx - dy, cy + dx, 1, 1, 0)
        }
        if (!step) {
            dy++
            if (re >= 0) {
                re += 2 * (dy - --dx) + 1
            } else re += 2 * dy + 1
            var vx = dx, vy0 = dy, vy1 = dy;
            while (dx > dy) {
                vy1 = dy;
                dy++
                var draw = false;
                if (re >= 0) {
                    draw = true
                    re += 2 * (dy - --dx) + 1
                } else re += 2 * dy + 1
                if (draw || dx <= dy) {
                    draw_line_px(cx - vx, cy - vy0, cx - vx, cy - vy1)
                    draw_line_px(cx - vy0, cy - vx, cx - vy1, cy - vx)
                    draw_line_px(cx + vx, cy - vy0, cx + vx, cy - vy1)
                    draw_line_px(cx + vy0, cy - vx, cx + vy1, cy - vx)
                    draw_line_px(cx - vx, cy + vy0, cx - vx, cy + vy1)
                    draw_line_px(cx - vy0, cy + vx, cx - vy1, cy + vx)
                    draw_line_px(cx + vx, cy + vy0, cx + vx, cy + vy1)
                    draw_line_px(cx + vy0, cy + vx, cx + vy1, cy + vx)
                    vx = dx
                    vy0 = dy
                }
            }
        }
    }
} else { // filled
    dy++
    if (re >= 0) {
        re += 2 * (dy - --dx) + 1
    } else re += 2 * dy + 1
    var vx = dx, vy0 = dy, vy1 = dy;
    while (dx > dy) {
        vy1 = dy;
        dy++
        if (re >= 0) {
            re += 2 * (dy - --dx) + 1
            //
            draw_line_px(cx - vx, cy - vy1, cx - vx, cy + vy1) // l
            draw_line_px(cx + vx, cy - vy1, cx + vx, cy + vy1) // r
            draw_line_px(cx - vy1, cy - vx, cx + vy1, cy - vx) // t
            draw_line_px(cx - vy1, cy + vx, cx + vy1, cy + vx) // b
            vx = dx
            vy0 = dy
        } else re += 2 * dy + 1
    } // while (dx > dy)
    draw_rectangle_px(cx - vx, cy - vx, vx * 2 + 1, vx * 2 + 1, false)
}