/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5EEFA012
/// @DnDArgument : "expr" "clamp(slider_value,0,100)"
/// @DnDArgument : "var" "slider_value"
slider_value = clamp(slider_value,0,100);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2F25081A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_cursor"
/// @DnDSaveInfo : "object" "o_cursor"
var l2F25081A_0 = instance_place(x + 0, y + 0, [o_cursor]);if ((l2F25081A_0 > 0)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 23A4F625
	/// @DnDParent : 2F25081A
	var l23A4F625_0;l23A4F625_0 = mouse_check_button(mb_left);if (l23A4F625_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 359C00C4
		/// @DnDParent : 23A4F625
		/// @DnDArgument : "expr" "clamp(mouse_y+30,initial_y, initial_y+500)"
		/// @DnDArgument : "var" "y"
		y = clamp(mouse_y+30,initial_y, initial_y+500);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 263180AB
		/// @DnDParent : 23A4F625
		/// @DnDArgument : "expr" "((initial_y-y)+500)/5"
		/// @DnDArgument : "var" "slider_value"
		slider_value = ((initial_y-y)+500)/5;}}