/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30BB8AB0
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 056A54B3
	/// @DnDParent : 30BB8AB0
	/// @DnDArgument : "expr" "state == es.KNOCKBACK"
	/// @DnDArgument : "not" "1"
	if(!(state == es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79059B4D
		/// @DnDInput : 4
		/// @DnDParent : 056A54B3
		/// @DnDArgument : "expr" "-3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-facing*10"
		/// @DnDArgument : "expr_2" "-10"
		/// @DnDArgument : "expr_3" "es.KNOCKBACK"
		/// @DnDArgument : "var" "other.hp"
		/// @DnDArgument : "var_1" "hsp"
		/// @DnDArgument : "var_2" "vsp"
		/// @DnDArgument : "var_3" "state"
		other.hp += -3;
		hsp = -facing*10;
		vsp = -10;
		state = es.KNOCKBACK;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 30D336EE
		/// @DnDParent : 056A54B3
		/// @DnDArgument : "expr" "gurchenis_buff"
		if(gurchenis_buff){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24782610
			/// @DnDParent : 30D336EE
			/// @DnDArgument : "expr" "-6"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "other.hp"
			other.hp += -6;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0C333963
	/// @DnDParent : 30BB8AB0
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 561D66A2
		/// @DnDParent : 0C333963
		/// @DnDArgument : "expr" "-facing*10"
		/// @DnDArgument : "var" "hsp"
		hsp = -facing*10;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F7F3583
		/// @DnDParent : 0C333963
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "var" "vsp"
		vsp = -10;}}