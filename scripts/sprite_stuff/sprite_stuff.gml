/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 655A5E14
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "sprite_stuff"
function sprite_stuff() {}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08033D28
/// @DnDArgument : "code" "/// @function mask_build(sprite, size)$(13_10)/// @returns surface id$(13_10)function mask_build(_spr, _size)$(13_10){$(13_10)    var w = _size;$(13_10)    var h = _size;$(13_10)$(13_10)    var surf = surface_create(w, h);$(13_10)    surface_set_target(surf);$(13_10)    draw_clear_alpha(c_black, 0);$(13_10)$(13_10)    draw_sprite_ext(_spr, 0, w*0.5, h*0.5, w/sprite_get_width(_spr), h/sprite_get_height(_spr), 0, c_white, 1);$(13_10)$(13_10)    surface_reset_target();$(13_10)    return surf;$(13_10)}$(13_10)$(13_10)/// @function mask_draw(bg_surf, mask_surf, x, y)$(13_10)function mask_draw(_bg, _mask, _x, _y)$(13_10){$(13_10)    shader_set(shMask);$(13_10)$(13_10)    var u_bg   = shader_get_uniform(shMask, "u_background");$(13_10)    var u_mask = shader_get_uniform(shMask, "u_mask");$(13_10)$(13_10)    // Bind textures to sampler stages$(13_10)    texture_set_stage(0, surface_get_texture(_bg));$(13_10)    texture_set_stage(1, surface_get_texture(_mask));$(13_10)$(13_10)    //shader_set_uniform_sampler(u_bg, 0);$(13_10)    //shader_set_uniform_sampler(u_mask, 1);$(13_10)$(13_10)    // Draw the mask surface — shader replaces its pixels$(13_10)    draw_surface(_mask, _x, _y);$(13_10)$(13_10)    shader_reset();$(13_10)}$(13_10)$(13_10)function gradient_build(_w, _h, _top_col, _bot_col)$(13_10){$(13_10)    var surf = surface_create(_w, _h);$(13_10)    surface_set_target(surf);$(13_10)$(13_10)    for (var i = 0; i < _h; i++)$(13_10)    {$(13_10)        var t = i / _h;$(13_10)        var col = merge_colour(_top_col, _bot_col, t);$(13_10)        draw_set_colour(col);$(13_10)        draw_line(0, i, _w, i);$(13_10)    }$(13_10)$(13_10)    draw_set_colour(c_white);$(13_10)    surface_reset_target();$(13_10)    return surf;$(13_10)}$(13_10)$(13_10)function sprite_to_surface(_spr, _size)$(13_10){$(13_10)    var surf = surface_create(_size, _size);$(13_10)    surface_set_target(surf);$(13_10)    draw_clear_alpha(c_black, 0);$(13_10)$(13_10)    draw_sprite_ext(_spr, 0, 0, 0, _size/sprite_get_width(_spr), _size/sprite_get_height(_spr), 0, c_white, 1);$(13_10)$(13_10)    surface_reset_target();$(13_10)    return surf;$(13_10)}$(13_10)"
/// @function mask_build(sprite, size)
/// @returns surface id
function mask_build(_spr, _size)
{
    var w = _size;
    var h = _size;

    var surf = surface_create(w, h);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);

    draw_sprite_ext(_spr, 0, w*0.5, h*0.5, w/sprite_get_width(_spr), h/sprite_get_height(_spr), 0, c_white, 1);

    surface_reset_target();
    return surf;
}

/// @function mask_draw(bg_surf, mask_surf, x, y)
function mask_draw(_bg, _mask, _x, _y)
{
    shader_set(shMask);

    var u_bg   = shader_get_uniform(shMask, "u_background");
    var u_mask = shader_get_uniform(shMask, "u_mask");

    // Bind textures to sampler stages
    texture_set_stage(0, surface_get_texture(_bg));
    texture_set_stage(1, surface_get_texture(_mask));

    //shader_set_uniform_sampler(u_bg, 0);
    //shader_set_uniform_sampler(u_mask, 1);

    // Draw the mask surface — shader replaces its pixels
    draw_surface(_mask, _x, _y);

    shader_reset();
}

function gradient_build(_w, _h, _top_col, _bot_col)
{
    var surf = surface_create(_w, _h);
    surface_set_target(surf);

    for (var i = 0; i < _h; i++)
    {
        var t = i / _h;
        var col = merge_colour(_top_col, _bot_col, t);
        draw_set_colour(col);
        draw_line(0, i, _w, i);
    }

    draw_set_colour(c_white);
    surface_reset_target();
    return surf;
}

function sprite_to_surface(_spr, _size)
{
    var surf = surface_create(_size, _size);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);

    draw_sprite_ext(_spr, 0, 0, 0, _size/sprite_get_width(_spr), _size/sprite_get_height(_spr), 0, c_white, 1);

    surface_reset_target();
    return surf;
}