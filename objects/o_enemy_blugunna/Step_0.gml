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
/// @DnDArgument : "var" "distance_to_object(target)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "400"
if(distance_to_object(target) < 400){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E6D20AF
	/// @DnDParent : 33F562A6
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "activated"
	activated = true;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 409DEB84
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12C30134
	/// @DnDParent : 409DEB84
	/// @DnDArgument : "expr" "130+irandom_range(0,50)"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 130+irandom_range(0,50);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2E544882
/// @DnDArgument : "expr" "activated"
if(activated){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2480C21B
	/// @DnDParent : 2E544882
	/// @DnDArgument : "expr" "-1*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown"
	cooldown += -1*global.game_speed;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4E6E1401
/// @DnDArgument : "expr" "activated"
/// @DnDArgument : "not" "1"
if(!(activated)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F355409
	/// @DnDParent : 4E6E1401
	/// @DnDArgument : "expr" "3*facing"
	/// @DnDArgument : "var" "hsp"
	hsp = 3*facing;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 539B4222
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "65"
if(cooldown <= 65){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 307F0062
	/// @DnDParent : 539B4222
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "50"
	if(cooldown >= 50){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 615DC0BE
		/// @DnDParent : 307F0062
		/// @DnDArgument : "var" "floor(cooldown) mod 10"
		if(floor(cooldown) mod 10 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
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
			/// @DnDArgument : "instvar" "3"
			with(bul) {
			speed = 4;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60E2AA50
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "expr" "point_direction(x,y,target.x,target.y)"
			/// @DnDArgument : "var" "bul.direction"
			bul.direction = point_direction(x,y,target.x,target.y);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 08C25CA0
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "soundid" "sfx_shoot"
			/// @DnDArgument : "gain" ".8"
			/// @DnDArgument : "pitch" "1.5+ random_range(0,.2)"
			/// @DnDSaveInfo : "soundid" "sfx_shoot"
			audio_play_sound(sfx_shoot, 0, 0, .8, undefined, 1.5+ random_range(0,.2));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6BBE6635
			/// @DnDParent : 615DC0BE
			/// @DnDArgument : "expr" "floor(cooldown)+1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "cooldown"
			cooldown += floor(cooldown)+1;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 075FFECE
/// @DnDArgument : "var" "distance_to_object(o_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "150"
if(distance_to_object(o_player) < 150){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46385326
	/// @DnDParent : 075FFECE
	/// @DnDArgument : "expr" "-2*facing"
	/// @DnDArgument : "var" "hsp"
	hsp = -2*facing;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79555E52
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61736F68
	/// @DnDParent : 79555E52
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74DF2C19
/// @DnDArgument : "var" "o_player.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DIE"
if(!(o_player.state == ps.DIE)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40D6B090
	/// @DnDParent : 74DF2C19
	/// @DnDArgument : "var" "distance_to_object(o_player)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "500"
	if(distance_to_object(o_player) < 500){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 71638487
		/// @DnDParent : 40D6B090
		/// @DnDArgument : "script" "face_gunna"
		/// @DnDSaveInfo : "script" "face_gunna"
		script_execute(face_gunna);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6967EBD6
		/// @DnDParent : 40D6B090
		/// @DnDArgument : "expr" "o_player"
		/// @DnDArgument : "var" "target"
		target = o_player;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7A3C3F59
	/// @DnDParent : 74DF2C19
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5422768F
		/// @DnDParent : 7A3C3F59
		/// @DnDArgument : "expr" "o_pylon"
		/// @DnDArgument : "var" "target"
		target = o_pylon;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 69342EF1
		/// @DnDParent : 7A3C3F59
		/// @DnDArgument : "script" "face_pylon"
		/// @DnDSaveInfo : "script" "face_pylon"
		script_execute(face_pylon);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DCA10A3
/// @DnDArgument : "var" "o_player.state"
/// @DnDArgument : "value" "ps.DIE"
if(o_player.state == ps.DIE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CBAF2E8
	/// @DnDParent : 2DCA10A3
	/// @DnDArgument : "expr" "o_pylon"
	/// @DnDArgument : "var" "target"
	target = o_pylon;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 53625FF5
	/// @DnDParent : 2DCA10A3
	/// @DnDArgument : "script" "face_pylon"
	/// @DnDSaveInfo : "script" "face_pylon"
	script_execute(face_pylon);}