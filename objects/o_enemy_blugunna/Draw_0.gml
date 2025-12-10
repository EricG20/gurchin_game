/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6E805C9C
/// @DnDArgument : "expr" "laser_fired"
if(laser_fired){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 527C844C
	/// @DnDParent : 6E805C9C
	/// @DnDArgument : "var" "laser_value"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" ".01"
	if(laser_value > .01){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1BD70B47
		/// @DnDInput : 6
		/// @DnDParent : 527C844C
		/// @DnDArgument : "script" "scr_laser"
		/// @DnDArgument : "arg" "0"
		/// @DnDArgument : "arg_1" "-50"
		/// @DnDArgument : "arg_2" "laser_value"
		/// @DnDArgument : "arg_3" "target"
		/// @DnDArgument : "arg_4" "aim_x"
		/// @DnDArgument : "arg_5" "aim_y"
		/// @DnDSaveInfo : "script" "scr_laser"
		script_execute(scr_laser, 0, -50, laser_value, target, aim_x, aim_y);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48B0589F
	/// @DnDParent : 6E805C9C
	/// @DnDArgument : "expr" "laser_value*.5"
	/// @DnDArgument : "var" "laser_value"
	laser_value = laser_value*.5;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7C582622
	/// @DnDDisabled : 1
	/// @DnDParent : 6E805C9C
	/// @DnDArgument : "script" "msg_static"
	/// @DnDArgument : "arg" ""The beam should hurt right now.""
	/// @DnDSaveInfo : "script" "msg_static"}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 60EB38CD
/// @DnDArgument : "expr" "laser_fired"
/// @DnDArgument : "not" "1"
if(!(laser_fired)){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5B3B418D
	/// @DnDDisabled : 1
	/// @DnDParent : 60EB38CD
	/// @DnDArgument : "script" "msg_static"
	/// @DnDArgument : "arg" ""I am charging up the beam. Cool down is at " + string(cooldown) + "right now.""
	/// @DnDSaveInfo : "script" "msg_static"


	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 44AE2553
	/// @DnDParent : 60EB38CD
	/// @DnDArgument : "expr" "activated"
	if(activated){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 793F9244
		/// @DnDInput : 6
		/// @DnDParent : 44AE2553
		/// @DnDArgument : "script" "scr_laser"
		/// @DnDArgument : "arg" "0"
		/// @DnDArgument : "arg_1" "-50"
		/// @DnDArgument : "arg_2" "laser_value+.1"
		/// @DnDArgument : "arg_3" "noone"
		/// @DnDArgument : "arg_4" "aim_x"
		/// @DnDArgument : "arg_5" "aim_y"
		/// @DnDSaveInfo : "script" "scr_laser"
		script_execute(scr_laser, 0, -50, laser_value+.1, noone, aim_x, aim_y);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E33430A
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "not" "1"
if(!(hsp == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 115CD8CA
	/// @DnDParent : 7E33430A
	/// @DnDArgument : "expr" "s_blugunna_body_move"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = s_blugunna_body_move;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0B87CB3C
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58B68FD0
	/// @DnDParent : 0B87CB3C
	/// @DnDArgument : "expr" "s_blugunna_body_idle"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = s_blugunna_body_idle;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3371C2F1
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 59B38008
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "y-42"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "sprite" "Sprite109"
/// @DnDSaveInfo : "sprite" "Sprite109"