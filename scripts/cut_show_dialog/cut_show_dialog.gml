/// @description cut_show_dialog(dialog_array)
/// @function cut_show_dialog
/// @param  dialog_array
/*
    This function is designed to be called in a cutscene sequence.
    It will show the dialog. When the dialog reaches the end,
    and the player proceeds, the cutscene will move on to the new action.
*/

var dialog_array = argument0;



if (!instance_exists(o_dialog_blank)) {
    var dialog = instance_create_layer(creator_x, creator_y,I,o_dialog_blank);
    dialog.cutscene = id;
    dialog.text = dialog_array;
    with (dialog) event_user(FORMAT_TEXT);//format the text for the dialogue
	return dialog;
}
