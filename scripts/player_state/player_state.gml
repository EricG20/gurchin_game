/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 059E4A4A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "player_state"
function player_state() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3A231C39
	/// @DnDParent : 059E4A4A
	/// @DnDArgument : "expr" "on_ground"
	if(on_ground)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 228ABBC1
		/// @DnDParent : 3A231C39
		/// @DnDArgument : "var" "abs(hsp)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "abs(.5)"
		if(abs(hsp) > abs(.5))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 41545764
			/// @DnDParent : 228ABBC1
			/// @DnDArgument : "expr" "ps.WALK"
			/// @DnDArgument : "var" "state"
			state = ps.WALK;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1057B8BD
		/// @DnDParent : 3A231C39
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73992570
			/// @DnDParent : 1057B8BD
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "var" "state"
			state = ps.IDLE;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2A9CF397
	/// @DnDParent : 059E4A4A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DFB757A
		/// @DnDParent : 2A9CF397
		/// @DnDArgument : "expr" "ps.AIR"
		/// @DnDArgument : "var" "state"
		state = ps.AIR;
	}
}