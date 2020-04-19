
triangle_offset = 320;
scribble_autotype_add_event("test event", example_event);
//Define a demo string for use in the Draw event
var _demo_string  = "HIT THE [s_rock_scribble][test event]";
//    _demo_string += "[wave][c_orange]0123456789[] .,<>\"'&[c_white][spr_coin,0][spr_coin,1][spr_coin,2][spr_coin,3][shake][rainbow]!?[]\n";
//    _demo_string += "[fa_centre][spr_coin][spr_coin][spr_coin][spr_large_coin][test event]\n";
//    _demo_string += "[fa_left][spr_sprite_font]the quick brown fox [wave]jumps[/wave] over the lazy dog";
//    _demo_string += "[fnt_test_0][fa_right]THE [fnt_test_1][#ff4499][shake]QUICK[fnt_test_0] [$D2691E]BROWN [$FF4499]FOX [fa_left]JUMPS OVER[$FFFF00] THE [/shake]LAZY [fnt_test_1][wobble]DOG[/wobble].";

element = scribble_draw(x - 150, y - 80, _demo_string);
scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, 0.5, 0);
scribble_autotype_set_sound(element, [a_sbubble], 30);