/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6EA4B19D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_game.local_player.reticle"
var l6EA4B19D_0 = instance_place(x + 0, y + 0, [o_game.local_player.reticle]);if ((l6EA4B19D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D220669
	/// @DnDParent : 6EA4B19D
	/// @DnDArgument : "expr" "lerp(blurb_alpha, 1, .2*global.game_speed)"
	/// @DnDArgument : "var" "blurb_alpha"
	blurb_alpha = lerp(blurb_alpha, 1, .2*global.game_speed);}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 319EC446
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_game.local_player.reticle"
/// @DnDArgument : "not" "1"
var l319EC446_0 = instance_place(x + 0, y + 0, [o_game.local_player.reticle]);if (!(l319EC446_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24AEBBE3
	/// @DnDParent : 319EC446
	/// @DnDArgument : "expr" "lerp(blurb_alpha, 0, .2*global.game_speed)"
	/// @DnDArgument : "var" "blurb_alpha"
	blurb_alpha = lerp(blurb_alpha, 0, .2*global.game_speed);}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B3A26BA
/// @DnDArgument : "var" "gun_orientation"
/// @DnDArgument : "value" "1"
var gun_orientation = 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4A92ED02
/// @DnDArgument : "expr" "point_direction(x,y-54,target_x,target_y) > 90 && point_direction(x,y-54,target_x,target_y) < 270"
if(point_direction(x,y-54,target_x,target_y) > 90 && point_direction(x,y-54,target_x,target_y) < 270){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 567F769D
	/// @DnDParent : 4A92ED02
	/// @DnDArgument : "var" "gun_orientation"
	/// @DnDArgument : "value" "-1"
	var gun_orientation = -1;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1449A1CC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-54"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "clamp(getting_ready_to_fire/10,0,1)"
/// @DnDArgument : "yscale" "gun_orientation"
/// @DnDArgument : "rot" "point_direction(x,y-50,target_x,target_y)"
/// @DnDArgument : "sprite" "s_turret_gun2x"
/// @DnDSaveInfo : "sprite" "s_turret_gun2x"
draw_sprite_ext(s_turret_gun2x, 0, x + 0, y + -54, clamp(getting_ready_to_fire/10,0,1), gun_orientation, point_direction(x,y-50,target_x,target_y), $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 65EB09FD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "clamp(getting_ready_to_fire*.48,0, 5)"
draw_sprite_ext(sprite_index, clamp(getting_ready_to_fire*.48,0, 5), x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 45039862
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45C4F9A9
/// @DnDArgument : "var" "getting_ready_to_fire"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(getting_ready_to_fire > 10){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7E395608
	/// @DnDInput : 11
	/// @DnDParent : 45C4F9A9
	/// @DnDArgument : "script" "scr_laser"
	/// @DnDArgument : "arg" "glorp_x"
	/// @DnDArgument : "arg_1" "glorp_y"
	/// @DnDArgument : "arg_2" "getting_ready_to_fire*.01"
	/// @DnDArgument : "arg_3" "o_enemy"
	/// @DnDArgument : "arg_4" "target_x"
	/// @DnDArgument : "arg_5" "target_y"
	/// @DnDArgument : "arg_6" "color1"
	/// @DnDArgument : "arg_7" "color2"
	/// @DnDArgument : "arg_8" "color3"
	/// @DnDArgument : "arg_9" ".5"
	/// @DnDArgument : "arg_10" "3"
	/// @DnDSaveInfo : "script" "scr_laser"
	script_execute(scr_laser, glorp_x, glorp_y, getting_ready_to_fire*.01, o_enemy, target_x, target_y, color1, color2, color3, .5, 3);}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 27A38D3B
/// @DnDArgument : "expr" "state"
var l27A38D3B_0 = state;switch(l27A38D3B_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6D5D8BD3
	/// @DnDParent : 27A38D3B
	/// @DnDArgument : "const" "TURRET.RELOAD"
	case TURRET.RELOAD:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3B507422
		/// @DnDInput : 11
		/// @DnDParent : 6D5D8BD3
		/// @DnDArgument : "script" "draw_wheel_ext"
		/// @DnDArgument : "arg" "x"
		/// @DnDArgument : "arg_1" "y-140"
		/// @DnDArgument : "arg_2" "40"
		/// @DnDArgument : "arg_3" "20"
		/// @DnDArgument : "arg_4" "c_white"
		/// @DnDArgument : "arg_5" "cooldown"
		/// @DnDArgument : "arg_6" "320/global.reload_bonus"
		/// @DnDArgument : "arg_7" "1"
		/// @DnDArgument : "arg_8" "90"
		/// @DnDArgument : "arg_9" "false"
		/// @DnDArgument : "arg_10" "1"
		/// @DnDSaveInfo : "script" "draw_wheel_ext"
		script_execute(draw_wheel_ext, x, y-140, 40, 20, c_white, cooldown, 320/global.reload_bonus, 1, 90, false, 1);	break;}