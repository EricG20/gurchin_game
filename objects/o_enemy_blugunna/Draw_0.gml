/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6B4B9500
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (VISystemExists(system)) {$(13_10)	// Draw all objects of the system$(13_10)	system.Draw(false);$(13_10)}"
/// @description Execute Code
if (VISystemExists(system)) {
	// Draw all objects of the system
	system.Draw(false);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 115CD8CA
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "s_blugunna_body_move"
/// @DnDArgument : "var" "sprite_index"


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3371C2F1
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 739FFAA3
/// @DnDArgument : "expr" "state == es.KNOCKBACK"
/// @DnDArgument : "not" "1"
if(!(state == es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1080A40F
	/// @DnDParent : 739FFAA3
	/// @DnDArgument : "x" "lerp(x, aim_x, .03)"
	/// @DnDArgument : "y" "lerp(y, aim_y, .03)"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "sprite" "eyelith_pupil"
	/// @DnDSaveInfo : "sprite" "eyelith_pupil"
	draw_sprite_ext(eyelith_pupil, 0, lerp(x, aim_x, .03), lerp(y, aim_y, .03), facing, 1, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31B1ACE0
/// @DnDArgument : "expr" "state == es.KNOCKBACK"
if(state == es.KNOCKBACK){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 755B8225
	/// @DnDParent : 31B1ACE0
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing*.5"
	/// @DnDArgument : "yscale" ".5"
	/// @DnDArgument : "sprite" "eyelith_pupil"
	/// @DnDSaveInfo : "sprite" "eyelith_pupil"
	draw_sprite_ext(eyelith_pupil, 0, x + 0, y + 0, facing*.5, .5, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 290A50BB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing+sin(power(cooldown/100, 3))*.05"
/// @DnDArgument : "yscale" "1+cos(power(cooldown/100, 3))*.05"
/// @DnDArgument : "sprite" "eyelith_lid"
/// @DnDSaveInfo : "sprite" "eyelith_lid"
draw_sprite_ext(eyelith_lid, 0, x + 0, y + 0, facing+sin(power(cooldown/100, 3))*.05, 1+cos(power(cooldown/100, 3))*.05, 0, $FFFFFF & $ffffff, 1);

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
		/// @DnDArgument : "arg_1" "-25"
		/// @DnDArgument : "arg_2" "laser_value"
		/// @DnDArgument : "arg_3" "target"
		/// @DnDArgument : "arg_4" "aim_x"
		/// @DnDArgument : "arg_5" "aim_y"
		/// @DnDSaveInfo : "script" "scr_laser"
		script_execute(scr_laser, 0, -25, laser_value, target, aim_x, aim_y);}

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
/// @DnDHash : 56E956CE
/// @DnDArgument : "expr" "state == es.KNOCKBACK"
/// @DnDArgument : "not" "1"
if(!(state == es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 60EB38CD
	/// @DnDParent : 56E956CE
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
			/// @DnDArgument : "arg_1" "-25"
			/// @DnDArgument : "arg_2" "laser_value+.1"
			/// @DnDArgument : "arg_3" "noone"
			/// @DnDArgument : "arg_4" "aim_x"
			/// @DnDArgument : "arg_5" "aim_y"
			/// @DnDSaveInfo : "script" "scr_laser"
			script_execute(scr_laser, 0, -25, laser_value+.1, noone, aim_x, aim_y);}}}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 59B38008
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "y-42"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "sprite" "Sprite109"
/// @DnDSaveInfo : "sprite" "Sprite109"