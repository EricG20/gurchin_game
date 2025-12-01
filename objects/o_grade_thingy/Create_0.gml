/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1DBB2FB3
/// @DnDArgument : "expr" "instance_number(object_index)"
var l1DBB2FB3_0 = instance_number(object_index);switch(l1DBB2FB3_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 42E3C8E1
	/// @DnDParent : 1DBB2FB3
	/// @DnDArgument : "const" "2"
	case 2:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E0B2DA5
		/// @DnDInput : 2
		/// @DnDParent : 42E3C8E1
		/// @DnDArgument : "expr" ""pylon_health""
		/// @DnDArgument : "expr_1" "-66"
		/// @DnDArgument : "var" "data_mode"
		/// @DnDArgument : "var_1" "increment"
		data_mode = "pylon_health";
		increment = -66;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5058F8FF
	/// @DnDParent : 1DBB2FB3
	/// @DnDArgument : "const" "3"
	case 3:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E65AD3B
		/// @DnDInput : 2
		/// @DnDParent : 5058F8FF
		/// @DnDArgument : "expr" ""max_combo""
		/// @DnDArgument : "expr_1" "-33"
		/// @DnDArgument : "var" "data_mode"
		/// @DnDArgument : "var_1" "increment"
		data_mode = "max_combo";
		increment = -33;	break;}