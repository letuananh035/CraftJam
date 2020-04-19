#define window_set_cursor_init
window_set_cursor_init_raw(window_handle());

#define window_set_cursor_normal
/// @description  (): Reverts the cursor to whatever set via built-in window_set_cursor.
var r = window_set_cursor_normal_raw();
window_set_cursor(window_get_cursor());
return r;

#define window_set_cursor_surface_part
/// @description  (surface, left, top, width, height, x, y):
/// @param surface
/// @param  left
/// @param  top
/// @param  width
/// @param  height
/// @param  x
/// @param  y
var sf = argument0;
var l = argument1;
var t = argument2;
var w = argument3;
var h = argument4;
var cx = argument5;
var cy = argument6;
var sw = surface_get_width(sf);
var r;
var hwnd = window_handle();
if (os_browser != browser_not_a_browser) {
	surface_getpixel_ext(sf, l + w/2, t + h/2); // flush
	var d = window_set_cursor_impl_1(surface_get_texture(sf), window_device(), l, t, w, h);
	r = window_set_cursor_impl(hwnd, d, w, 0, 0, w, h, cx - l, cy - l);
} else {
	var sw = surface_get_width(sf);
	var sh = surface_get_height(sf);
	var b = buffer_create(sw * sh * 4, buffer_fixed, 1);
	buffer_get_surface(b, sf, 0, 0, 0);
	r = window_set_cursor_impl(hwnd, b, sw, 0, 0, w, h, cx - l, cy - l);
	buffer_delete(b);
}
return r;

#define window_set_cursor_surface
/// @description  (surface, x, y):
/// @param surface
/// @param  x
/// @param  y
var q = argument0;
return window_set_cursor_surface_part(q, 0, 0, surface_get_width(q), surface_get_height(q), argument1, argument2);

#define window_set_cursor_sprite
/// @description  (sprite, subimg):
/// @param sprite
/// @param  subimg
var q = argument0;
var sf = surface_create(sprite_get_width(q), sprite_get_height(q));
var qx = sprite_get_xoffset(q);
var qy = sprite_get_yoffset(q);
surface_set_target(sf);
draw_clear_alpha(0, 0);
draw_set_blend_mode_ext(bm_one, bm_zero);
draw_sprite(q, argument1, qx, qy);
draw_set_blend_mode(bm_normal);
surface_reset_target();
var r = window_set_cursor_surface(sf, qx, qy);
surface_free(sf);
return r;

#define window_set_cursor_sprite_ext
/// @description  (sprite, subimg, image_xscale, image_yscale, image_blend, image_alpha):
/// @param sprite
/// @param  subimg
/// @param  image_xscale
/// @param  image_yscale
/// @param  image_blend
/// @param  image_alpha
var q = argument0;
var mx = argument2;
var my = argument3;
var rw = max(1, ceil(mx * sprite_get_width(q)));
var rh = max(1, ceil(my * sprite_get_height(q)));
var sf = surface_create(rw, rh);
var qx = sprite_get_xoffset(q) * mx;
var qy = sprite_get_yoffset(q) * my;
surface_set_target(sf);
draw_clear_alpha(0, 0);
draw_set_blend_mode_ext(bm_one, bm_zero);
draw_sprite_ext(q, argument1, qx + (mx < 0) * rw, qy + (my < 0) * rh, mx, my, 0, argument4, argument5);
draw_set_blend_mode(bm_normal);
surface_reset_target();
var r = window_set_cursor_surface(sf, qx, qy);
surface_free(sf);
return r;

