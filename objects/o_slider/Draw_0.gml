/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 40336460
/// @DnDArgument : "x1" "x-10"
/// @DnDArgument : "y1" "bbox_top"
/// @DnDArgument : "x2" "x+10"
/// @DnDArgument : "y2" "bbox_bottom"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "slider_value"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
draw_healthbar(x-10, bbox_top, x+10, bbox_bottom, slider_value, $FF000000 & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 3, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3199D57A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_bottom-(slider_value/100)*(point_distance(0,bbox_top,0,bbox_bottom)) - 30"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, bbox_bottom-(slider_value/100)*(point_distance(0,bbox_top,0,bbox_bottom)) - 30, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5687FB6D
/// @DnDArgument : "font" "fontTbyDefault"
/// @DnDSaveInfo : "font" "fontTbyDefault"
draw_set_font(fontTbyDefault);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 590F66BF
/// @DnDArgument : "x" "-point_distance(bbox_left,0,bbox_right,0)/2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_top-40"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "data_mode"
draw_text_transformed(x + -point_distance(bbox_left,0,bbox_right,0)/2, bbox_top-40, string("") + string(data_mode), 1, 1, 0);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5B66A318
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_cursor"
/// @DnDSaveInfo : "object" "o_cursor"
var l5B66A318_0 = instance_place(x + 0, y + 0, [o_cursor]);if ((l5B66A318_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 055954F5
	/// @DnDParent : 5B66A318
	/// @DnDArgument : "var" "data_mode"
	/// @DnDArgument : "value" ""aim_pan""
	if(data_mode == "aim_pan"){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6A428CAB
		/// @DnDParent : 055954F5
		/// @DnDArgument : "script" "msg_static"
		/// @DnDArgument : "arg" ""How much the camera will pan with the mouse with respect to your character. Turn down or off if you get motion sick easily.""
		/// @DnDSaveInfo : "script" "msg_static"
		script_execute(msg_static, "How much the camera will pan with the mouse with respect to your character. Turn down or off if you get motion sick easily.");}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F8E9104
	/// @DnDParent : 5B66A318
	/// @DnDArgument : "var" "data_mode"
	/// @DnDArgument : "value" ""music""
	if(data_mode == "music"){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A462BD1
		/// @DnDParent : 5F8E9104
		/// @DnDArgument : "var" "slider_value"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "1"
		if(slider_value < 1){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7E982080
			/// @DnDParent : 1A462BD1
			/// @DnDArgument : "script" "msg_static"
			/// @DnDArgument : "arg" "": [""
			/// @DnDSaveInfo : "script" "msg_static"
			script_execute(msg_static, ": [");}}}