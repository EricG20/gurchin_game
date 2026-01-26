/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33D7F19A
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25C53991
	/// @DnDInput : 3
	/// @DnDParent : 33D7F19A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-facing*10"
	/// @DnDArgument : "expr_2" "-10"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "hsp"
	/// @DnDArgument : "var_2" "vsp"
	other.hp += -1;
	hsp = -facing*10;
	vsp = -10;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6BD3D52F
	/// @DnDParent : 33D7F19A
	/// @DnDArgument : "expr" "gurchenis_buff"
	if(gurchenis_buff){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 442D4070
		/// @DnDParent : 6BD3D52F
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "other.hp"
		other.hp += -2;}}