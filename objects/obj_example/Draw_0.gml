draw_set_alpha(1);


draw_set_color(gradient_get_color(gradient, 0.5+sin(current_time/1000)*0.5));
draw_circle(x+1120, y+96, 64, false);

draw_set_color(c_white);
draw_line(x+500+sin(current_time/1000)*500, y-8, x+500+sin(current_time/1000)*500, y);

draw_sprite_ext(sprite0, 0, x+1070, y+250+96, 2, 2, 0, c_white, gradient_get_alpha(gradient, 0.5+sin(current_time/500)*0.5));


draw_set_alpha(1);
draw_set_color(c_white);
draw_line(x+500+sin(current_time/500)*500, y+250-8, x+500+sin(current_time/500)*500, y+250);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(x, y-32, string_hash_to_newline("Color gradient: "));

for (i = 0; i < 1000; i++){
    draw_set_color(gradient_get_color(gradient, i/1000));
    draw_line(x+i, y, x+i, y+200);
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_text(x, y+250-32, string_hash_to_newline("Alpha gradient: "));

for (i = 0; i < 1000; i++){
    draw_set_alpha(gradient_get_alpha(gradient, i/1000));
    draw_set_color(c_white);
    draw_line(x+i, y+250, x+i, y+450);
}

