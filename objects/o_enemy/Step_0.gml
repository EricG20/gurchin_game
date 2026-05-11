/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03C5086A
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "es.KNOCKBACK"
if(state == es.KNOCKBACK){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A007973
	/// @DnDParent : 03C5086A
	/// @DnDArgument : "var" "stun_timer"
	/// @DnDArgument : "op" "2"
	if(stun_timer > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C6ABBE8
		/// @DnDInput : 3
		/// @DnDParent : 0A007973
		/// @DnDArgument : "expr_2" "-global.game_speed"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "hsp"
		/// @DnDArgument : "var_1" "vsp"
		/// @DnDArgument : "var_2" "stun_timer"
		hsp = 0;
		vsp = 0;
		stun_timer += -global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A0F6AA0
		/// @DnDParent : 0A007973
		/// @DnDArgument : "var" "stun_timer"
		/// @DnDArgument : "op" "3"
		if(stun_timer <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C7D7041
			/// @DnDInput : 3
			/// @DnDParent : 1A0F6AA0
			/// @DnDArgument : "expr" "knockback_hsp"
			/// @DnDArgument : "expr_1" "knockback_vsp"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "vsp"
			/// @DnDArgument : "var_2" "on_ground"
			hsp = knockback_hsp;
			vsp = knockback_vsp;
			on_ground = false;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3DC58044
	/// @DnDParent : 03C5086A
	else{	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 25913650
		/// @DnDParent : 3DC58044
		/// @DnDArgument : "expr" "(on_ground && abs(hsp) < 0.02)"
		if((on_ground && abs(hsp) < 0.02)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57FC1AE2
			/// @DnDParent : 25913650
			/// @DnDArgument : "expr" "es.IDLE"
			/// @DnDArgument : "var" "state"
			state = es.IDLE;}}}