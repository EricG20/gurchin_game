/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7DEFAF34
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_weapon_max_levels"
/// @DnDArgument : "arg" "weapon_id"
function scr_weapon_max_levels(weapon_id) {	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 40FE4670
	/// @DnDParent : 7DEFAF34
	/// @DnDArgument : "expr" "weapon_id"
	var l40FE4670_0 = weapon_id;switch(l40FE4670_0){	/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 34C5EE8C
		/// @DnDParent : 40FE4670
		default:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 05674DF3
			/// @DnDParent : 34C5EE8C
			/// @DnDArgument : "value" "3"
			return 3;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 395659DC
		/// @DnDParent : 40FE4670
		/// @DnDArgument : "const" "o_gon"
		case o_gon:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 19B61373
			/// @DnDParent : 395659DC
			/// @DnDArgument : "value" "5"
			return 5;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3D4AAE58
		/// @DnDParent : 40FE4670
		/// @DnDArgument : "const" "o_gilbert_gun"
		case o_gilbert_gun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 2A64BD2C
			/// @DnDParent : 3D4AAE58
			/// @DnDArgument : "value" "1"
			return 1;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7B159F5D
		/// @DnDParent : 40FE4670
		/// @DnDArgument : "const" "o_deathshower"
		case o_deathshower:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 0F45C12C
			/// @DnDParent : 7B159F5D
			/// @DnDArgument : "value" "2"
			return 2;	break;}}