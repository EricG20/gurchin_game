/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 372989D7
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_ground"
function check_ground() {	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 1D4365C7
	/// @DnDParent : 372989D7
	/// @DnDArgument : "expr" "object_index"
	var l1D4365C7_0 = object_index;switch(l1D4365C7_0){	/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 120FA095
		/// @DnDParent : 1D4365C7
		default:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5695F8B8
			/// @DnDParent : 120FA095
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "on_ground"
			on_ground = false;
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 37BD7261
			/// @DnDParent : 120FA095
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDSaveInfo : "object" "o_solid"
			var l37BD7261_0 = instance_place(x + 0, y + 1, [o_solid]);if ((l37BD7261_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 153E271F
				/// @DnDParent : 37BD7261
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "on_ground"
				on_ground = true;}
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 6D58B33A
			/// @DnDParent : 120FA095
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "duke"
			/// @DnDArgument : "object" "o_onewayplats"
			/// @DnDSaveInfo : "object" "o_onewayplats"
			var l6D58B33A_0 = instance_place(x + 0, y + 1, [o_onewayplats]);
			duke = l6D58B33A_0;if ((l6D58B33A_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A0A4DD1
				/// @DnDParent : 6D58B33A
				/// @DnDArgument : "var" "bbox_bottom"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "duke.bbox_top+1"
				if(bbox_bottom < duke.bbox_top+1){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 68E423F6
					/// @DnDParent : 2A0A4DD1
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "on_ground"
					on_ground = true;}}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1F69F79D
		/// @DnDParent : 1D4365C7
		/// @DnDArgument : "const" "o_boss_bigwalker"
		case o_boss_bigwalker:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24C8A3AC
			/// @DnDParent : 1F69F79D
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "on_ground"
			on_ground = false;
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 62801EB3
			/// @DnDParent : 1F69F79D
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "global.grav"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDSaveInfo : "object" "o_solid"
			var l62801EB3_0 = instance_place(x + 0, y + global.grav, [o_solid]);if ((l62801EB3_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3F3C3C2F
				/// @DnDParent : 62801EB3
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "on_ground"
				on_ground = true;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 623BBFBF
		/// @DnDParent : 1D4365C7
		/// @DnDArgument : "const" "o_boss_gurchenis"
		case o_boss_gurchenis:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57701871
			/// @DnDParent : 623BBFBF
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "on_ground"
			on_ground = false;
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 79DCAA7D
			/// @DnDParent : 623BBFBF
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDSaveInfo : "object" "o_solid"
			var l79DCAA7D_0 = instance_place(x + 0, y + 1, [o_solid]);if ((l79DCAA7D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5855B993
				/// @DnDParent : 79DCAA7D
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "on_ground"
				on_ground = true;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3007FF31
			/// @DnDParent : 623BBFBF
			/// @DnDArgument : "var" "destination_y-5"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "y"
			if(destination_y-5 <= y){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 2245A711
				/// @DnDParent : 3007FF31
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "target" "duke"
				/// @DnDArgument : "object" "o_onewayplats"
				/// @DnDSaveInfo : "object" "o_onewayplats"
				var l2245A711_0 = instance_place(x + 0, y + 1, [o_onewayplats]);
				duke = l2245A711_0;if ((l2245A711_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 61CC793C
					/// @DnDParent : 2245A711
					/// @DnDArgument : "var" "bbox_bottom"
					/// @DnDArgument : "op" "1"
					/// @DnDArgument : "value" "duke.bbox_top+1"
					if(bbox_bottom < duke.bbox_top+1){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1737515D
						/// @DnDParent : 61CC793C
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "on_ground"
						on_ground = true;}}}	break;}}