/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1FB31BDC
/// @DnDArgument : "soundid" "gurchenis_spawn_laugh"
/// @DnDSaveInfo : "soundid" "gurchenis_spawn_laugh"
audio_play_sound(gurchenis_spawn_laugh, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 10BC0035
/// @DnDArgument : "script" "flash_make"
/// @DnDSaveInfo : "script" "flash_make"
script_execute(flash_make);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70EEE34B
/// @DnDInput : 2
/// @DnDArgument : "expr" "o_pylon.x"
/// @DnDArgument : "expr_1" "-500"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = o_pylon.x;
y = -500;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23A9B160
/// @DnDArgument : "code" "enum GURCHENIS{$(13_10)	IDLE,$(13_10)	FLOAT,$(13_10)	JUMP,$(13_10)	DIE,$(13_10)	CRASH,$(13_10)	EYEBEAM,$(13_10)	SHOCK,$(13_10)	KISS,$(13_10)	FLY,$(13_10)	INITWING,$(13_10)	HAILMARY$(13_10)}"
enum GURCHENIS{
	IDLE,
	FLOAT,
	JUMP,
	DIE,
	CRASH,
	EYEBEAM,
	SHOCK,
	KISS,
	FLY,
	INITWING,
	HAILMARY
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7562CF9C
/// @DnDArgument : "expr" "GURCHENIS.IDLE"
/// @DnDArgument : "var" "state"
state = GURCHENIS.IDLE;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 41F7D8D7
/// @DnDArgument : "var" "collided_with"
collided_with = ds_list_create();