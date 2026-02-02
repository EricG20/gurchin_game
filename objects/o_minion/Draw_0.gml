/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 45039862
draw_self();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 27A38D3B
/// @DnDArgument : "expr" "state"
var l27A38D3B_0 = state;switch(l27A38D3B_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6D5D8BD3
	/// @DnDParent : 27A38D3B
	/// @DnDArgument : "const" "TURRET.RELOAD"
	case TURRET.RELOAD:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3B507422
		/// @DnDInput : 11
		/// @DnDParent : 6D5D8BD3
		/// @DnDArgument : "script" "draw_wheel_ext"
		/// @DnDArgument : "arg" "x"
		/// @DnDArgument : "arg_1" "y-50"
		/// @DnDArgument : "arg_2" "40"
		/// @DnDArgument : "arg_3" "20"
		/// @DnDArgument : "arg_4" "c_white"
		/// @DnDArgument : "arg_5" "cooldown"
		/// @DnDArgument : "arg_6" "320/global.reload_bonus"
		/// @DnDArgument : "arg_7" "1"
		/// @DnDArgument : "arg_8" "90"
		/// @DnDArgument : "arg_9" "false"
		/// @DnDArgument : "arg_10" "1"
		/// @DnDSaveInfo : "script" "draw_wheel_ext"
		script_execute(draw_wheel_ext, x, y-50, 40, 20, c_white, cooldown, 320/global.reload_bonus, 1, 90, false, 1);	break;}