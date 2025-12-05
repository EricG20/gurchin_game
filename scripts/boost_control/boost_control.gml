/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 49DA5EC1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "boost_control"
function boost_control() {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2DFCA81C
	/// @DnDParent : 49DA5EC1
	/// @DnDArgument : "expr" "tick"
	if(tick){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 416686A5
		/// @DnDParent : 2DFCA81C
		/// @DnDArgument : "var" "v_fuel"
		/// @DnDArgument : "op" "2"
		if(v_fuel > 0){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 232F3CC2
			/// @DnDParent : 416686A5
			/// @DnDArgument : "expr" "on_ground"
			/// @DnDArgument : "not" "1"
			if(!(on_ground)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5B49CDD2
				/// @DnDParent : 232F3CC2
				/// @DnDArgument : "expr" "-3*global.game_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "v_fuel"
				v_fuel += -3*global.game_speed;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5CA27592
			/// @DnDParent : 416686A5
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5835BDBD
				/// @DnDParent : 5CA27592
				/// @DnDArgument : "expr" "-2*global.game_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "v_fuel"
				v_fuel += -2*global.game_speed;}}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2045F1D2
	/// @DnDParent : 49DA5EC1
	/// @DnDArgument : "expr" "tick"
	/// @DnDArgument : "not" "1"
	if(!(tick)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 27B75BA0
		/// @DnDParent : 2045F1D2
		/// @DnDArgument : "expr" "on_ground"
		if(on_ground){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 269B593A
			/// @DnDParent : 27B75BA0
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "50*global.booster_bonus"
			if(v_fuel <= 50*global.booster_bonus){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2392FDE3
				/// @DnDParent : 269B593A
				/// @DnDArgument : "expr" ".5*global.game_speed"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "v_fuel"
				v_fuel += .5*global.game_speed;}}}}