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
			return "The ZHG-5 is a simple yet effective handgun. With its light weight and low spread, it is a good weapon for a multitude of situations. It was the first gun to have Gurchin’s patented Load Variable Limit (LVL) system tested and implemented into the Zorbulon Weapons Engineering process. As such, Gurchin has become somewhat attached to the weapon. Each level increases the number of bullets fired.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7293F7AC
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_machgun"
		case o_machgun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 0051D692
			/// @DnDParent : 7293F7AC
			/// @DnDArgument : "value" ""The GAR-14 is the main infantry weapon for the Zorbulan empire. Engineered to be as simple as possible to use, it boasts effective fire rate, damage, and accuracy, which makes it the common favorite amongst the force. However, some zorbulans still struggle to use the weapon due to aiming being required. To fix this, the Load Variable Limit (LVL) system allows some of the bullets to find an enemy for you, increasing every level.""
			return "The GAR-14 is the main infantry weapon for the Zorbulan empire. Engineered to be as simple as possible to use, it boasts effective fire rate, damage, and accuracy, which makes it the common favorite amongst the force. However, some zorbulans still struggle to use the weapon due to aiming being required. To fix this, the Load Variable Limit (LVL) system allows some of the bullets to find an enemy for you, increasing every level.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 60D3CA42
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_bubbler"
		case o_bubbler:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 636D5C7A
			/// @DnDParent : 60D3CA42
			/// @DnDArgument : "value" ""Originally designed to be a children’s toy, the GaBubbler, invented by Professor Gyub, is a compact bubble firing device capable of producing several dozen acidic bubbles in a matter of seconds. However, soon Zorbulon Prime would discover that the Professor was a sick man. Hidden from any of his colleagues, he designed a solution that allowed each bubble to distinguish and fly toward its target. This led to an unfathomable amount of families suffering soap induced eye damage, disgracing Professor Gyub from all of Zorbulan society. No one is quite where the Professor is nowadays, though a popular theory is that he is in custody, utilizing his genius for Zorbulan warfare.""
			return "Originally designed to be a children’s toy, the GaBubbler, invented by Professor Gyub, is a compact bubble firing device capable of producing several dozen acidic bubbles in a matter of seconds. However, soon Zorbulon Prime would discover that the Professor was a sick man. Hidden from any of his colleagues, he designed a solution that allowed each bubble to distinguish and fly toward its target. This led to an unfathomable amount of families suffering soap induced eye damage, disgracing Professor Gyub from all of Zorbulan society. No one is quite where the Professor is nowadays, though a popular theory is that he is in custody, utilizing his genius for Zorbulan warfare.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3114C29C
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_gilbert_gun"
		case o_gilbert_gun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 6F69362B
			/// @DnDParent : 3114C29C
			/// @DnDArgument : "value" ""Gilbert is a strange looking Zorbulan capable of firing a stream of concussive blast from his persons. Several details stand out, such as his small limb size, abnormally shaped large eyes, and his possession of the rare earless gene. Despite his appearance, records suggest Gilbert is likely in his 40s. Scientists find his existence perplexing, theorizing that it may be the product of radiation, though Gilbert doesn’t appear to be radioactive. Luckily, he does not seem opposed to helping out with the defense unit, so long as he is being carried around.""
			return "Gilbert is a strange looking Zorbulan capable of firing a stream of concussive blast from his persons. Several details stand out, such as his small limb size, abnormally shaped large eyes, and his possession of the rare earless gene. Despite his appearance, records suggest Gilbert is likely in his 40s. Scientists find his existence perplexing, theorizing that it may be the product of radiation, though Gilbert doesn’t appear to be radioactive. Luckily, he does not seem opposed to helping out with the defense unit, so long as he is being carried around.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3BC2AFA5
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_bat"
		case o_bat:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 79B95DF5
			/// @DnDParent : 3BC2AFA5
			/// @DnDArgument : "value" ""The bat is a fast swinging Melee weapon that can be charged up to hit enemies harder and from farther range. It was modeled after an earth object of the same name, with the head of the weapons engineering wing, Dr. Zebglivog, finding it rather amusing. Each level increases the size and damage of the bat.""
			return "The bat is a fast swinging Melee weapon that can be charged up to hit enemies harder and from farther range. It was modeled after an earth object of the same name, with the head of the weapons engineering wing, Dr. Zebglivog, finding it rather amusing. Each level increases the size and damage of the bat.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 252BA3B9
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_xoopington"
		case o_xoopington:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 03F47868
			/// @DnDParent : 252BA3B9
			/// @DnDArgument : "value" ""The X00-P1NG-T0N is one of the most technologically advanced weapons in the Zorbulan army, utilizing small laser plasma accelerators to fire a beam that instantly unravels the very unfortunate recipient. Due to its high cost of production, this weapon is only given to the most trusted Zorbulans who have shown efficiency in using the weapons Optimal Reload Batteries (ORB) which cut the time of reloading in half and supercharges the weapon itself to hold more full blast charges. The LVL system increases reload speed and amount of charges gained in the main chamber when activating ORB functionality.""
			return "The X00-P1NG-T0N is one of the most technologically advanced weapons in the Zorbulan army, utilizing small laser plasma accelerators to fire a beam that instantly unravels the very unfortunate recipient. Due to its high cost of production, this weapon is only given to the most trusted Zorbulans who have shown efficiency in using the weapons Optimal Reload Batteries (ORB) which cut the time of reloading in half and supercharges the weapon itself to hold more full blast charges. The LVL system increases reload speed and amount of charges gained in the main chamber when activating ORB functionality.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 497A58F8
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_shottgun"
		case o_shottgun:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 4D75FCB7
			/// @DnDParent : 497A58F8
			/// @DnDArgument : "value" ""The Storm Shotty is a weapon designed with assistance from the Cylons of Gaia. On top of being a shotgun, it holds a chamber wired to Gaian lightning gems with spell inscribed circuits, which allow it to fire a bolt of lightning, attracted to enemy life signals. Though because Gaian spells require high energy throughput when done without tomes or natural inclination, LVL 3 is required to channel this power.""
			return "The Storm Shotty is a weapon designed with assistance from the Cylons of Gaia. On top of being a shotgun, it holds a chamber wired to Gaian lightning gems with spell inscribed circuits, which allow it to fire a bolt of lightning, attracted to enemy life signals. Though because Gaian spells require high energy throughput when done without tomes or natural inclination, LVL 3 is required to channel this power.";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 28F2F98F
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_deathshower"
		case o_deathshower:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 6219D12B
			/// @DnDParent : 28F2F98F
			/// @DnDArgument : "value" ""Behold my liege, the ender of lives, the vanquisher of foes, the instrument of torment! The dastardly green fiends were foolish to storm our research vessel, as your son tore them apart. We pried their machines from their carcasses, and with their ammo refill mechanisms reversed engineered, our scientists have been developing an extremely powerful Dokdok. It is exceedingly heavy, but for someone like your son, it will be perfect. We will provide him with a prototype, and once we return to home base with the schematics, we intend to proceed with mass production. It would be wise to task the slaves with mining more Jurzok. Soon their planet will be coated in a fine, blue mist… (Transcribed from Vurmin Text)""
			return "Behold my liege, the ender of lives, the vanquisher of foes, the instrument of torment! The dastardly green fiends were foolish to storm our research vessel, as your son tore them apart. We pried their machines from their carcasses, and with their ammo refill mechanisms reversed engineered, our scientists have been developing an extremely powerful Dokdok. It is exceedingly heavy, but for someone like your son, it will be perfect. We will provide him with a prototype, and once we return to home base with the schematics, we intend to proceed with mass production. It would be wise to task the slaves with mining more Jurzok. Soon their planet will be coated in a fine, blue mist… (Transcribed from Vurmin Text)";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7ED66790
		/// @DnDParent : 146EBC5E
		/// @DnDArgument : "const" "o_joules_arm"
		case o_joules_arm:	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 0D98EF7A
			/// @DnDParent : 7ED66790
			/// @DnDArgument : "value" ""A ZA Arm Cannon is installed with every Zorbulan Android Unit, and is highly capable of growth should it receive the proper resources. Uncharged, it releases a short plasma pellet for smaller foes, while charged will shoot larger blasts capable of piercing at higher levels.  Standard weapons will be converted into additional LVLs.""
			return "A ZA Arm Cannon is installed with every Zorbulan Android Unit, and is highly capable of growth should it receive the proper resources. Uncharged, it releases a short plasma pellet for smaller foes, while charged will shoot larger blasts capable of piercing at higher levels.  Standard weapons will be converted into additional LVLs.";	break;}}