/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 163F5E3F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "scr_approach"
/// @DnDArgument : "arg" "start"
/// @DnDArgument : "arg_1" "target"
/// @DnDArgument : "arg_2" "shift"
function scr_approach(start, target, shift) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 06E1808E
	/// @DnDParent : 163F5E3F
	/// @DnDArgument : "code" "if (start < target) {$(13_10)        return min(start+shift, target);$(13_10)    } else {$(13_10)        return max(start-shift, target);$(13_10)    }$(13_10)"
	if (start < target) {
	        return min(start+shift, target);
	    } else {
	        return max(start-shift, target);
	    }
}