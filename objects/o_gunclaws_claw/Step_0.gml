/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17891362
/// @DnDInput : 2
/// @DnDArgument : "expr" "o_B_gunclaw.x+(animcurve_channel_evaluate(corve,mov)*420)*o_B_gunclaw.facing"
/// @DnDArgument : "expr_1" "o_B_gunclaw.y-30"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = o_B_gunclaw.x+(animcurve_channel_evaluate(corve,mov)*420)*o_B_gunclaw.facing;
y = o_B_gunclaw.y-30;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 40BC8FB1
/// @DnDArgument : "expr" "state"
var l40BC8FB1_0 = state;
switch(l40BC8FB1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4CD6F080
	/// @DnDParent : 40BC8FB1
	/// @DnDArgument : "const" "claw.IDLE"
	case claw.IDLE:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2DF7855C
		/// @DnDParent : 4CD6F080
		/// @DnDArgument : "speed" ".3"
		image_speed = .3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5208421F
	/// @DnDParent : 40BC8FB1
	/// @DnDArgument : "const" "claw.ATTACK"
	case claw.ATTACK:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 702A1CD6
		/// @DnDParent : 5208421F
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E054F6E
		/// @DnDParent : 5208421F
		/// @DnDArgument : "expr" ".007"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "mov"
		mov += .007;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 797DCB03
		/// @DnDParent : 5208421F
		/// @DnDArgument : "var" "mov mod .021"
		if(mov mod .021 == 0)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1FAE6CE9
			/// @DnDParent : 797DCB03
			/// @DnDArgument : "script" "scr_afterimage"
			/// @DnDSaveInfo : "script" "scr_afterimage"
			script_execute(scr_afterimage);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43F4D41D
		/// @DnDParent : 5208421F
		/// @DnDArgument : "var" "mov"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(mov >= 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 140EB829
			/// @DnDInput : 2
			/// @DnDParent : 43F4D41D
			/// @DnDArgument : "expr" "claw.IDLE"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "mov"
			state = claw.IDLE;
			mov = 0;
		}
		break;
}