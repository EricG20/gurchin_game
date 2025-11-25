/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56DC358E
/// @DnDArgument : "code" "audio_group_load(effect_audio);"
audio_group_load(effect_audio);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7F30CE0E
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "game_speed"
/// @DnDArgument : "var_1" "game_time"
global.game_speed = 1;
global.game_time = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37F45F68
/// @DnDArgument : "expr" ""SaveData.sav""
/// @DnDArgument : "var" "file_name"
file_name = "SaveData.sav";

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 136A06ED
/// @DnDInput : 2
/// @DnDArgument : "var" "level_data"
/// @DnDArgument : "var_1" "score_level_data"
level_data = ds_map_create();
score_level_data = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 693FF82E
/// @DnDArgument : "var" "setting_data"
setting_data = ds_map_create();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 638D44D0
/// @DnDInput : 2
/// @DnDArgument : "value" ".3"
/// @DnDArgument : "value_1" "noone"
/// @DnDArgument : "var" "grav"
/// @DnDArgument : "var_1" "the_gate"
global.grav = .3;
global.the_gate = noone;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 551CC050
/// @DnDArgument : "script" "gradient_int"
/// @DnDSaveInfo : "script" "gradient_int"
script_execute(gradient_int);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6072CAF4
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)enum ps {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	AIR,$(13_10)	HIT,$(13_10)	WIN,$(13_10)	DIE$(13_10)	$(13_10)}$(13_10)$(13_10)enum es {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	AIR,$(13_10)	CHARGE,$(13_10)	ATTACK,$(13_10)	DEATH$(13_10)	$(13_10)}$(13_10)$(13_10)enum gm {$(13_10)	TEST,$(13_10)	LEVEL,$(13_10)	HUB,$(13_10)	SELECT,$(13_10)	GATE,$(13_10)	BOSS,$(13_10)	PYLON$(13_10)}$(13_10)$(13_10)enum gr {$(13_10)	S,$(13_10)	A,$(13_10)	B,$(13_10)	C,$(13_10)	DUNNO$(13_10)}$(13_10)$(13_10)state = gm.SELECT"
/// @description Execute Code
enum ps {
	IDLE,
	WALK,
	AIR,
	HIT,
	WIN,
	DIE
	
}

enum es {
	IDLE,
	WALK,
	AIR,
	CHARGE,
	ATTACK,
	DEATH
	
}

enum gm {
	TEST,
	LEVEL,
	HUB,
	SELECT,
	GATE,
	BOSS,
	PYLON
}

enum gr {
	S,
	A,
	B,
	C,
	DUNNO
}

state = gm.SELECT