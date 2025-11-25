/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 466A2329
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6B8F7422
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 024EAAE9
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FBFDBA0
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "vsp"
/// @DnDArgument : "var_1" "cooldown"
vsp = 0;
cooldown += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5430B331
/// @DnDArgument : "var" "distance_to_object(o_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "600"
if(distance_to_object(o_player) < 600)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 299304EC
	/// @DnDParent : 5430B331
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "120"
	if(cooldown <= 120)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68085592
		/// @DnDParent : 299304EC
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "90"
		if(cooldown >= 90)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 31BA6751
			/// @DnDParent : 68085592
			/// @DnDArgument : "var" "cooldown mod 10"
			if(cooldown mod 10 == 0)
			{
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0251F638
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "var" "dir"
				/// @DnDArgument : "value" "point_direction(x,y,o_player.x,o_player.y-20)"
				var dir = point_direction(x,y,o_player.x,o_player.y-20);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 4E45C86F
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "10"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "flashhh"
				/// @DnDArgument : "objectid" "e_gun_flash"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_gun_flash"
				flashhh = instance_create_layer(x + 0, y + 10, "Effects", e_gun_flash);
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 69586A14
				/// @DnDApplyTo : flashhh
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "value" "dir"
				/// @DnDArgument : "instvar" "12"
				with(flashhh) {
				image_angle = dir;
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5FA92A9D
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "10"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "bul"
				/// @DnDArgument : "objectid" "o_enemy_bullet"
				/// @DnDSaveInfo : "objectid" "o_enemy_bullet"
				bul = instance_create_layer(x + 0, y + 10, "Instances", o_enemy_bullet);
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 52B60656
				/// @DnDApplyTo : bul
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "value" "6"
				/// @DnDArgument : "instvar" "3"
				with(bul) {
				speed = 6;
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 062478CD
				/// @DnDApplyTo : bul
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "value" "dir"
				/// @DnDArgument : "instvar" "2"
				with(bul) {
				direction = dir;
				}
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 0812630F
				/// @DnDParent : 31BA6751
				/// @DnDArgument : "soundid" "sfx_shoot"
				/// @DnDSaveInfo : "soundid" "sfx_shoot"
				audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, 1.0);
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20B352A0
	/// @DnDParent : 5430B331
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D99D64F
		/// @DnDParent : 20B352A0
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 120;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07796EE0
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0468F184
	/// @DnDParent : 07796EE0
	instance_destroy();
}