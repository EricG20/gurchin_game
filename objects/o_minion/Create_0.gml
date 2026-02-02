/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4434CD33
/// @DnDArgument : "expr" "ammo_cap*global.ammo_bonus"
/// @DnDArgument : "var" "ammo_cap"
ammo_cap = ammo_cap*global.ammo_bonus;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 318A97E7
/// @DnDArgument : "expr" "ammo_cap"
/// @DnDArgument : "var" "ammo"
ammo = ammo_cap;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AA4A5FE
/// @DnDArgument : "code" "enum TURRET{$(13_10)	IDLE,$(13_10)	RELOAD$(13_10)}"
enum TURRET{
	IDLE,
	RELOAD
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F3F4878
/// @DnDArgument : "expr" "TURRET.IDLE"
/// @DnDArgument : "var" "state"
state = TURRET.IDLE;