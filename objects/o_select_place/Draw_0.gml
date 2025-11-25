/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02C81A6B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if position_meeting(mouse_x,mouse_y,self){$(13_10)	draw_sprite(s_mini_player,image_index,x+32,y+64);$(13_10)}"
/// @description Execute Code
if position_meeting(mouse_x,mouse_y,self){
	draw_sprite(s_mini_player,image_index,x+32,y+64);
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

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 351F4D43
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 25347786
/// @DnDArgument : "x" "32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_bottom"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "scor"
draw_text(x + 32, bbox_bottom, string("") + string(scor));

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
/// @DnDArgument : "x" "70"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" ".5"
/// @DnDArgument : "yscale" ".5"
/// @DnDArgument : "sprite" "grade_sprite"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(grade_sprite, image_index, x + 70, y + 20, .5, .5, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5BE7B132
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "words"
draw_text_transformed(x + 0, y + 0, string("") + string(words), 2, 2, 0);