/// @param tilemap
/// @param dx
/// @param dy
/// @return whether destination was reached (no obstacle hit)
/// @args t, move_x, move_y
if (move_x == 0 && move_y == 0) return true;
var tw = tilemap_get_tile_width(t);
var th = tilemap_get_tile_height(t);
// correct for collision system rounding
var fx = x - round(x);
var fy = y - round(y);
//
if (move_x != 0) {
    var y1 = floor((bbox_top + fy) / th);
    var y2 = floor((bbox_bottom + fy) / th);
    var d = (move_x > 0 ? 1 : -1);
    var cx = (d > 0 ? bbox_right + 1 : bbox_left) + fx;
    var tx = floor((cx + move_x) / tw);
    var ix = floor(cx / tw);
    repeat ((tx - ix) / d + 1) {
        for (var iy = y1; iy <= y2; iy++) {
            if (tile_get_empty(tilemap_get(t, ix, iy))) continue;
            if (d > 0) {
                x = ix * tw - (bbox_right - bbox_left + 1);
            } else x = (ix + 1) * tw;
            return false;
        }
        ix += d;
    }
    x += move_x;
}
//
if (move_y != 0) {
    var x1 = floor((bbox_left + fx) div tw);
    var x2 = floor((bbox_right + fx) div tw);
    var d = (move_y > 0 ? 1 : -1);
    var cy = (d > 0 ? bbox_bottom + 1 + fy : bbox_top) + fy;
    var ty = floor((cy + move_y) / th);
    var iy = floor(cy / th);
    repeat ((ty - iy) / d + 1) {
        for (var ix = x1; ix <= x2; ix++) {
            if (tile_get_empty(tilemap_get(t, ix, iy))) continue;
            if (d > 0) {
                y = iy * tw - (bbox_bottom - bbox_top + 1);
            } else y = (iy + 1) * th;
            return false;
        }
        iy += d;
    }
    y += move_y;
}
//
return true;

/*

var d = (move_y > 0 ? 1 : -1);

IS THE SAME AS
 
if (move_y > 0) {
    var d = 1;
} else {
   var d = -1;
}