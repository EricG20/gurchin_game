/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 37B42E6D
/// @DnDArgument : "x1" "x"
/// @DnDArgument : "y1" "y-30"
/// @DnDArgument : "x2" "clawbaby.x"
/// @DnDArgument : "y2" "clawbaby.y"
draw_line(x, y-30, clawbaby.x, clawbaby.y);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2469199F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3B2A82EF
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2E728F35
/// @DnDArgument : "x" "(9-gun_x)*facing"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "sprite" "s_gunclaw_gun"
/// @DnDSaveInfo : "sprite" "s_gunclaw_gun"
draw_sprite_ext(s_gunclaw_gun, 0, x + (9-gun_x)*facing, y + -20, facing, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 45D516F4
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40AB299F
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "gunclaw.DIE"
if(state == gunclaw.DIE)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 27061DFA
	/// @DnDParent : 40AB299F
	/// @DnDArgument : "expr" "msg_dynamic("I'm fucking dying ahhh!")"
	/// @DnDArgument : "not" "1"
	if(!(msg_dynamic("I'm fucking dying ahhh!")))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 05DB6C12
		/// @DnDParent : 27061DFA
		/// @DnDArgument : "soundid" "sfx_hop"
		/// @DnDArgument : "pitch" "random_range(1.1,1.4)"
		/// @DnDSaveInfo : "soundid" "sfx_hop"
		audio_play_sound(sfx_hop, 0, 0, 1.0, undefined, random_range(1.1,1.4));
	}
}