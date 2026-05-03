/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 60737C9C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_weapon_descs"
/// @DnDArgument : "arg" "wep_index"
function scr_weapon_descs(wep_index) {	/// @DnDAction : YoYo Games.Switch.Switch
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
			/// @DnDArgument : "value" ""This weapon doesn't have a description yet, unfortunately.""
			return "This weapon doesn't have a description yet, unfortunately.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 12C9DB93
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_goozi"
		case o_goozi:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 189C2D98
			/// @DnDParent : 12C9DB93
			/// @DnDArgument : "value" ""A standard issue submachine gun usually given to Zorbulans that charge head first into combat situations. The high fire rate allows for the elimination of many targets, however the recoil is barely controllable. This gun allowed Zorbulons to quickly test the Load Variable Limit (LVL) system, speeding up R&D for more…ambitious weapons. Each level increases mag size and bullet pierce count.""
			return "A standard issue submachine gun usually given to Zorbulans that charge head first into combat situations. The high fire rate allows for the elimination of many targets, however the recoil is barely controllable. This gun allowed Zorbulons to quickly test the Load Variable Limit (LVL) system, speeding up R&D for more…ambitious weapons. Each level increases mag size and bullet pierce count.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 197134D8
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_gon"
		case o_gon:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 7A524892
			/// @DnDParent : 197134D8
			/// @DnDArgument : "value" ""The ZHG-5 is a simple yet effective handgun. With its light weight and low spread, it is a good weapon for a multitude of situations. It was the first gun to have Gurchin’s patented Load Variable Limit (LVL) system tested and implemented into the Zorbulon Weapons Engineering process. As such, Gurchin has become somewhat attached to the weapon. Each level increases the number of bullets fired.""
			return "The ZHG-5 is a simple yet effective handgun. With its light weight and low spread, it is a good weapon for a multitude of situations. It was the first gun to have Gurchin’s patented Load Variable Limit (LVL) system tested and implemented into the Zorbulon Weapons Engineering process. As such, Gurchin has become somewhat attached to the weapon. Each level increases the number of bullets fired.";	break;}}