/// draw_line_px(x1, y1, x2, y2, ?headless)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var lp;
if (argument_count > 4) lp = !argument[4] else lp = true
var ax, ay, dx, dy;
ax = abs(x2 - x1)
ay = abs(y2 - y1)
//
if (ax == 0) {
    if (ay == 0) { // single pixel
        if (lp) draw_rectangle_px(x1, y1, 1, 1, 0)
        return 1
    }
    // vertical:
    ay += lp
    if (y2 > y1) {
        draw_rectangle_px(x1, y1, 1, ay, 0)
    } else {
        draw_rectangle_px(x1, y1 - ay + 1, 1, ay, 0)
    }
    return 1
}
if (ay == 0) { // horizontal
    ax += lp
    if (x2 > x1) {
        draw_rectangle_px(x1, y1, ax, 1, 0)
    } else {
        draw_rectangle_px(x1 - ax + 1, y1, ax, 1, 0)
    }
    return 1
}
var ds, dc = 0.5;
if (x2 > x1) dx = 1 else dx = -1
if (y2 > y1) dy = 1 else dy = -1
if (ax > ay) { // left/right
    ds = ay / ax
    repeat (ax) {
        draw_rectangle_px(x1, y1, 1, 1, 0)
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
        draw_rectangle_px(x1, y1, 1, 1, 0)
        y1 += dy
        dc += ds
        if (dc >= 1) {
            x1 += dx
            dc -= 1
        }
    }
}
if (lp) draw_rectangle_px(x1, y1, 1, 1, 0)