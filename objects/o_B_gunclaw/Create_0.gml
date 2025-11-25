/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1CFB5BCE
/// @DnDArgument : "script" "flash_make"
/// @DnDSaveInfo : "script" "flash_make"
script_execute(flash_make);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03C21BB3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)enum claw{$(13_10)	IDLE,$(13_10)	ATTACK$(13_10)}$(13_10)$(13_10)enum gunclaw{$(13_10)	IDLE,$(13_10)	ATTACK1,$(13_10)	ATTACK2,$(13_10)	ATTACK3,$(13_10)	WALK,$(13_10)	DIE$(13_10)	$(13_10)}"
/// @description Execute Code
enum claw{
	IDLE,
	ATTACK
}

enum gunclaw{
	IDLE,
	ATTACK1,
	ATTACK2,
	ATTACK3,
	WALK,
	DIE
	
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 20396BE3
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "clawbaby"
/// @DnDArgument : "objectid" "o_gunclaws_claw"
/// @DnDSaveInfo : "objectid" "o_gunclaws_claw"
clawbaby = instance_create_layer(x + 0, y + 0, "Instances", o_gunclaws_claw);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4872A7D1
/// @DnDInput : 2
/// @DnDArgument : "expr" "gunclaw.IDLE"
/// @DnDArgument : "var" "state"
/// @DnDArgument : "var_1" "gun_x"
state = gunclaw.IDLE;
gun_x = 0;