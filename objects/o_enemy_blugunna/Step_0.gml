/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 77CCBEE0
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0AC2630D
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2D84544C
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33F562A6
/// @DnDArgument : "var" "distance_to_object(o_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "800"
if(distance_to_object(o_player) < 800)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E6D20AF
	/// @DnDParent : 33F562A6
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "activated"
	activated = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 409DEB84
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12C30134
	/// @DnDParent : 409DEB84
	/// @DnDArgument : "expr" "130"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 130;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2E544882
/// @DnDArgument : "expr" "activated"
if(activated)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2480C21B
	/// @DnDParent : 2E544882
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown"
	cooldown += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 539B4222
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "65"
if(cooldown <= 65)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 307F0062
	/// @DnDParent : 539B4222
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "50"
	if(cooldown >= 50)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 615DC0BE
		/// @DnDParent : 307F0062
		/// @DnDArgument : "var" "cooldown mod 10"
		if(cooldown mod 10 == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2DDDC8EB
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "xpos" "facing*27"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-41"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "flashhh"
			/// @DnDArgument : "objectid" "e_small_flash"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_small_flash"
			flashhh = instance_create_layer(x + facing*27, y + -41, "Effects", e_small_flash);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5D742980
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "xpos" "facing*27"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-41"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bul"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "o_enemy_bullet"
			/// @DnDSaveInfo : "objectid" "o_enemy_bullet"
			var bul = instance_create_layer(x + facing*27, y + -41, "Instances", o_enemy_bullet);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 67D5AD2E
			/// @DnDApplyTo : bul
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "value" "4"
			/// @DnDArgument : "instvar" "4"
			with(bul) {
			hspeed = 4;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60E2AA50
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "expr" "bul.hspeed*facing"
			/// @DnDArgument : "var" "bul.hspeed"
			bul.hspeed = bul.hspeed*facing;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 08C25CA0
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "soundid" "sfx_shoot"
			/// @DnDSaveInfo : "soundid" "sfx_shoot"
			audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, 1.0);
		}
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 71638487
	/// @DnDParent : 539B4222
	/// @DnDArgument : "script" "face_gunna"
	/// @DnDSaveInfo : "script" "face_gunna"
	script_execute(face_gunna);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 075FFECE
/// @DnDArgument : "var" "distance_to_object(o_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "150"
if(distance_to_object(o_player) < 150)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46385326
	/// @DnDParent : 075FFECE
	/// @DnDArgument : "expr" "-2*facing"
	/// @DnDArgument : "var" "hsp"
	hsp = -2*facing;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79555E52
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61736F68
	/// @DnDParent : 79555E52
	instance_destroy();
}