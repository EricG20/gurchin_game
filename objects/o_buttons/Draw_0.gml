/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 68AD7A10
/// @DnDArgument : "x" "-string_width(data_mode) - 20"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "data_mode"
draw_text_transformed(x + -string_width(data_mode) - 20, y + 10, string("") + string(data_mode), 1, 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 4B7C60FF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2A0BA35D
/// @DnDArgument : "expr" "is_clicked"
if(is_clicked){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6C6B04DF
	/// @DnDParent : 2A0BA35D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "s_ui_checkmark"
	/// @DnDSaveInfo : "sprite" "s_ui_checkmark"
	draw_sprite_ext(s_ui_checkmark, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 139575C2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_cursor"
/// @DnDSaveInfo : "object" "o_cursor"
var l139575C2_0 = instance_place(x + 0, y + 0, [o_cursor]);if ((l139575C2_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 385D8FB2
	/// @DnDParent : 139575C2
	/// @DnDArgument : "var" "data_mode"
	/// @DnDArgument : "value" ""screen_shake""
	if(data_mode == "screen_shake"){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 086F05F8
		/// @DnDParent : 385D8FB2
		/// @DnDArgument : "script" "msg_static"
		/// @DnDArgument : "arg" ""Having this on will allow the screen to shake in appropriate moments, i.e. an explosion""
		/// @DnDSaveInfo : "script" "msg_static"
		script_execute(msg_static, "Having this on will allow the screen to shake in appropriate moments, i.e. an explosion");}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43EA5CEF
	/// @DnDParent : 139575C2
	/// @DnDArgument : "var" "data_mode"
	/// @DnDArgument : "value" ""bright_flashes""
	if(data_mode == "bright_flashes"){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1D742F2C
		/// @DnDParent : 43EA5CEF
		/// @DnDArgument : "script" "msg_static"
		/// @DnDArgument : "arg" ""Enable to allow brief bright lights to show up when appropriate.""
		/// @DnDSaveInfo : "script" "msg_static"
		script_execute(msg_static, "Enable to allow brief bright lights to show up when appropriate.");}}