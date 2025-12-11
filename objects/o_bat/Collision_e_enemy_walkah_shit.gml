/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5B45B2EB
/// @DnDArgument : "expr" "anim"
var l5B45B2EB_0 = anim;switch(l5B45B2EB_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6D357734
	/// @DnDParent : 5B45B2EB
	/// @DnDArgument : "const" "stance.SHOT"
	case stance.SHOT:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7760819E
		/// @DnDParent : 6D357734
		/// @DnDArgument : "expr" "image_index >= 3 && image_index <= 5"
		if(image_index >= 3 && image_index <= 5){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37114FC4
			/// @DnDParent : 7760819E
			/// @DnDArgument : "var" "ds_list_find_index(collided_with,other.id)"
			/// @DnDArgument : "value" "-1"
			if(ds_list_find_index(collided_with,other.id) == -1){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6D47EC15
				/// @DnDParent : 37114FC4
				/// @DnDArgument : "expr" "other.on_ground"
				/// @DnDArgument : "not" "1"
				if(!(other.on_ground)){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 765083D9
					/// @DnDInput : 3
					/// @DnDParent : 6D47EC15
					/// @DnDArgument : "expr" "lengthdir_x(10*(image_xscale),image_angle)"
					/// @DnDArgument : "expr_1" "lengthdir_y(10*(image_xscale),image_angle)"
					/// @DnDArgument : "expr_2" "-2"
					/// @DnDArgument : "expr_relative_2" "1"
					/// @DnDArgument : "var" "other.hsp"
					/// @DnDArgument : "var_1" "other.vsp"
					/// @DnDArgument : "var_2" "other.y"
					other.hsp = lengthdir_x(10*(image_xscale),image_angle);
					other.vsp = lengthdir_y(10*(image_xscale),image_angle);
					other.y += -2;}}}	break;}