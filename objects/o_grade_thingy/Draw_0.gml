/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2FA73494
/// @DnDArgument : "x" "-string_length(data_mode)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-120"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "data_mode"
draw_text_transformed(x + -string_length(data_mode), y + -120, string("") + string(data_mode), 1.5, 1.5, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3CC012A6
/// @DnDArgument : "x" "bbox_left-string_length(display_value)*2-150"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "display_value"
draw_text_transformed(bbox_left-string_length(display_value)*2-150, y + 0, string("") + string(display_value), 2, 2, 0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5A7C2E9F
/// @DnDArgument : "expr" "am_I_done"
if(am_I_done){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 2D19391E
	/// @DnDParent : 5A7C2E9F
	/// @DnDArgument : "expr" "grade"
	var l2D19391E_0 = grade;switch(l2D19391E_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5F7429AA
		/// @DnDParent : 2D19391E
		/// @DnDArgument : "const" "gr.S"
		case gr.S:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 5123171B
			/// @DnDParent : 5F7429AA
			/// @DnDArgument : "value" "s_gradeS"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_gradeS;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 096AB952
			/// @DnDParent : 5F7429AA
			/// @DnDArgument : "var" "floor(increment)%11"
			if(floor(increment)%11 == 0){	/// @DnDAction : YoYo Games.Particles.Effect
				/// @DnDVersion : 1
				/// @DnDHash : 0454585F
				/// @DnDParent : 096AB952
				/// @DnDArgument : "x" "random_range(-50,50)*2"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "random_range(-50,50)*2"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "type" "6"
				/// @DnDArgument : "where" "1"
				/// @DnDArgument : "color" "$FF00FFFF"
				effect_create_above(6, x + random_range(-50,50)*2, y + random_range(-50,50)*2, 0, $FF00FFFF & $ffffff);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 168285C2
				/// @DnDParent : 096AB952
				/// @DnDArgument : "expr" "201"
				/// @DnDArgument : "var" "increment"
				increment = 201;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7895B58B
		/// @DnDParent : 2D19391E
		/// @DnDArgument : "const" "gr.A"
		case gr.A:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 01A720C5
			/// @DnDParent : 7895B58B
			/// @DnDArgument : "value" "s_gradeA"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_gradeA;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 19BC3A34
		/// @DnDParent : 2D19391E
		/// @DnDArgument : "const" "gr.B"
		case gr.B:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 53245F52
			/// @DnDParent : 19BC3A34
			/// @DnDArgument : "value" "s_gradeB"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_gradeB;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 13B7AFE9
		/// @DnDParent : 2D19391E
		/// @DnDArgument : "const" "gr.C"
		case gr.C:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 1BCDF7E1
			/// @DnDParent : 13B7AFE9
			/// @DnDArgument : "value" "s_gradeC"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_gradeC;	break;}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 30604A21
	/// @DnDParent : 5A7C2E9F
	/// @DnDArgument : "x" "-100"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "sprite_index"
	draw_sprite_ext(sprite_index, 0, x + -100, y + -100, 1, 1, 0, $FFFFFF & $ffffff, 1);}