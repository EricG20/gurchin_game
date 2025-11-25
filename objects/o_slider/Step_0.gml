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

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7033C9CC
/// @DnDArgument : "expr" "data_mode"
var l7033C9CC_0 = data_mode;switch(l7033C9CC_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2E7786AA
	/// @DnDParent : 7033C9CC
	/// @DnDArgument : "const" ""music""
	case "music":	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6905D627
		/// @DnDParent : 2E7786AA
		/// @DnDArgument : "code" "audio_group_set_gain(music_audio, slider_value/100, 0);"
		audio_group_set_gain(music_audio, slider_value/100, 0);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 52F37865
	/// @DnDParent : 7033C9CC
	/// @DnDArgument : "const" ""sound_effects""
	case "sound_effects":	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 7DB58229
		/// @DnDParent : 52F37865
		/// @DnDArgument : "code" "audio_group_set_gain(effect_audio, slider_value/100, 0);"
		audio_group_set_gain(effect_audio, slider_value/100, 0);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 78DDA15A
	/// @DnDParent : 7033C9CC
	/// @DnDArgument : "const" ""master""
	case "master":	/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 6930CA86
		/// @DnDParent : 78DDA15A
		/// @DnDArgument : "volume" "slider_value/100"
		audio_set_master_gain(0, slider_value/100);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 49340BAE
	/// @DnDParent : 7033C9CC
	/// @DnDArgument : "const" ""aim_pan""
	case "aim_pan":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E4F7AE6
		/// @DnDParent : 49340BAE
		/// @DnDArgument : "var" ""
		 = 0;	break;}