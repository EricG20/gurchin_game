/// @description UI Stuff
// BG
draw_set_color(palette.bright);
draw_rectangle(0, 0, room_width, 5, false);
draw_rectangle(0, room_height - 50, room_width, room_height, false);
draw_rectangle(0, 0, 5, room_height, false);
draw_rectangle(room_width - 5, 0, room_width, room_height, false);

// Main border
draw_set_color(palette.highlight);
draw_line_width(5, 5, room_width - 5.5, 5, 1);
draw_line_width(4.5, room_height - 51, room_width - 5.5, room_height - 51, 1);
draw_line_width(5, 4.5, 5, room_height - 50.5, 1);
draw_line_width(room_width - 6, 4.5, room_width - 6, room_height - 50.5, 1);

// Textbox
draw_rectangle(5.5, room_height - 45.5, room_width - 5.5, room_height - 5.5, false);
draw_set_color(palette.medium);
draw_rectangle(6.5, room_height - 44.5, room_width - 6.5, room_height - 6.5, false);

// Scene info
draw_set_color(palette.text);
draw_set_font(fntDefault);
draw_text_transformed(7.5, 6, $"Scene: {sceneName}", .5, .5, 0);
draw_set_halign(fa_right);
draw_text_transformed(room_width - 5.5, 6, $"FPS {string(fps)} ({string(fps_real)})", .5, .5, 0);
draw_set_halign(fa_left);
draw_text_transformed(7.5, room_height - 45, textboxInfo, .5, .5, 0);
draw_set_valign(fa_bottom);
draw_text_transformed(7.5, room_height - 52.5, "X: Next scene\nC: Show wireframe\nSpace: Pause simulation", .5, .5, 0);
draw_set_valign(fa_top);
