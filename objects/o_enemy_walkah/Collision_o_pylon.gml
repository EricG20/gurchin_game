/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33D7F19A
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4AEE45D4
	/// @DnDParent : 33D7F19A
	/// @DnDArgument : "expr" "state == es.KNOCKBACK"
	/// @DnDArgument : "not" "1"
	if(!(state == es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25C53991
		/// @DnDInput : 4
		/// @DnDParent : 4AEE45D4
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-facing*10"
		/// @DnDArgument : "expr_2" "-10"
		/// @DnDArgument : "expr_3" "es.KNOCKBACK"
		/// @DnDArgument : "var" "other.hp"
		/// @DnDArgument : "var_1" "hsp"
		/// @DnDArgument : "var_2" "vsp"
		/// @DnDArgument : "var_3" "state"
		other.hp += -1;
		hsp = -facing*10;
		vsp = -10;
		state = es.KNOCKBACK;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6BD3D52F
		/// @DnDParent : 4AEE45D4
		/// @DnDArgument : "expr" "gurchenis_buff"
		if(gurchenis_buff){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 442D4070
			/// @DnDParent : 6BD3D52F
			/// @DnDArgument : "expr" "-2"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "other.hp"
			other.hp += -2;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0CAA2631
	/// @DnDParent : 33D7F19A
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 001182BB
		/// @DnDParent : 0CAA2631
		/// @DnDArgument : "expr" "-facing*10"
		/// @DnDArgument : "var" "hsp"
		hsp = -facing*10;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A2896DF
		/// @DnDParent : 0CAA2631
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "var" "vsp"
		vsp = -10;}}