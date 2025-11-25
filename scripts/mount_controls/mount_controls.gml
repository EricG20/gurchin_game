/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2DEBF004
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "mount_controls"
function mount_controls() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 61EC5857
	/// @DnDParent : 2DEBF004
	/// @DnDArgument : "expr" "left"
	if(left)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42C1481D
		/// @DnDParent : 61EC5857
		/// @DnDArgument : "expr" "-accel"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hsp"
		hsp += -accel;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 71E113ED
	/// @DnDParent : 2DEBF004
	/// @DnDArgument : "expr" "right"
	if(right)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F0B947B
		/// @DnDParent : 71E113ED
		/// @DnDArgument : "expr" "accel"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hsp"
		hsp += accel;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 24CA898F
	/// @DnDParent : 2DEBF004
	/// @DnDArgument : "expr" "jump"
	if(jump)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3FB69F39
		/// @DnDParent : 24CA898F
		/// @DnDArgument : "expr" "on_ground"
		if(on_ground)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3130B778
			/// @DnDParent : 3FB69F39
			/// @DnDArgument : "expr" "jumpheight"
			/// @DnDArgument : "var" "vsp"
			vsp = jumpheight;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17221429
	/// @DnDParent : 2DEBF004
	/// @DnDArgument : "expr" "clamp(hsp,-flspeed,flspeed)"
	/// @DnDArgument : "var" "hsp"
	hsp = clamp(hsp,-flspeed,flspeed);
}