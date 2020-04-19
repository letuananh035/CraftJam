//audio_effect(a_violin_a,0,4);
instance_destroy(o_miss_text);
var tx = create(x,y-5,o_miss_text);
tx.text = argument0;
tx.color = c_white;
tx.dice = true;
tx.target = o_player;
tx.alarm[0] = SEC*3;