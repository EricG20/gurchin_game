/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F761BA6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)var slice_angle = 360/n;$(13_10)$(13_10)for (var i = 0; i < n; i++) {$(13_10)    var a1 = i * slice_angle;$(13_10)    var a2 = (i + 1) * slice_angle;$(13_10)$(13_10)    var col = (i == hover_index) ? cyber_green : faded_black;$(13_10)	var alph = (i == hover_index) ? 1 : .6;$(13_10)$(13_10)	$(13_10)    draw_primitive_begin(pr_trianglestrip);$(13_10)    draw_vertex_color(center_x, center_y, col, alph);$(13_10)    draw_vertex_color(center_x + lengthdir_x(radius, a1),$(13_10)                      center_y + lengthdir_y(radius, a1), col, alph);$(13_10)    draw_vertex_color(center_x + lengthdir_x(radius, a2),$(13_10)                      center_y + lengthdir_y(radius, a2), col, alph);$(13_10)    draw_primitive_end();$(13_10)	var le_text = "";$(13_10)	switch(i){$(13_10)		case 0:$(13_10)			le_text = "Good Job!";$(13_10)		break;$(13_10)		case 1:$(13_10)			le_text = "You Suck!";$(13_10)		break;$(13_10)		case 2:$(13_10)			le_text = "Help!";$(13_10)		break;$(13_10)		case 3:$(13_10)			le_text = "I'm the BEST!";$(13_10)		break;$(13_10)		case 4:$(13_10)			le_text = "I Want That!";$(13_10)		break;$(13_10)		case 5:$(13_10)			le_text = "Hi!"$(13_10)		break;$(13_10)	}$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_valign(fa_middle);$(13_10)	draw_text_colour_outline(x + lengthdir_x(radius-60, (a1+a2)/2),y + lengthdir_y(radius-60, (a1+a2)/2), le_text, c_white, c_white, 1, c_black, c_black, 1, 2, 8, .75, .75, 0);$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_set_valign(fa_top);$(13_10)}"
/// @description Execute Code

var slice_angle = 360/n;

for (var i = 0; i < n; i++) {
    var a1 = i * slice_angle;
    var a2 = (i + 1) * slice_angle;

    var col = (i == hover_index) ? cyber_green : faded_black;
	var alph = (i == hover_index) ? 1 : .6;

	
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex_color(center_x, center_y, col, alph);
    draw_vertex_color(center_x + lengthdir_x(radius, a1),
                      center_y + lengthdir_y(radius, a1), col, alph);
    draw_vertex_color(center_x + lengthdir_x(radius, a2),
                      center_y + lengthdir_y(radius, a2), col, alph);
    draw_primitive_end();
	var le_text = "";
	switch(i){
		case 0:
			le_text = "Good Job!";
		break;
		case 1:
			le_text = "You Suck!";
		break;
		case 2:
			le_text = "Help!";
		break;
		case 3:
			le_text = "I'm the BEST!";
		break;
		case 4:
			le_text = "I Want That!";
		break;
		case 5:
			le_text = "Hi!"
		break;
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_colour_outline(x + lengthdir_x(radius-60, (a1+a2)/2),y + lengthdir_y(radius-60, (a1+a2)/2), le_text, c_white, c_white, 1, c_black, c_black, 1, 2, 8, .75, .75, 0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}