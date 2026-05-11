/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16B3C93D
/// @DnDArgument : "var" "control_type"
/// @DnDArgument : "value" "cr.LOCAL"
if(control_type == cr.LOCAL){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3666D972
	/// @DnDParent : 16B3C93D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "my_cam"
	/// @DnDArgument : "objectid" "o_camera"
	/// @DnDSaveInfo : "objectid" "o_camera"
	my_cam = instance_create_layer(x + 0, y + 0, "Instances", o_camera);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 063F3B46
	/// @DnDParent : 16B3C93D
	/// @DnDArgument : "expr" "my_cam"
	/// @DnDArgument : "var" "belongings.cam"
	belongings.cam = my_cam;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 77036B0B
/// @DnDArgument : "expr" "room"
var l77036B0B_0 = room;switch(l77036B0B_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2BBA277A
	/// @DnDParent : 77036B0B
	/// @DnDArgument : "const" "personal_ufo"
	case personal_ufo:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F2C4689
		/// @DnDInput : 2
		/// @DnDParent : 2BBA277A
		/// @DnDArgument : "expr" "256 + 200*player_id"
		/// @DnDArgument : "expr_1" "864"
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "var_1" "y"
		x = 256 + 200*player_id;
		y = 864;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6B7D6691
		/// @DnDApplyTo : o_game
		/// @DnDParent : 2BBA277A
		/// @DnDArgument : "script" "scr_set_pylon_start_params"
		/// @DnDSaveInfo : "script" "scr_set_pylon_start_params"
		with(o_game) {
			script_execute(scr_set_pylon_start_params);
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1B4424DC
		/// @DnDParent : 2BBA277A
		/// @DnDArgument : "script" "scr_player_stat_reset"
		/// @DnDSaveInfo : "script" "scr_player_stat_reset"
		script_execute(scr_player_stat_reset);	break;}