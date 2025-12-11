/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02C81A6B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if position_meeting(mouse_x,mouse_y,self){$(13_10)	//draw_sprite(s_mini_player,image_index,x+32,y+64);$(13_10)}"
/// @description Execute Code
if position_meeting(mouse_x,mouse_y,self){
	//draw_sprite(s_mini_player,image_index,x+32,y+64);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 44EDFF44
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0256D8CB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_cursor"
/// @DnDSaveInfo : "object" "o_cursor"
var l0256D8CB_0 = instance_place(x + 0, y + 0, [o_cursor]);if ((l0256D8CB_0 > 0)){	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 2AF7831C
	/// @DnDParent : 0256D8CB
	/// @DnDArgument : "x" "random_range(bbox_left, bbox_right)"
	/// @DnDArgument : "y" "random_range(bbox_top,bbox_bottom)"
	/// @DnDArgument : "type" "7"
	/// @DnDArgument : "where" "1"
	effect_create_above(7, random_range(bbox_left, bbox_right), random_range(bbox_top,bbox_bottom), 0, $FFFFFF & $ffffff);}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 351F4D43
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 25347786
/// @DnDDisabled : 1
/// @DnDArgument : "x" "32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_bottom"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "scor"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3DD1719F
/// @DnDArgument : "expr" "grade"
var l3DD1719F_0 = grade;switch(l3DD1719F_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7AEC7455
	/// @DnDParent : 3DD1719F
	/// @DnDArgument : "const" "gr.C"
	case gr.C:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F77D2F6
		/// @DnDParent : 7AEC7455
		/// @DnDArgument : "expr" "s_gradeC"
		/// @DnDArgument : "var" "grade_sprite"
		grade_sprite = s_gradeC;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6BC56D9C
	/// @DnDParent : 3DD1719F
	/// @DnDArgument : "const" "gr.B"
	case gr.B:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 493EA0BF
		/// @DnDParent : 6BC56D9C
		/// @DnDArgument : "expr" "s_gradeB"
		/// @DnDArgument : "var" "grade_sprite"
		grade_sprite = s_gradeB;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 62D7E2B9
	/// @DnDParent : 3DD1719F
	/// @DnDArgument : "const" "gr.A"
	case gr.A:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CBCB470
		/// @DnDParent : 62D7E2B9
		/// @DnDArgument : "expr" "s_gradeA"
		/// @DnDArgument : "var" "grade_sprite"
		grade_sprite = s_gradeA;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2900F3C1
	/// @DnDParent : 3DD1719F
	/// @DnDArgument : "const" "gr.S"
	case gr.S:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73206E23
		/// @DnDParent : 2900F3C1
		/// @DnDArgument : "expr" "s_gradeS"
		/// @DnDArgument : "var" "grade_sprite"
		grade_sprite = s_gradeS;	break;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1526B570
/// @DnDDisabled : 1
/// @DnDArgument : "x" "70"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" ".5"
/// @DnDArgument : "yscale" ".5"
/// @DnDArgument : "sprite" "grade_sprite"
/// @DnDArgument : "frame" "image_index"


/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5BE7B132
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "words"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 22AEB4DA
/// @DnDArgument : "expr" "words"
var l22AEB4DA_0 = words;switch(l22AEB4DA_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 32BB4A47
	/// @DnDParent : 22AEB4DA
	/// @DnDArgument : "const" ""PLAY""
	case "PLAY":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 000987C0
		/// @DnDParent : 32BB4A47
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "play_button"
		/// @DnDSaveInfo : "sprite" "play_button"
		draw_sprite_ext(play_button, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 103EF108
	/// @DnDParent : 22AEB4DA
	/// @DnDArgument : "const" ""START""
	case "START":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2F7D1891
		/// @DnDParent : 103EF108
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "start_botton"
		/// @DnDSaveInfo : "sprite" "start_botton"
		draw_sprite_ext(start_botton, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 30F1743C
	/// @DnDParent : 22AEB4DA
	/// @DnDArgument : "const" ""SETTINGS""
	case "SETTINGS":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7AD028CB
		/// @DnDParent : 30F1743C
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "options_button"
		/// @DnDSaveInfo : "sprite" "options_button"
		draw_sprite_ext(options_button, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5B3B48E6
	/// @DnDParent : 22AEB4DA
	/// @DnDArgument : "const" ""BACK""
	case "BACK":	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 2D489536
		/// @DnDParent : 5B3B48E6
		/// @DnDArgument : "expr" "o_game.state"
		var l2D489536_0 = o_game.state;switch(l2D489536_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 023B387D
			/// @DnDParent : 2D489536
			default:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 032F1926
				/// @DnDParent : 023B387D
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "sprite" "quit_button"
				/// @DnDSaveInfo : "sprite" "quit_button"
				draw_sprite_ext(quit_button, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 454C695E
			/// @DnDParent : 2D489536
			/// @DnDArgument : "const" "gm.SELECT"
			case gm.SELECT:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 3469DB92
				/// @DnDParent : 454C695E
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "sprite" "Back_button"
				/// @DnDSaveInfo : "sprite" "Back_button"
				draw_sprite_ext(Back_button, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 03959F53
	/// @DnDParent : 22AEB4DA
	/// @DnDArgument : "const" ""QUIT""
	case "QUIT":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4D2EA446
		/// @DnDParent : 03959F53
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "quit_button"
		/// @DnDSaveInfo : "sprite" "quit_button"
		draw_sprite_ext(quit_button, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 350DD057
	/// @DnDParent : 22AEB4DA
	/// @DnDArgument : "const" ""TUTORIAL""
	case "TUTORIAL":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3B9C9346
		/// @DnDParent : 350DD057
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "tutorial_button"
		/// @DnDSaveInfo : "sprite" "tutorial_button"
		draw_sprite_ext(tutorial_button, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;}