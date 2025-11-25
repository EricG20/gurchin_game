/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 68029DDC
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "800"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""game speed: ""
/// @DnDArgument : "text" "global.game_speed"
draw_text_transformed(20, 800, string("game speed: ") + string(global.game_speed), 2, 2, 0);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 03FDEC77
/// @DnDArgument : "expr" "state"
var l03FDEC77_0 = state;switch(l03FDEC77_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 255F2C7D
	/// @DnDParent : 03FDEC77
	/// @DnDArgument : "const" "gm.LEVEL"
	case gm.LEVEL:	/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 2C4580BD
		/// @DnDParent : 255F2C7D
		/// @DnDArgument : "font" "Font1"
		/// @DnDSaveInfo : "font" "Font1"
		draw_set_font(Font1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 23214C71
		/// @DnDParent : 255F2C7D
		/// @DnDArgument : "x" "60"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" """"
		/// @DnDArgument : "text" "scor"
		draw_text_transformed(60, 150, string("") + string(scor), 2, 2, 0);	break;}