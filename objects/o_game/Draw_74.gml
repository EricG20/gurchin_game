/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C985A9E
/// @DnDArgument : "expr" "state"
var l5C985A9E_0 = state;switch(l5C985A9E_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 42070D0E
	/// @DnDParent : 5C985A9E
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3177052A
		/// @DnDParent : 42070D0E
		/// @DnDArgument : "x" "-5"
		/// @DnDArgument : "y" "-10"
		/// @DnDArgument : "xscale" ".8"
		/// @DnDArgument : "sprite" "s_ui_background"
		/// @DnDSaveInfo : "sprite" "s_ui_background"
		draw_sprite_ext(s_ui_background, 0, -5, -10, .8, 1, 0, $FFFFFF & $ffffff, 1);	break;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7BD96AC9
/// @DnDDisabled : 1
/// @DnDArgument : "x" "960"
/// @DnDArgument : "y" "540"
/// @DnDArgument : "alpha" "pause_background_alpha"
/// @DnDArgument : "sprite" "Layer_1"
/// @DnDSaveInfo : "sprite" "Layer_1"