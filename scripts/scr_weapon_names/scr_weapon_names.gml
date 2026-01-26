/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 60737C9C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_weapon_names"
/// @DnDArgument : "arg" "wep_index"
function scr_weapon_names(wep_index) {	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 146EBC5E
	/// @DnDParent : 60737C9C
	/// @DnDArgument : "expr" "wep_index"
	var l146EBC5E_0 = wep_index;switch(l146EBC5E_0){	/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 477F9A6F
		/// @DnDParent : 146EBC5E
		default:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 349E78FA
			/// @DnDParent : 477F9A6F
			/// @DnDArgument : "value" ""Weapon""
			return "Weapon";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 50BE62F1
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_bubbler"
		case o_bubbler:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 52F72846
			/// @DnDParent : 50BE62F1
			/// @DnDArgument : "value" ""GaBubbler""
			return "GaBubbler";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7A828722
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_bat"
		case o_bat:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 19DBF89D
			/// @DnDParent : 7A828722
			/// @DnDArgument : "value" ""Bat""
			return "Bat";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 04FCA495
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_machgun"
		case o_machgun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 7EAA2366
			/// @DnDParent : 04FCA495
			/// @DnDArgument : "value" ""GAR-14""
			return "GAR-14";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 197134D8
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_gon"
		case o_gon:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 7A524892
			/// @DnDParent : 197134D8
			/// @DnDArgument : "value" ""ZHG-5""
			return "ZHG-5";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 01690947
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_deathshower"
		case o_deathshower:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 00B59B46
			/// @DnDParent : 01690947
			/// @DnDArgument : "value" ""Death Shower""
			return "Death Shower";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 031F5EDC
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_shottgun"
		case o_shottgun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 0426FFC6
			/// @DnDParent : 031F5EDC
			/// @DnDArgument : "value" ""Shotty""
			return "Shotty";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 47C2CD0E
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_gilbert_gun"
		case o_gilbert_gun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 65C7FCF8
			/// @DnDParent : 47C2CD0E
			/// @DnDArgument : "value" ""Gilbert""
			return "Gilbert";	break;}}