/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68766964
/// @DnDArgument : "code" "/// @description Draw Wheel$(13_10)$(13_10)for (var i = 0; i < n; i++) {$(13_10)    var col = (i == hover_index) ? cyber_green : faded_black;$(13_10)	var alph = (i == hover_index) ? 1 : .6;$(13_10)$(13_10)    draw_primitive_begin(pr_trianglefan);$(13_10)    draw_vertex_color(x, y, col, alph);$(13_10)	if (i == 0) { // Top Half$(13_10)		draw_vertex_color(x + radius, y, col, alph);$(13_10)		draw_vertex_color(x + lengthdir_x(radius, 60), y + lengthdir_y(radius, 60), col, alph);$(13_10)		draw_vertex_color(x + lengthdir_x(radius, 120), y + lengthdir_y(radius, 120), col, alph);$(13_10)		draw_vertex_color(x - radius, y, col, alph);$(13_10)	} else { // Bottom Half$(13_10)		draw_vertex_color(x - radius, y, col, alph);$(13_10)		draw_vertex_color(x + lengthdir_x(radius, 240), y + lengthdir_y(radius, 240), col, alph);$(13_10)		draw_vertex_color(x + lengthdir_x(radius, 300), y + lengthdir_y(radius, 300), col, alph);$(13_10)		draw_vertex_color(x + radius, y, col, alph);$(13_10)	}$(13_10)    draw_primitive_end();$(13_10)	$(13_10)	var le_text = selected_options[i];$(13_10)	$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_valign(fa_middle);$(13_10)	$(13_10)	var ly = (i == 0) ? y - radius*0.45 : y + radius*0.45;$(13_10)	draw_text_colour_outline(x, ly, le_text, c_white, c_white, 1, c_black, c_black, 1, 2, 8, .75, .75, 0);$(13_10)	$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_set_valign(fa_top);$(13_10)}"
/// @description Draw Wheel

for (var i = 0; i < n; i++) {
    var col = (i == hover_index) ? cyber_green : faded_black;
	var alph = (i == hover_index) ? 1 : .6;

    draw_primitive_begin(pr_trianglefan);
    draw_vertex_color(x, y, col, alph);
	if (i == 0) { // Top Half
		draw_vertex_color(x + radius, y, col, alph);
		draw_vertex_color(x + lengthdir_x(radius, 60), y + lengthdir_y(radius, 60), col, alph);
		draw_vertex_color(x + lengthdir_x(radius, 120), y + lengthdir_y(radius, 120), col, alph);
		draw_vertex_color(x - radius, y, col, alph);
	} else { // Bottom Half
		draw_vertex_color(x - radius, y, col, alph);
		draw_vertex_color(x + lengthdir_x(radius, 240), y + lengthdir_y(radius, 240), col, alph);
		draw_vertex_color(x + lengthdir_x(radius, 300), y + lengthdir_y(radius, 300), col, alph);
		draw_vertex_color(x + radius, y, col, alph);
	}
    draw_primitive_end();
	
	var le_text = selected_options[i];
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var ly = (i == 0) ? y - radius*0.45 : y + radius*0.45;
	draw_text_colour_outline(x, ly, le_text, c_white, c_white, 1, c_black, c_black, 1, 2, 8, .75, .75, 0);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
