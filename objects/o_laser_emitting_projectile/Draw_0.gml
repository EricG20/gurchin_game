/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 404F3BA4
/// @DnDArgument : "expr" "sender"
/// @DnDArgument : "var" "weilder"
weilder = sender;

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 097E3EB7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1-(despawn_time*.2)"
/// @DnDArgument : "yscale" "1-(despawn_time*.2)"
/// @DnDArgument : "rot" "point_direction(x-hsp,y-vsp,x,y)"
/// @DnDArgument : "alpha" "(12-despawn_time)/12"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "color_1"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1-(despawn_time*.2), 1-(despawn_time*.2), point_direction(x-hsp,y-vsp,x,y), color_1 & $ffffff, (12-despawn_time)/12);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2BF5AD67
/// @DnDInput : 10
/// @DnDArgument : "script" "scr_laser"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "(damage*.02)*despawn_time"
/// @DnDArgument : "arg_3" "o_enemy"
/// @DnDArgument : "arg_4" "x+hsp"
/// @DnDArgument : "arg_5" "y+vsp"
/// @DnDArgument : "arg_6" "color_1"
/// @DnDArgument : "arg_7" "color_2"
/// @DnDArgument : "arg_8" "color_3"
/// @DnDArgument : "arg_9" "damage"
/// @DnDSaveInfo : "script" "scr_laser"
script_execute(scr_laser, 0, 0, (damage*.02)*despawn_time, o_enemy, x+hsp, y+vsp, color_1, color_2, color_3, damage);