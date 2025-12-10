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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A86FB50
/// @DnDArgument : "expr" "laser_fired"
/// @DnDArgument : "not" "1"
if(!(laser_fired)){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 344705E7
	/// @DnDInput : 3
	/// @DnDParent : 6A86FB50
	/// @DnDArgument : "var" "aim_x"
	/// @DnDArgument : "script" "scr_approach"
	/// @DnDArgument : "arg" "aim_x"
	/// @DnDArgument : "arg_1" "target.x"
	/// @DnDArgument : "arg_2" "point_distance(aim_x, 0, target.x, 0)/20"
	/// @DnDSaveInfo : "script" "scr_approach"
	aim_x = script_execute(scr_approach, aim_x, target.x, point_distance(aim_x, 0, target.x, 0)/20);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2F9D9E72
	/// @DnDInput : 3
	/// @DnDParent : 6A86FB50
	/// @DnDArgument : "var" "aim_y"
	/// @DnDArgument : "script" "scr_approach"
	/// @DnDArgument : "arg" "aim_y"
	/// @DnDArgument : "arg_1" "target.y-47"
	/// @DnDArgument : "arg_2" "point_distance(aim_y, 0, target.y-47, 0)/20"
	/// @DnDSaveInfo : "script" "scr_approach"
	aim_y = script_execute(scr_approach, aim_y, target.y-47, point_distance(aim_y, 0, target.y-47, 0)/20);}

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
/// @DnDArgument : "value" "500"
if(distance_to_object(target) < 500){	/// @DnDAction : YoYo Games.Common.Variable
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
	cooldown = 130+irandom_range(0,50);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25E7C1A0
	/// @DnDParent : 409DEB84
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "laser_fired"
	laser_fired = false;

	/// @DnDAction : YoYo Games.Data Structures.DS_Clear
	/// @DnDVersion : 1
	/// @DnDHash : 0E446788
	/// @DnDParent : 409DEB84
	/// @DnDArgument : "var" "collided_with"
	ds_list_clear(collided_with);}

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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5CF17CBD
/// @DnDArgument : "expr" "laser_fired"
/// @DnDArgument : "not" "1"
if(!(laser_fired)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 539B4222
	/// @DnDParent : 5CF17CBD
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "35"
	if(cooldown <= 35){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 307F0062
		/// @DnDParent : 539B4222
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "20"
		if(cooldown >= 20){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6BBE6635
			/// @DnDInput : 2
			/// @DnDParent : 307F0062
			/// @DnDArgument : "expr" "-.3*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" ".002"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "var_1" "laser_value"
			cooldown += -.3*global.game_speed;
			laser_value += .002;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 615DC0BE
			/// @DnDParent : 307F0062
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "30"
			if(cooldown >= 30){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 348A6DDA
				/// @DnDParent : 615DC0BE
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "e_whiteflash"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_whiteflash"
				instance_create_layer(x + 0, y + 0, "Effects", e_whiteflash);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 60E2AA50
				/// @DnDInput : 3
				/// @DnDParent : 615DC0BE
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "expr_1" "230"
				/// @DnDArgument : "expr_2" "true"
				/// @DnDArgument : "var" "laser_value"
				/// @DnDArgument : "var_1" "cooldown"
				/// @DnDArgument : "var_2" "laser_fired"
				laser_value = 10;
				cooldown = 230;
				laser_fired = true;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 08C25CA0
				/// @DnDParent : 615DC0BE
				/// @DnDArgument : "soundid" "cablew"
				/// @DnDArgument : "gain" ".8"
				/// @DnDArgument : "pitch" "1.5+ random_range(0,.2)"
				/// @DnDSaveInfo : "soundid" "cablew"
				audio_play_sound(cablew, 0, 0, .8, undefined, 1.5+ random_range(0,.2));}}}}

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