/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 095C4B37
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_cursor"
/// @DnDSaveInfo : "object" "o_cursor"
var l095C4B37_0 = instance_place(x + 0, y + 0, [o_cursor]);if ((l095C4B37_0 > 0)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 24B96C71
	/// @DnDParent : 095C4B37
	var l24B96C71_0;l24B96C71_0 = mouse_check_button_pressed(mb_left);if (l24B96C71_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7EA61672
		/// @DnDParent : 24B96C71
		/// @DnDArgument : "var" "data_set"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "-1"
		if(data_set > -1){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 40151906
			/// @DnDApplyTo : {o_buttons}
			/// @DnDParent : 7EA61672
			with(o_buttons) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1D315A3E
				/// @DnDParent : 40151906
				/// @DnDArgument : "var" "data_set"
				/// @DnDArgument : "value" "other.data_set"
				if(data_set == other.data_set){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 46A662F1
					/// @DnDParent : 1D315A3E
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "is_clicked"
					is_clicked = false;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 0BC17E47
					/// @DnDInput : 2
					/// @DnDParent : 1D315A3E
					/// @DnDArgument : "script" "scr_save_settings"
					/// @DnDArgument : "arg" "key"
					/// @DnDArgument : "arg_1" "is_clicked"
					/// @DnDSaveInfo : "script" "scr_save_settings"
					script_execute(scr_save_settings, key, is_clicked);}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 51C16676
			/// @DnDParent : 7EA61672
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_clicked"
			is_clicked = true;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 24372D71
			/// @DnDInput : 2
			/// @DnDParent : 7EA61672
			/// @DnDArgument : "script" "scr_save_settings"
			/// @DnDArgument : "arg" "key"
			/// @DnDArgument : "arg_1" "is_clicked"
			/// @DnDSaveInfo : "script" "scr_save_settings"
			script_execute(scr_save_settings, key, is_clicked);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 47A8267B
		/// @DnDParent : 24B96C71
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01384D17
			/// @DnDParent : 47A8267B
			/// @DnDArgument : "expr" "!is_clicked"
			/// @DnDArgument : "var" "is_clicked"
			is_clicked = !is_clicked;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 191020FF
			/// @DnDInput : 2
			/// @DnDParent : 47A8267B
			/// @DnDArgument : "script" "scr_save_settings"
			/// @DnDArgument : "arg" "key"
			/// @DnDArgument : "arg_1" "is_clicked"
			/// @DnDSaveInfo : "script" "scr_save_settings"
			script_execute(scr_save_settings, key, is_clicked);}}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1846ADBE
/// @DnDArgument : "expr" "is_clicked"
if(is_clicked){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 53DDFB07
	/// @DnDParent : 1846ADBE
	/// @DnDArgument : "expr" "data_mode"
	var l53DDFB07_0 = data_mode;switch(l53DDFB07_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 597BE95B
		/// @DnDParent : 53DDFB07
		/// @DnDArgument : "const" ""30_fps""
		case "30_fps":	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 3F5C6EED
			/// @DnDInput : 2
			/// @DnDParent : 597BE95B
			/// @DnDArgument : "function" "game_set_speed"
			/// @DnDArgument : "arg" "30"
			/// @DnDArgument : "arg_1" "gamespeed_fps"
			game_set_speed(30, gamespeed_fps);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6F919409
		/// @DnDParent : 53DDFB07
		/// @DnDArgument : "const" ""60_fps""
		case "60_fps":	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4DBAB351
			/// @DnDInput : 2
			/// @DnDParent : 6F919409
			/// @DnDArgument : "function" "game_set_speed"
			/// @DnDArgument : "arg" "60"
			/// @DnDArgument : "arg_1" "gamespeed_fps"
			game_set_speed(60, gamespeed_fps);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1607AB9E
		/// @DnDParent : 53DDFB07
		/// @DnDArgument : "const" ""120_fps""
		case "120_fps":	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 738AC004
			/// @DnDInput : 2
			/// @DnDParent : 1607AB9E
			/// @DnDArgument : "function" "game_set_speed"
			/// @DnDArgument : "arg" "120"
			/// @DnDArgument : "arg_1" "gamespeed_fps"
			game_set_speed(120, gamespeed_fps);	break;}}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7ACFFB81
/// @DnDArgument : "expr" "data_mode"
var l7ACFFB81_0 = data_mode;switch(l7ACFFB81_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7D4FA5AE
	/// @DnDParent : 7ACFFB81
	/// @DnDArgument : "const" ""bright_flashes""
	case "bright_flashes":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2542EE08
		/// @DnDParent : 7D4FA5AE
		/// @DnDArgument : "expr" "is_clicked"
		/// @DnDArgument : "var" "o_game.can_flash"
		o_game.can_flash = is_clicked;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 663ECA92
	/// @DnDParent : 7ACFFB81
	/// @DnDArgument : "const" ""screen_shake""
	case "screen_shake":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01276B04
		/// @DnDParent : 663ECA92
		/// @DnDArgument : "expr" "is_clicked"
		/// @DnDArgument : "var" "o_game.can_shake"
		o_game.can_shake = is_clicked;	break;}