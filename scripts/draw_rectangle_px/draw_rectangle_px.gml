/// draw_rectangle_px(x, y, width, height, outline): More expensive, pixel-perfect
var x1 = argument0;
var y1 = argument1;
var x2 = x1 + argument2;
var y2 = y1 + argument3;
//
if (argument4) {
    draw_primitive_begin(pr_trianglestrip)
    draw_vertex(x1, y1)
    draw_vertex(x1 + 1, y1 + 1)
    draw_vertex(x2, y1)
    draw_vertex(x2 - 1, y1 + 1)
    draw_vertex(x2, y2)
    draw_vertex(x2 - 1, y2 - 1)
    draw_vertex(x1, y2)
    draw_vertex(x1 + 1, y2 - 1)
    draw_vertex(x1, y1)
    draw_vertex(x1 + 1, y1 + 1)
    draw_primitive_end()
} else {
    draw_primitive_begin(pr_trianglelist)
    draw_vertex(x1, y1)
    draw_vertex(x2, y1)
    draw_vertex(x2, y2)
    //
    draw_vertex(x1, y1)
    draw_vertex(x2, y2)
    draw_vertex(x1, y2)
    draw_primitive_end()
}