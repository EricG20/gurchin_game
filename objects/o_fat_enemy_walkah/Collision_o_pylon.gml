/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58ECCB6E
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25C53991
	/// @DnDInput : 3
	/// @DnDParent : 58ECCB6E
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-facing*10"
	/// @DnDArgument : "expr_2" "-10"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "hsp"
	/// @DnDArgument : "var_2" "vsp"
	other.hp += -3;
	hsp = -facing*10;
	vsp = -10;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5D25D512
	/// @DnDParent : 58ECCB6E
	/// @DnDArgument : "expr" "gurchenis_buff"
	if(gurchenis_buff){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F9982D7
		/// @DnDParent : 5D25D512
		/// @DnDArgument : "expr" "-6"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "other.hp"
		other.hp += -6;}}