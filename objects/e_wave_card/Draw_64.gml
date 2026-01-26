/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5D8A4692
/// @DnDDisabled : 1
/// @DnDArgument : "x" "960"
/// @DnDArgument : "y" "540"
/// @DnDArgument : "alpha" "alpher"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 306462CE
/// @DnDArgument : "var" "dis_text"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" """"
if(!(dis_text == "")){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3EDDB13B
	/// @DnDParent : 306462CE
	/// @DnDArgument : "x" "x_to_middle"
	/// @DnDArgument : "y" "540"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "clamp(2*alpher,0,2)"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "text" "dis_text"
	draw_text_transformed(x_to_middle, 540, string("") + string(dis_text), 2, clamp(2*alpher,0,2), 0);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52635CD3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "s_grid"
if(!(sprite_index == s_grid)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 78014B44
	/// @DnDParent : 52635CD3
	/// @DnDArgument : "x" "x_to_middle"
	/// @DnDArgument : "y" "540"
	/// @DnDArgument : "yscale" "clamp(2*alpher,0,1)"
	/// @DnDArgument : "alpha" "alpher"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, x_to_middle, 540, 1, clamp(2*alpher,0,1), 0, $FFFFFF & $ffffff, alpher);}