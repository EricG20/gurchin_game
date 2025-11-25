/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D3049BC
/// @DnDArgument : "var" "active"
/// @DnDArgument : "value" "true"
if(active == true)
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Get_Length
	/// @DnDVersion : 1
	/// @DnDHash : 4CD1D68E
	/// @DnDParent : 0D3049BC
	/// @DnDArgument : "var" "duki1"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "sequenceelmid" "mop"
	var duki1 = layer_sequence_get_length(mop);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Get_Head
	/// @DnDVersion : 1
	/// @DnDHash : 128FAA23
	/// @DnDParent : 0D3049BC
	/// @DnDArgument : "var" "duki2"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "sequenceelmid" "mop"
	var duki2 = layer_sequence_get_headpos(mop);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 066757D9
	/// @DnDParent : 0D3049BC
	/// @DnDArgument : "var" "duki1"
	/// @DnDArgument : "value" "duki2"
	if(duki1 == duki2)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Pause
		/// @DnDVersion : 1
		/// @DnDHash : 7C02A116
		/// @DnDParent : 066757D9
		/// @DnDArgument : "var" "mop"
		layer_sequence_pause(mop);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03003A70
		/// @DnDInput : 3
		/// @DnDParent : 066757D9
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "gm.LEVEL"
		/// @DnDArgument : "var" "cleared"
		/// @DnDArgument : "var_1" "active"
		/// @DnDArgument : "var_2" "o_game.state"
		cleared = true;
		active = false;
		o_game.state = gm.LEVEL;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5B280280
	/// @DnDParent : 0D3049BC
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4ADD8A37
		/// @DnDParent : 5B280280
		/// @DnDArgument : "var" "flagz"
		if(flagz == 0)
		{
			/// @DnDAction : YoYo Games.Sequences.Sequence_Play
			/// @DnDVersion : 1
			/// @DnDHash : 0E0EE576
			/// @DnDParent : 4ADD8A37
			/// @DnDArgument : "var" "mop"
			layer_sequence_play(mop);
		}
	}
}