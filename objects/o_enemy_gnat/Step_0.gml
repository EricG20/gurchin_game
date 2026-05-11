/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73A06398
/// @DnDArgument : "expr" "activated"
/// @DnDArgument : "not" "1"
if(!(activated)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48A42822
	/// @DnDParent : 73A06398
	/// @DnDArgument : "expr" "3*facing"
	/// @DnDArgument : "var" "hsp"
	hsp = 3*facing;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 397A693F
	/// @DnDParent : 73A06398
	/// @DnDArgument : "script" "face_pylon"
	/// @DnDSaveInfo : "script" "face_pylon"
	script_execute(face_pylon);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3FD02104
	/// @DnDParent : 73A06398
	/// @DnDArgument : "expr" "distance_to_object(o_pylon) < 600"
	if(distance_to_object(o_pylon) < 600){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34FD571F
		/// @DnDParent : 3FD02104
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "activated"
		activated = true;}}

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
/// @DnDArgument : "var" "vsp"
vsp = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31AFEC39
/// @DnDArgument : "expr" "activated"
if(activated){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 4ABE5762
	/// @DnDParent : 31AFEC39
	/// @DnDArgument : "script" "hmm_player_or_pylon"
	/// @DnDArgument : "arg" "200"
	/// @DnDSaveInfo : "script" "hmm_player_or_pylon"
	script_execute(hmm_player_or_pylon, 200);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08CB0D5E
	/// @DnDParent : 31AFEC39
	/// @DnDArgument : "expr" "hsp*.4"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp*.4;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2628CF6A
	/// @DnDParent : 31AFEC39
	/// @DnDArgument : "expr" "-1*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown"
	cooldown += -1*global.game_speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5430B331
	/// @DnDParent : 31AFEC39
	/// @DnDArgument : "var" "distance_to_object(target)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "600"
	if(distance_to_object(target) < 600){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 299304EC
		/// @DnDParent : 5430B331
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "120"
		if(cooldown <= 120){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68085592
			/// @DnDParent : 299304EC
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "90"
			if(cooldown >= 90){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 31BA6751
				/// @DnDParent : 68085592
				/// @DnDArgument : "var" "floor(cooldown) mod 15"
				if(floor(cooldown) mod 15 == 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 07C23F2F
					/// @DnDParent : 31BA6751
					/// @DnDArgument : "expr" "floor(cooldown) -1"
					/// @DnDArgument : "var" "cooldown"
					cooldown = floor(cooldown) -1;
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0251F638
					/// @DnDParent : 31BA6751
					/// @DnDArgument : "var" "dir"
					/// @DnDArgument : "value" "point_direction(x,y,target.x,target.y-20)"
					var dir = point_direction(x,y,target.x,target.y-20);
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 4E45C86F
					/// @DnDParent : 31BA6751
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-20"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "flashhh"
					/// @DnDArgument : "objectid" "e_small_flash"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_small_flash"
					flashhh = instance_create_layer(x + 0, y + -20, "Effects", e_small_flash);
				
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
					/// @DnDArgument : "ypos" "-20"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "bul"
					/// @DnDArgument : "objectid" "o_enemy_bullet"
					/// @DnDSaveInfo : "objectid" "o_enemy_bullet"
					bul = instance_create_layer(x + 0, y + -20, "Instances", o_enemy_bullet);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1E416B91
					/// @DnDInput : 2
					/// @DnDParent : 31BA6751
					/// @DnDArgument : "expr" "lengthdir_x(6, dir)"
					/// @DnDArgument : "expr_1" "lengthdir_y(6, dir)"
					/// @DnDArgument : "var" "bul.hsp"
					/// @DnDArgument : "var_1" "bul.vsp"
					bul.hsp = lengthdir_x(6, dir);
					bul.vsp = lengthdir_y(6, dir);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 0812630F
					/// @DnDParent : 31BA6751
					/// @DnDArgument : "soundid" "sfx_shoot"
					/// @DnDSaveInfo : "soundid" "sfx_shoot"
					audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, 1.0);}}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20B352A0
		/// @DnDParent : 5430B331
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D99D64F
			/// @DnDParent : 20B352A0
			/// @DnDArgument : "expr" "120"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 120;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07796EE0
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0468F184
	/// @DnDParent : 07796EE0
	instance_destroy();}