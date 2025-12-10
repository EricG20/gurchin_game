/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 774EE969
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "s_grid"
if(!(sprite_index == s_grid)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 42E3BE05
	/// @DnDParent : 774EE969
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "alpha" "alpher"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, alpher);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FE96298
/// @DnDDisabled : 1
/// @DnDArgument : "var" "dis_text"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" """"
/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 303E1FAF
/// @DnDDisabled : 1
/// @DnDParent : 3FE96298
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "clamp(2*alpher,0,2)"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "dis_text"