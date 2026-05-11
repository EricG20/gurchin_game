/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0C097DCB
/// @DnDComment : deciding if it should be behind or infront :D
/// @DnDArgument : "funcName" "scr_weapon_depth"
function scr_weapon_depth() {	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2911FADE
	/// @DnDParent : 0C097DCB
	/// @DnDArgument : "obj" "mygurn"
	var l2911FADE_0 = false;l2911FADE_0 = instance_exists(mygurn);if(l2911FADE_0){	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 60517BA8
		/// @DnDParent : 2911FADE
		/// @DnDArgument : "expr" "mygurn.object_index"
		var l60517BA8_0 = mygurn.object_index;switch(l60517BA8_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 7CF81250
			/// @DnDParent : 60517BA8
			default:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 07BBB062
				/// @DnDParent : 7CF81250
				/// @DnDArgument : "expr" "depth-1"
				/// @DnDArgument : "var" "mygurn.depth"
				mygurn.depth = depth-1;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 764F4318
			/// @DnDParent : 60517BA8
			/// @DnDArgument : "const" "o_joules_arm"
			case o_joules_arm:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3095BFEF
				/// @DnDParent : 764F4318
				/// @DnDArgument : "expr" "depth+1"
				/// @DnDArgument : "var" "mygurn.depth"
				mygurn.depth = depth+1;	break;}}}