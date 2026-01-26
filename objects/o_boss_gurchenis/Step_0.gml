/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 154D1658
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35221143
	/// @DnDParent : 154D1658
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "GURCHENIS.DIE"
	if(!(state == GURCHENIS.DIE)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0414A6E7
		/// @DnDParent : 35221143
		/// @DnDArgument : "expr" "250"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 250;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5C82BB0A
		/// @DnDParent : 35221143
		/// @DnDArgument : "script" "scr_fadeout_song"
		/// @DnDArgument : "arg" "1000"
		/// @DnDSaveInfo : "script" "scr_fadeout_song"
		script_execute(scr_fadeout_song, 1000);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 37BF9D08
		/// @DnDParent : 35221143
		/// @DnDArgument : "soundid" "gurchenis_blowup"
		/// @DnDSaveInfo : "soundid" "gurchenis_blowup"
		audio_play_sound(gurchenis_blowup, 0, 0, 1.0, undefined, 1.0);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17128418
	/// @DnDParent : 154D1658
	/// @DnDArgument : "expr" "GURCHENIS.DIE"
	/// @DnDArgument : "var" "state"
	state = GURCHENIS.DIE;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 61E770CB
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1E782925
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 340743E9
/// @DnDArgument : "var" "o_player.state"
/// @DnDArgument : "value" "ps.DIE"
if(o_player.state == ps.DIE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5265919C
	/// @DnDParent : 340743E9
	/// @DnDArgument : "expr" "GURCHENIS.KISS"
	/// @DnDArgument : "var" "state"
	state = GURCHENIS.KISS;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 19B47A5F
/// @DnDArgument : "expr" "(state != GURCHENIS.EYEBEAM) && (state != GURCHENIS.HAILMARY)"
if((state != GURCHENIS.EYEBEAM) && (state != GURCHENIS.HAILMARY)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 580FB470
	/// @DnDParent : 19B47A5F
	/// @DnDArgument : "expr" "speed_force*power(.99, global.game_speed)"
	/// @DnDArgument : "var" "speed_force"
	speed_force = speed_force*power(.99, global.game_speed);}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 71855E70
/// @DnDArgument : "expr" "state"
var l71855E70_0 = state;switch(l71855E70_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5C769A33
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.IDLE"
	case GURCHENIS.IDLE:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 73EC8286
		/// @DnDParent : 5C769A33
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DA4A276
		/// @DnDInput : 2
		/// @DnDParent : 5C769A33
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "var_1" "speed_force"
		cooldown += -1*global.game_speed;
		speed_force = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 292EB1B8
		/// @DnDParent : 5C769A33
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D823E03
			/// @DnDInput : 2
			/// @DnDParent : 292EB1B8
			/// @DnDArgument : "expr" "GURCHENIS.FLOAT"
			/// @DnDArgument : "expr_1" "320"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "cooldown"
			state = GURCHENIS.FLOAT;
			cooldown = 320;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2B1EF3E6
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.DIE"
	case GURCHENIS.DIE:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2542337F
		/// @DnDInput : 3
		/// @DnDParent : 2B1EF3E6
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "random_range(-8,8)"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "random_range(-8,8)-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "var_1" "x"
		/// @DnDArgument : "var_2" "y"
		cooldown += -1*global.game_speed;
		x += random_range(-8,8);
		y += random_range(-8,8)-1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27A847E3
		/// @DnDParent : 2B1EF3E6
		/// @DnDArgument : "var" "floor(cooldown)%10"
		if(floor(cooldown)%10 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 14A74821
			/// @DnDParent : 27A847E3
			/// @DnDArgument : "xpos" "random_range(bbox_left,bbox_right)"
			/// @DnDArgument : "ypos" "random_range(bbox_bottom,bbox_top)"
			/// @DnDArgument : "objectid" "o_red_vermin_explosion"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "o_red_vermin_explosion"
			instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_bottom,bbox_top), "Effects", o_red_vermin_explosion);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2B6E18C5
			/// @DnDParent : 27A847E3
			/// @DnDArgument : "script" "play_kill_sound"
			/// @DnDArgument : "arg" ".5"
			/// @DnDSaveInfo : "script" "play_kill_sound"
			script_execute(play_kill_sound, .5);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57245291
			/// @DnDParent : 27A847E3
			/// @DnDArgument : "expr" "floor(cooldown)-1"
			/// @DnDArgument : "var" "cooldown"
			cooldown = floor(cooldown)-1;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 639CFAB7
		/// @DnDParent : 2B1EF3E6
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 02A6BB0E
			/// @DnDParent : 639CFAB7
			instance_destroy();}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3BE260F1
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.KISS"
	case GURCHENIS.KISS:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B48E870
		/// @DnDParent : 3BE260F1
		/// @DnDArgument : "expr" "1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speed_force"
		speed_force += 1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CD29099
		/// @DnDInput : 5
		/// @DnDParent : 3BE260F1
		/// @DnDArgument : "expr" "o_pylon.x+sin(current_time/1250)*5"
		/// @DnDArgument : "expr_1" "o_pylon.y+cos(current_time/500)*5"
		/// @DnDArgument : "expr_4" ".1*global.game_speed"
		/// @DnDArgument : "expr_relative_4" "1"
		/// @DnDArgument : "var" "destination_x"
		/// @DnDArgument : "var_1" "destination_y"
		/// @DnDArgument : "var_2" "hsp"
		/// @DnDArgument : "var_3" "vsp"
		/// @DnDArgument : "var_4" "speed_force"
		destination_x = o_pylon.x+sin(current_time/1250)*5;
		destination_y = o_pylon.y+cos(current_time/500)*5;
		hsp = 0;
		vsp = 0;
		speed_force += .1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67EA0449
		/// @DnDParent : 3BE260F1
		/// @DnDArgument : "var" "global.game_speed"
		/// @DnDArgument : "op" "2"
		if(global.game_speed > 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2B784ECE
			/// @DnDInput : 3
			/// @DnDParent : 67EA0449
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "script" "scr_approach"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "destination_x"
			/// @DnDArgument : "arg_2" "clamp(speed_force,0,25)"
			/// @DnDSaveInfo : "script" "scr_approach"
			x = script_execute(scr_approach, x, destination_x, clamp(speed_force,0,25));
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5FEBC2EC
			/// @DnDInput : 3
			/// @DnDParent : 67EA0449
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "script" "scr_approach"
			/// @DnDArgument : "arg" "y"
			/// @DnDArgument : "arg_1" "destination_y"
			/// @DnDArgument : "arg_2" "clamp(speed_force,0,25)"
			/// @DnDSaveInfo : "script" "scr_approach"
			y = script_execute(scr_approach, y, destination_y, clamp(speed_force,0,25));}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E29BBFC
		/// @DnDParent : 3BE260F1
		/// @DnDArgument : "var" "o_player.state"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "ps.DIE"
		if(!(o_player.state == ps.DIE)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 613D344C
			/// @DnDInput : 2
			/// @DnDParent : 2E29BBFC
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "expr_1" "20"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "cooldown"
			state = ps.IDLE;
			cooldown = 20;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 51B8DE45
		/// @DnDParent : 3BE260F1
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "target" "juicebox"
		/// @DnDArgument : "object" "o_pylon"
		/// @DnDSaveInfo : "object" "o_pylon"
		var l51B8DE45_0 = instance_place(x + 0, y + 0, [o_pylon]);
		juicebox = l51B8DE45_0;if ((l51B8DE45_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 330A3B58
			/// @DnDParent : 51B8DE45
			/// @DnDArgument : "expr" "(-.07*anger)*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "juicebox.hp"
			juicebox.hp += (-.07*anger)*global.game_speed;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5AC82CD2
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.FLOAT"
	case GURCHENIS.FLOAT:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1ABB2E07
		/// @DnDDisabled : 1
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D20F160
		/// @DnDInput : 5
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "expr" "o_player.x+sin(current_time/1250)*400"
		/// @DnDArgument : "expr_1" "-500+o_player.y+cos(current_time/500)*150"
		/// @DnDArgument : "expr_4" ".1*global.game_speed"
		/// @DnDArgument : "expr_relative_4" "1"
		/// @DnDArgument : "var" "destination_x"
		/// @DnDArgument : "var_1" "destination_y"
		/// @DnDArgument : "var_2" "hsp"
		/// @DnDArgument : "var_3" "vsp"
		/// @DnDArgument : "var_4" "speed_force"
		destination_x = o_player.x+sin(current_time/1250)*400;
		destination_y = -500+o_player.y+cos(current_time/500)*150;
		hsp = 0;
		vsp = 0;
		speed_force += .1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2966A33E
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D287989
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "var" "global.game_speed"
		/// @DnDArgument : "op" "2"
		if(global.game_speed > 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 42555613
			/// @DnDInput : 3
			/// @DnDParent : 1D287989
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "script" "scr_approach"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "destination_x"
			/// @DnDArgument : "arg_2" "clamp(speed_force,0,15)"
			/// @DnDSaveInfo : "script" "scr_approach"
			x = script_execute(scr_approach, x, destination_x, clamp(speed_force,0,15));
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3AE2F6D1
			/// @DnDInput : 3
			/// @DnDParent : 1D287989
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "script" "scr_approach"
			/// @DnDArgument : "arg" "y"
			/// @DnDArgument : "arg_1" "destination_y"
			/// @DnDArgument : "arg_2" "clamp(speed_force,0,15)"
			/// @DnDSaveInfo : "script" "scr_approach"
			y = script_execute(scr_approach, y, destination_y, clamp(speed_force,0,15));}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1304E439
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "var" "speed_force"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "8"
		if(speed_force > 8){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0F043604
			/// @DnDParent : 1304E439
			/// @DnDArgument : "var" "floor(cooldown)%floor(20/anger)"
			if(floor(cooldown)%floor(20/anger) == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 23BFB3A4
				/// @DnDParent : 0F043604
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "blap"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "o_enemy_bullet"
				/// @DnDSaveInfo : "objectid" "o_enemy_bullet"
				var blap = instance_create_layer(x + 0, y + 0, "Instances", o_enemy_bullet);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 059A8300
				/// @DnDInput : 6
				/// @DnDParent : 0F043604
				/// @DnDArgument : "expr" "lengthdir_x(18, point_direction(x,y,o_player.x+random_range(-20,20),o_player.y+random_range(-20,20)))"
				/// @DnDArgument : "expr_1" "lengthdir_y(18, point_direction(x,y,o_player.x+random_range(-20,20),o_player.y+random_range(-20,20)))"
				/// @DnDArgument : "expr_2" "s_gurchenisbullet"
				/// @DnDArgument : "expr_3" "point_direction(x,y,x+blap.hsp, y+blap.vsp)"
				/// @DnDArgument : "expr_4" "2"
				/// @DnDArgument : "expr_5" "2"
				/// @DnDArgument : "var" "blap.hsp"
				/// @DnDArgument : "var_1" "blap.vsp"
				/// @DnDArgument : "var_2" "blap.sprite_index"
				/// @DnDArgument : "var_3" "blap.image_angle"
				/// @DnDArgument : "var_4" "blap.image_xscale"
				/// @DnDArgument : "var_5" "blap.image_yscale"
				blap.hsp = lengthdir_x(18, point_direction(x,y,o_player.x+random_range(-20,20),o_player.y+random_range(-20,20)));
				blap.vsp = lengthdir_y(18, point_direction(x,y,o_player.x+random_range(-20,20),o_player.y+random_range(-20,20)));
				blap.sprite_index = s_gurchenisbullet;
				blap.image_angle = point_direction(x,y,x+blap.hsp, y+blap.vsp);
				blap.image_xscale = 2;
				blap.image_yscale = 2;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 2AD1682A
				/// @DnDParent : 0F043604
				/// @DnDArgument : "soundid" "sfx_shoot"
				/// @DnDArgument : "gain" ".7"
				/// @DnDArgument : "pitch" "random_range(.5,.7)"
				/// @DnDSaveInfo : "soundid" "sfx_shoot"
				audio_play_sound(sfx_shoot, 0, 0, .7, undefined, random_range(.5,.7));}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FF8B18F
			/// @DnDParent : 1304E439
			/// @DnDArgument : "var" "floor(cooldown)%10"
			if(floor(cooldown)%10 == 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0C55B4C5
				/// @DnDParent : 7FF8B18F
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "cooldown"
				cooldown += -1;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 5F74B16D
				/// @DnDParent : 7FF8B18F
				/// @DnDArgument : "script" "scr_afterimage"
				/// @DnDSaveInfo : "script" "scr_afterimage"
				script_execute(scr_afterimage);}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D48F605
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 1D89490B
			/// @DnDInput : 2
			/// @DnDParent : 2D48F605
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "GURCHENIS.INITWING"
			/// @DnDArgument : "option_1" "GURCHENIS.SHOCK"
			state = choose(GURCHENIS.INITWING, GURCHENIS.SHOCK);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C3B6EAE
			/// @DnDParent : 2D48F605
			/// @DnDArgument : "expr" "400"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 400;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 191E6C78
			/// @DnDParent : 2D48F605
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "GURCHENIS.INITWING"
			if(state == GURCHENIS.INITWING){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3A37ADE7
				/// @DnDInput : 3
				/// @DnDParent : 191E6C78
				/// @DnDArgument : "expr" "130"
				/// @DnDArgument : "expr_1" "o_player.x"
				/// @DnDArgument : "expr_2" "o_player.y-500"
				/// @DnDArgument : "var" "cooldown"
				/// @DnDArgument : "var_1" "destination_x"
				/// @DnDArgument : "var_2" "destination_y"
				cooldown = 130;
				destination_x = o_player.x;
				destination_y = o_player.y-500;
			
				/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 3F66DA75
				/// @DnDInput : 2
				/// @DnDParent : 191E6C78
				/// @DnDArgument : "var" "gurch_hehe"
				/// @DnDArgument : "option" "gurchenis_chuckle"
				/// @DnDArgument : "option_1" "gurchenis_laugh1"
				gurch_hehe = choose(gurchenis_chuckle, gurchenis_laugh1);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 18426395
				/// @DnDParent : 191E6C78
				/// @DnDArgument : "soundid" "gurch_hehe"
				/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
				audio_play_sound(gurch_hehe, 0, 0, 1.0, undefined, random_range(0.8,1.2));}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 603881F9
			/// @DnDParent : 2D48F605
			else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 2757F1E3
				/// @DnDParent : 603881F9
				/// @DnDArgument : "soundid" "gurchenis_grunt2"
				/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
				/// @DnDSaveInfo : "soundid" "gurchenis_grunt2"
				audio_play_sound(gurchenis_grunt2, 0, 0, 1.0, undefined, random_range(0.8,1.2));}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 26EEF87C
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.SHOCK"
	case GURCHENIS.SHOCK:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 572FA825
		/// @DnDParent : 26EEF87C
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7BF5047B
		/// @DnDInput : 3
		/// @DnDParent : 26EEF87C
		/// @DnDArgument : "script" "scr_homing"
		/// @DnDArgument : "arg" "o_player"
		/// @DnDArgument : "arg_1" ".4"
		/// @DnDArgument : "arg_2" "2000"
		/// @DnDSaveInfo : "script" "scr_homing"
		script_execute(scr_homing, o_player, .4, 2000);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29DEAB08
		/// @DnDInput : 4
		/// @DnDParent : 26EEF87C
		/// @DnDArgument : "expr" "o_player.x+random_range(-15,15)"
		/// @DnDArgument : "expr_1" "o_player.y+random_range(-15,15)"
		/// @DnDArgument : "expr_2" "vsp*power(.6,global.game_speed)"
		/// @DnDArgument : "expr_3" "hsp*power(.6,global.game_speed)"
		/// @DnDArgument : "var" "destination_x"
		/// @DnDArgument : "var_1" "destination_y"
		/// @DnDArgument : "var_2" "vsp"
		/// @DnDArgument : "var_3" "hsp"
		destination_x = o_player.x+random_range(-15,15);
		destination_y = o_player.y+random_range(-15,15);
		vsp = vsp*power(.6,global.game_speed);
		hsp = hsp*power(.6,global.game_speed);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 600F1576
		/// @DnDParent : 26EEF87C
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "320"
		if(cooldown <= 320){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 688F3D8B
			/// @DnDParent : 600F1576
			/// @DnDArgument : "var" "floor(cooldown)%floor(40/anger)"
			if(floor(cooldown)%floor(40/anger) == 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3F43069A
				/// @DnDParent : 688F3D8B
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "cooldown"
				cooldown += -1;
			
				/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 36CE4BDB
				/// @DnDParent : 688F3D8B
				/// @DnDArgument : "obj" "shock_conductor"
				var l36CE4BDB_0 = false;l36CE4BDB_0 = instance_exists(shock_conductor);if(l36CE4BDB_0){	/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 0B601E4E
					/// @DnDInput : 2
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "script" "scr_screenshake"
					/// @DnDArgument : "arg" "random_range(-9,9)"
					/// @DnDArgument : "arg_1" "random_range(-6,6)"
					/// @DnDSaveInfo : "script" "scr_screenshake"
					script_execute(scr_screenshake, random_range(-9,9), random_range(-6,6));
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 2335CD5D
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "script" "scr_white_flash"
					/// @DnDArgument : "arg" ".2"
					/// @DnDSaveInfo : "script" "scr_white_flash"
					script_execute(scr_white_flash, .2);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 5A681805
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "soundid" "sfx_lightning"
					/// @DnDArgument : "gain" "2.2"
					/// @DnDArgument : "pitch" "random_range(1.2,1.6)"
					/// @DnDSaveInfo : "soundid" "sfx_lightning"
					audio_play_sound(sfx_lightning, 0, 0, 2.2, undefined, random_range(1.2,1.6));
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 49C03E51
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "soundid" "sfx_explosion"
					/// @DnDArgument : "gain" ".4"
					/// @DnDArgument : "pitch" "random_range(1.2,1.6)"
					/// @DnDSaveInfo : "soundid" "sfx_explosion"
					audio_play_sound(sfx_explosion, 0, 0, .4, undefined, random_range(1.2,1.6));
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 262B8CB3
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "earl_lightning"
					/// @DnDArgument : "objectid" "o_evil_lightning"
					/// @DnDSaveInfo : "objectid" "o_evil_lightning"
					earl_lightning = instance_create_layer(x + 0, y + 0, "Instances", o_evil_lightning);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6163AA20
					/// @DnDInput : 4
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "expr" "shock_conductor"
					/// @DnDArgument : "expr_1" "shock_conductor.x"
					/// @DnDArgument : "expr_2" "shock_conductor.y"
					/// @DnDArgument : "expr_3" "false"
					/// @DnDArgument : "var" "earl_lightning.target"
					/// @DnDArgument : "var_1" "earl_lightning.backup_x"
					/// @DnDArgument : "var_2" "earl_lightning.backup_y"
					/// @DnDArgument : "var_3" "earl_lightning.accounted_for"
					earl_lightning.target = shock_conductor;
					earl_lightning.backup_x = shock_conductor.x;
					earl_lightning.backup_y = shock_conductor.y;
					earl_lightning.accounted_for = false;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 2E031D0D
					/// @DnDInput : 4
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "script" "scr_makeexplosion"
					/// @DnDArgument : "arg" "shock_conductor.x"
					/// @DnDArgument : "arg_1" "shock_conductor.y"
					/// @DnDArgument : "arg_2" "false"
					/// @DnDArgument : "arg_3" ".5"
					/// @DnDSaveInfo : "script" "scr_makeexplosion"
					script_execute(scr_makeexplosion, shock_conductor.x, shock_conductor.y, false, .5);
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 758A2F17
					/// @DnDApplyTo : shock_conductor
					/// @DnDParent : 36CE4BDB
					with(shock_conductor) instance_destroy();
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4F39B0A5
					/// @DnDParent : 36CE4BDB
					/// @DnDArgument : "expr" "o_conductor"
					/// @DnDArgument : "var" "shock_conductor"
					shock_conductor = o_conductor;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 6F4C6B30
				/// @DnDParent : 688F3D8B
				else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 7B1828F8
					/// @DnDParent : 6F4C6B30
					/// @DnDArgument : "xpos" "destination_x"
					/// @DnDArgument : "ypos" "destination_y"
					/// @DnDArgument : "var" "shock_conductor"
					/// @DnDArgument : "objectid" "o_conductor"
					/// @DnDSaveInfo : "objectid" "o_conductor"
					shock_conductor = instance_create_layer(destination_x, destination_y, "Instances", o_conductor);}}}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 376CC543
		/// @DnDParent : 26EEF87C
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 124E249F
		/// @DnDParent : 26EEF87C
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 0368EC4C
			/// @DnDInput : 2
			/// @DnDParent : 124E249F
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "GURCHENIS.FLOAT"
			/// @DnDArgument : "option_1" "GURCHENIS.INITWING"
			state = choose(GURCHENIS.FLOAT, GURCHENIS.INITWING);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 755A326D
			/// @DnDParent : 124E249F
			/// @DnDArgument : "var" "anger"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "2"
			if(anger >= 2){	/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 55AD9C0C
				/// @DnDInput : 3
				/// @DnDParent : 755A326D
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "option" "GURCHENIS.FLOAT"
				/// @DnDArgument : "option_1" "GURCHENIS.INITWING"
				/// @DnDArgument : "option_2" "GURCHENIS.EYEBEAM"
				state = choose(GURCHENIS.FLOAT, GURCHENIS.INITWING, GURCHENIS.EYEBEAM);}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 292F3B2D
			/// @DnDParent : 124E249F
			/// @DnDArgument : "expr" "120"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 120;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C2548FD
			/// @DnDParent : 124E249F
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "GURCHENIS.INITWING"
			if(state == GURCHENIS.INITWING){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3DF08FD8
				/// @DnDInput : 3
				/// @DnDParent : 1C2548FD
				/// @DnDArgument : "expr" "130"
				/// @DnDArgument : "expr_1" "o_player.x"
				/// @DnDArgument : "expr_2" "o_player.y-500"
				/// @DnDArgument : "var" "cooldown"
				/// @DnDArgument : "var_1" "destination_x"
				/// @DnDArgument : "var_2" "destination_y"
				cooldown = 130;
				destination_x = o_player.x;
				destination_y = o_player.y-500;
			
				/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 60D9DFA2
				/// @DnDInput : 2
				/// @DnDParent : 1C2548FD
				/// @DnDArgument : "var" "gurch_hehe"
				/// @DnDArgument : "option" "gurchenis_chuckle"
				/// @DnDArgument : "option_1" "gurchenis_laugh1"
				gurch_hehe = choose(gurchenis_chuckle, gurchenis_laugh1);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 7F39B9E5
				/// @DnDParent : 1C2548FD
				/// @DnDArgument : "soundid" "gurch_hehe"
				/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
				audio_play_sound(gurch_hehe, 0, 0, 1.0, undefined, random_range(0.8,1.2));}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EF5C596
			/// @DnDParent : 124E249F
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "GURCHENIS.EYEBEAM"
			if(state == GURCHENIS.EYEBEAM){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 209D0325
				/// @DnDParent : 7EF5C596
				/// @DnDArgument : "expr" "400"
				/// @DnDArgument : "var" "cooldown"
				cooldown = 400;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7D001E33
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.INITWING"
	case GURCHENIS.INITWING:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3618126D
		/// @DnDParent : 7D001E33
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 494E9058
		/// @DnDInput : 3
		/// @DnDParent : 7D001E33
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "script" "scr_approach"
		/// @DnDArgument : "arg" "x"
		/// @DnDArgument : "arg_1" "destination_x"
		/// @DnDArgument : "arg_2" "clamp(speed_force,0,15)"
		/// @DnDSaveInfo : "script" "scr_approach"
		x = script_execute(scr_approach, x, destination_x, clamp(speed_force,0,15));
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 18E074E3
		/// @DnDInput : 3
		/// @DnDParent : 7D001E33
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "script" "scr_approach"
		/// @DnDArgument : "arg" "y"
		/// @DnDArgument : "arg_1" "destination_y"
		/// @DnDArgument : "arg_2" "clamp(speed_force,0,15)"
		/// @DnDSaveInfo : "script" "scr_approach"
		y = script_execute(scr_approach, y, destination_y, clamp(speed_force,0,15));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63C42E85
		/// @DnDInput : 2
		/// @DnDParent : 7D001E33
		/// @DnDArgument : "expr" "(-1*anger)*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" ".1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "var_1" "speed_force"
		cooldown += (-1*anger)*global.game_speed;
		speed_force += .1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CA1E27B
		/// @DnDInput : 2
		/// @DnDParent : 7D001E33
		/// @DnDArgument : "expr" "hsp*power(.6,global.game_speed)"
		/// @DnDArgument : "expr_1" "vsp*power(.6,global.game_speed)"
		/// @DnDArgument : "var" "hsp"
		/// @DnDArgument : "var_1" "vsp"
		hsp = hsp*power(.6,global.game_speed);
		vsp = vsp*power(.6,global.game_speed);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04BD98F5
		/// @DnDParent : 7D001E33
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 1352A9C2
			/// @DnDInput : 2
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "GURCHENIS.JUMP"
			/// @DnDArgument : "option_1" "GURCHENIS.FLY"
			state = choose(GURCHENIS.JUMP, GURCHENIS.FLY);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 497AC5D4
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "var" "anger"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "2"
			if(anger >= 2){	/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 55495FA1
				/// @DnDInput : 3
				/// @DnDParent : 497AC5D4
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "option" "GURCHENIS.FLY"
				/// @DnDArgument : "option_1" "GURCHENIS.JUMP"
				/// @DnDArgument : "option_2" "GURCHENIS.EYEBEAM"
				state = choose(GURCHENIS.FLY, GURCHENIS.JUMP, GURCHENIS.EYEBEAM);}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 372E9C57
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "speed_force"
			speed_force = 2;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4833C86D
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "expr" "200"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 200;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16B5A679
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "GURCHENIS.JUMP"
			if(state == GURCHENIS.JUMP){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 207FDB72
				/// @DnDInput : 2
				/// @DnDParent : 16B5A679
				/// @DnDArgument : "expr" "50"
				/// @DnDArgument : "expr_1" "-30"
				/// @DnDArgument : "var" "cooldown"
				/// @DnDArgument : "var_1" "vsp"
				cooldown = 50;
				vsp = -30;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 30FD578E
				/// @DnDParent : 16B5A679
				/// @DnDArgument : "soundid" "sfx_hop"
				/// @DnDArgument : "gain" "3"
				/// @DnDArgument : "pitch" ".3"
				/// @DnDSaveInfo : "soundid" "sfx_hop"
				audio_play_sound(sfx_hop, 0, 0, 3, undefined, .3);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 00D4CD7F
				/// @DnDParent : 16B5A679
				/// @DnDArgument : "script" "scr_afterimage"
				/// @DnDSaveInfo : "script" "scr_afterimage"
				script_execute(scr_afterimage);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37E3A6CF
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "GURCHENIS.FLY"
			if(state == GURCHENIS.FLY){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 3BB20622
				/// @DnDParent : 37E3A6CF
				/// @DnDArgument : "script" "face_gunna"
				/// @DnDSaveInfo : "script" "face_gunna"
				script_execute(face_gunna);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F90A215
			/// @DnDParent : 04BD98F5
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "GURCHENIS.EYEBEAM"
			if(state == GURCHENIS.EYEBEAM){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3AB46FB2
				/// @DnDParent : 2F90A215
				/// @DnDArgument : "expr" "600"
				/// @DnDArgument : "var" "cooldown"
				cooldown = 600;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0B9F3096
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.FLY"
	case GURCHENIS.FLY:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2250AFA1
		/// @DnDParent : 0B9F3096
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 043F8D14
		/// @DnDParent : 0B9F3096
		/// @DnDArgument : "x" "hsp"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solid"
		/// @DnDSaveInfo : "object" "o_solid"
		var l043F8D14_0 = instance_place(x + hsp, y + 0, [o_solid]);if ((l043F8D14_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 176D10D6
			/// @DnDInput : 2
			/// @DnDParent : 043F8D14
			/// @DnDArgument : "expr" "-facing"
			/// @DnDArgument : "expr_1" "-hsp"
			/// @DnDArgument : "var" "facing"
			/// @DnDArgument : "var_1" "hsp"
			facing = -facing;
			hsp = -hsp;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 102DC324
			/// @DnDParent : 043F8D14
			/// @DnDArgument : "script" "scr_screenshake"
			/// @DnDSaveInfo : "script" "scr_screenshake"
			script_execute(scr_screenshake);}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A253E01
		/// @DnDInput : 3
		/// @DnDParent : 0B9F3096
		/// @DnDArgument : "expr" "facing*2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_2" "(-1/anger)*global.game_speed"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "hsp"
		/// @DnDArgument : "var_1" "vsp"
		/// @DnDArgument : "var_2" "cooldown"
		hsp += facing*2;
		vsp = -1;
		cooldown += (-1/anger)*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C227CFE
		/// @DnDParent : 0B9F3096
		/// @DnDArgument : "var" "floor(cooldown)%floor(10/anger)"
		if(floor(cooldown)%floor(10/anger) == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 298E1F18
			/// @DnDParent : 4C227CFE
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "o_gurch_bubble"
			/// @DnDSaveInfo : "objectid" "o_gurch_bubble"
			instance_create_layer(x + 0, y + 0, "Instances", o_gurch_bubble);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7BBFFBBB
			/// @DnDParent : 4C227CFE
			/// @DnDArgument : "soundid" "sfx_waterdrop"
			/// @DnDArgument : "pitch" "random_range(.3,.5)"
			/// @DnDSaveInfo : "soundid" "sfx_waterdrop"
			audio_play_sound(sfx_waterdrop, 0, 0, 1.0, undefined, random_range(.3,.5));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44BDF133
			/// @DnDParent : 4C227CFE
			/// @DnDArgument : "expr" "floor(cooldown)-1"
			/// @DnDArgument : "var" "cooldown"
			cooldown = floor(cooldown)-1;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C2F1D7C
		/// @DnDParent : 0B9F3096
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79745170
			/// @DnDInput : 2
			/// @DnDParent : 1C2F1D7C
			/// @DnDArgument : "expr" "GURCHENIS.FLOAT"
			/// @DnDArgument : "expr_1" "300"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "cooldown"
			state = GURCHENIS.FLOAT;
			cooldown = 300;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FB153F8
			/// @DnDParent : 1C2F1D7C
			/// @DnDArgument : "var" "anger"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "2"
			if(anger >= 2){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6A05AADD
				/// @DnDInput : 3
				/// @DnDParent : 4FB153F8
				/// @DnDArgument : "expr" "GURCHENIS.JUMP"
				/// @DnDArgument : "expr_1" "-60"
				/// @DnDArgument : "expr_2" "100"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "vsp"
				/// @DnDArgument : "var_2" "cooldown"
				state = GURCHENIS.JUMP;
				vsp = -60;
				cooldown = 100;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 29D0C728
				/// @DnDParent : 4FB153F8
				/// @DnDArgument : "soundid" "sfx_hop"
				/// @DnDArgument : "gain" "3"
				/// @DnDArgument : "pitch" ".3"
				/// @DnDSaveInfo : "soundid" "sfx_hop"
				audio_play_sound(sfx_hop, 0, 0, 3, undefined, .3);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 1B717799
				/// @DnDParent : 4FB153F8
				/// @DnDArgument : "script" "scr_afterimage"
				/// @DnDSaveInfo : "script" "scr_afterimage"
				script_execute(scr_afterimage);}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5D3E09EA
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.JUMP"
	case GURCHENIS.JUMP:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15F069BB
		/// @DnDParent : 5D3E09EA
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 361CE683
		/// @DnDParent : 5D3E09EA
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23B3785C
		/// @DnDParent : 5D3E09EA
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6681D6CE
			/// @DnDParent : 23B3785C
			/// @DnDArgument : "var" "vsp"
			/// @DnDArgument : "op" "4"
			if(vsp >= 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2211CB8B
				/// @DnDInput : 4
				/// @DnDParent : 6681D6CE
				/// @DnDArgument : "expr" "GURCHENIS.CRASH"
				/// @DnDArgument : "expr_1" "o_player.x+random_range(-20,20)"
				/// @DnDArgument : "expr_2" "20"
				/// @DnDArgument : "expr_3" "o_player.y"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "x"
				/// @DnDArgument : "var_2" "vsp"
				/// @DnDArgument : "var_3" "destination_y"
				state = GURCHENIS.CRASH;
				x = o_player.x+random_range(-20,20);
				vsp = 20;
				destination_y = o_player.y;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 7893C49B
				/// @DnDParent : 6681D6CE
				/// @DnDArgument : "script" "face_gunna"
				/// @DnDSaveInfo : "script" "face_gunna"
				script_execute(face_gunna);
			
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 4D3ABB7E
				/// @DnDParent : 6681D6CE
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "target" "stuck"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "object" "o_solid"
				/// @DnDSaveInfo : "object" "o_solid"
				var l4D3ABB7E_0 = instance_place(x + 0, y + 0, [o_solid]);
				var stuck = l4D3ABB7E_0;if ((l4D3ABB7E_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 45BCC7F9
					/// @DnDParent : 4D3ABB7E
					/// @DnDArgument : "expr" "facing*400"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "x"
					x += facing*400;}}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 525E8225
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.CRASH"
	case GURCHENIS.CRASH:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EBDAD2E
		/// @DnDInput : 2
		/// @DnDParent : 525E8225
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "vsp/40"
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "var_1" "squash"
		facing = 1;
		squash = vsp/40;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5682D2C9
		/// @DnDParent : 525E8225
		/// @DnDArgument : "script" "scr_afterimage"
		/// @DnDSaveInfo : "script" "scr_afterimage"
		script_execute(scr_afterimage);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 285FA746
		/// @DnDParent : 525E8225
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 585A91C3
		/// @DnDParent : 525E8225
		/// @DnDArgument : "expr" "on_ground"
		if(on_ground){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5F1028AD
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "soundid" "gurchenis_grunt4"
			/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
			/// @DnDSaveInfo : "soundid" "gurchenis_grunt4"
			audio_play_sound(gurchenis_grunt4, 0, 0, 1.0, undefined, random_range(0.8,1.2));
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 421FBFE7
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "soundid" "sfx_explosion"
			/// @DnDArgument : "gain" ".7"
			/// @DnDArgument : "pitch" "random_range(.8,1.2)"
			/// @DnDSaveInfo : "soundid" "sfx_explosion"
			audio_play_sound(sfx_explosion, 0, 0, .7, undefined, random_range(.8,1.2));
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 49B4643F
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "soundid" "sfx_smash"
			/// @DnDArgument : "gain" ".5"
			/// @DnDSaveInfo : "soundid" "sfx_smash"
			audio_play_sound(sfx_smash, 0, 0, .5, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3A647C85
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "bbox_bottom"
			/// @DnDArgument : "var" "gloza"
			/// @DnDArgument : "objectid" "o_geyser"
			/// @DnDSaveInfo : "objectid" "o_geyser"
			gloza = instance_create_layer(x + 0, bbox_bottom, "Instances", o_geyser);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63A9534B
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "expr" "10"
			/// @DnDArgument : "var" "gloza.scaale"
			gloza.scaale = 10;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1ACD7A5C
			/// @DnDInput : 2
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "script" "scr_screenshake"
			/// @DnDArgument : "arg" "random_range(-10,10)"
			/// @DnDArgument : "arg_1" "50"
			/// @DnDSaveInfo : "script" "scr_screenshake"
			script_execute(scr_screenshake, random_range(-10,10), 50);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7794F3EF
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "bbox_bottom"
			/// @DnDArgument : "var" "gloza"
			/// @DnDArgument : "objectid" "o_cont_geyser_maker"
			/// @DnDSaveInfo : "objectid" "o_cont_geyser_maker"
			gloza = instance_create_layer(x + 0, bbox_bottom, "Instances", o_cont_geyser_maker);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FEA7C38
			/// @DnDInput : 2
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_1" "45*clamp(anger,1,1.4)"
			/// @DnDArgument : "var" "gloza.facing"
			/// @DnDArgument : "var_1" "gloza.length"
			gloza.facing = -1;
			gloza.length = 45*clamp(anger,1,1.4);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2E86CCE7
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "bbox_bottom"
			/// @DnDArgument : "var" "gloza"
			/// @DnDArgument : "objectid" "o_cont_geyser_maker"
			/// @DnDSaveInfo : "objectid" "o_cont_geyser_maker"
			gloza = instance_create_layer(x + 0, bbox_bottom, "Instances", o_cont_geyser_maker);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 498931E4
			/// @DnDInput : 2
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "45*clamp(anger,1,1.4)"
			/// @DnDArgument : "var" "gloza.facing"
			/// @DnDArgument : "var_1" "gloza.length"
			gloza.facing = 1;
			gloza.length = 45*clamp(anger,1,1.4);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C2E388E
			/// @DnDInput : 2
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "expr_1" "GURCHENIS.IDLE"
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "var_1" "state"
			cooldown = 100;
			state = GURCHENIS.IDLE;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 410944E6
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.EYEBEAM"
	case GURCHENIS.EYEBEAM:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 46FC0B97
		/// @DnDInput : 3
		/// @DnDParent : 410944E6
		/// @DnDArgument : "var" "destination_x"
		/// @DnDArgument : "script" "scr_approach"
		/// @DnDArgument : "arg" "destination_x"
		/// @DnDArgument : "arg_1" "target.x"
		/// @DnDArgument : "arg_2" "point_distance(destination_x, 0, target.x, 0)/45"
		/// @DnDSaveInfo : "script" "scr_approach"
		destination_x = script_execute(scr_approach, destination_x, target.x, point_distance(destination_x, 0, target.x, 0)/45);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2DD57518
		/// @DnDInput : 3
		/// @DnDParent : 410944E6
		/// @DnDArgument : "var" "destination_y"
		/// @DnDArgument : "script" "scr_approach"
		/// @DnDArgument : "arg" "destination_y"
		/// @DnDArgument : "arg_1" "target.y-47"
		/// @DnDArgument : "arg_2" "point_distance(destination_y, 0, target.y-47, 0)/45"
		/// @DnDSaveInfo : "script" "scr_approach"
		destination_y = script_execute(scr_approach, destination_y, target.y-47, point_distance(destination_y, 0, target.y-47, 0)/45);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78958D01
		/// @DnDInput : 4
		/// @DnDParent : 410944E6
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" ".5*global.game_speed"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "random_range(-2,2)"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "expr_3" "random_range(-2,2)"
		/// @DnDArgument : "expr_relative_3" "1"
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "var_1" "speed_force"
		/// @DnDArgument : "var_2" "x"
		/// @DnDArgument : "var_3" "y"
		cooldown += -1*global.game_speed;
		speed_force += .5*global.game_speed;
		x += random_range(-2,2);
		y += random_range(-2,2);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D7FD3E4
		/// @DnDParent : 410944E6
		/// @DnDArgument : "var" "floor(speed_force)/60"
		/// @DnDArgument : "value" "1"
		if(floor(speed_force)/60 == 1){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 304F3C7F
			/// @DnDParent : 6D7FD3E4
			/// @DnDArgument : "script" "scr_white_flash"
			/// @DnDArgument : "arg" ".5"
			/// @DnDSaveInfo : "script" "scr_white_flash"
			script_execute(scr_white_flash, .5);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 076F84F8
			/// @DnDParent : 6D7FD3E4
			/// @DnDArgument : "soundid" "gurchenis_grunt3"
			/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
			/// @DnDSaveInfo : "soundid" "gurchenis_grunt3"
			audio_play_sound(gurchenis_grunt3, 0, 0, 1.0, undefined, random_range(0.8,1.2));
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 706BB30A
			/// @DnDParent : 6D7FD3E4
			/// @DnDArgument : "soundid" "cablew"
			/// @DnDArgument : "gain" "2"
			/// @DnDArgument : "pitch" ".6"
			/// @DnDSaveInfo : "soundid" "cablew"
			audio_play_sound(cablew, 0, 0, 2, undefined, .6);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 113CF3EA
			/// @DnDParent : 6D7FD3E4
			/// @DnDArgument : "expr" "61"
			/// @DnDArgument : "var" "speed_force"
			speed_force = 61;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63466E16
		/// @DnDParent : 410944E6
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D4A7217
			/// @DnDInput : 2
			/// @DnDParent : 63466E16
			/// @DnDArgument : "expr" "GURCHENIS.IDLE"
			/// @DnDArgument : "expr_1" "200"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "cooldown"
			state = GURCHENIS.IDLE;
			cooldown = 200;
		
			/// @DnDAction : YoYo Games.Data Structures.DS_Clear
			/// @DnDVersion : 1
			/// @DnDHash : 0B510202
			/// @DnDParent : 63466E16
			/// @DnDArgument : "var" "collided_with"
			ds_list_clear(collided_with);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 24207CA9
			/// @DnDParent : 63466E16
			/// @DnDArgument : "soundid" "gurchenis_grunt1"
			/// @DnDSaveInfo : "soundid" "gurchenis_grunt1"
			audio_play_sound(gurchenis_grunt1, 0, 0, 1.0, undefined, 1.0);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 17C7DEE2
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "GURCHENIS.HAILMARY"
	case GURCHENIS.HAILMARY:	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 658092DC
		/// @DnDParent : 17C7DEE2
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02AE2C73
			/// @DnDInput : 2
			/// @DnDParent : 658092DC
			/// @DnDArgument : "expr" "GURCHENIS.IDLE"
			/// @DnDArgument : "expr_1" "300"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "cooldown"
			state = GURCHENIS.IDLE;
			cooldown = 300;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DC06363
		/// @DnDInput : 4
		/// @DnDParent : 17C7DEE2
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" ".2*global.game_speed"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "random_range(-2,2)"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "expr_3" "random_range(-2,2)"
		/// @DnDArgument : "expr_relative_3" "1"
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "var_1" "speed_force"
		/// @DnDArgument : "var_2" "x"
		/// @DnDArgument : "var_3" "y"
		cooldown += -1*global.game_speed;
		speed_force += .2*global.game_speed;
		x += random_range(-2,2);
		y += random_range(-2,2);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C2A1C6D
		/// @DnDParent : 17C7DEE2
		/// @DnDArgument : "var" "speed_force"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "24"
		if(speed_force >= 24){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E1F21AA
			/// @DnDParent : 1C2A1C6D
			/// @DnDArgument : "expr" ".3*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "speed_force"
			speed_force += .3*global.game_speed;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74EE295C
			/// @DnDParent : 1C2A1C6D
			/// @DnDArgument : "var" "floor(speed_force)/24"
			/// @DnDArgument : "value" "1"
			if(floor(speed_force)/24 == 1){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 0BE1BF1A
				/// @DnDParent : 74EE295C
				/// @DnDArgument : "soundid" "gurchenis_hailmaryogg"
				/// @DnDSaveInfo : "soundid" "gurchenis_hailmaryogg"
				audio_play_sound(gurchenis_hailmaryogg, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 6C9C5186
				/// @DnDParent : 74EE295C
				/// @DnDArgument : "times" "15"
				repeat(15){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 3D63EE9B
					/// @DnDParent : 6C9C5186
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "minion"
					/// @DnDArgument : "objectid" "o_enemy_walkah"
					/// @DnDSaveInfo : "objectid" "o_enemy_walkah"
					minion = instance_create_layer(x + 0, y + 0, "Instances", o_enemy_walkah);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3622E2D1
					/// @DnDInput : 4
					/// @DnDParent : 6C9C5186
					/// @DnDArgument : "expr" "random_range(-30,-10)"
					/// @DnDArgument : "expr_1" "random_range(-20,20)"
					/// @DnDArgument : "expr_2" "true"
					/// @DnDArgument : "expr_3" "false"
					/// @DnDArgument : "var" "minion.vsp"
					/// @DnDArgument : "var_1" "minion.hsp"
					/// @DnDArgument : "var_2" "minion.gurchenis_buff"
					/// @DnDArgument : "var_3" "minion.contributes_to_wave"
					minion.vsp = random_range(-30,-10);
					minion.hsp = random_range(-20,20);
					minion.gurchenis_buff = true;
					minion.contributes_to_wave = false;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7CB67D71
					/// @DnDParent : 6C9C5186
					/// @DnDArgument : "expr" "minion.hsp*2"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "minion.x"
					minion.x += minion.hsp*2;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 2ACA788C
					/// @DnDApplyTo : minion
					/// @DnDParent : 6C9C5186
					/// @DnDArgument : "script" "face_pylon"
					/// @DnDSaveInfo : "script" "face_pylon"
					with(minion) {
						script_execute(face_pylon);
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 08223EF4
					/// @DnDParent : 6C9C5186
					/// @DnDArgument : "expr" "minion.facing*-10"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "minion.hsp"
					minion.hsp += minion.facing*-10;}
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 7CFE92DF
				/// @DnDParent : 74EE295C
				/// @DnDArgument : "times" "4"
				repeat(4){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 646E0040
					/// @DnDParent : 7CFE92DF
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "minion"
					/// @DnDArgument : "objectid" "o_fat_enemy_walkah"
					/// @DnDSaveInfo : "objectid" "o_fat_enemy_walkah"
					minion = instance_create_layer(x + 0, y + 0, "Instances", o_fat_enemy_walkah);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6A59A330
					/// @DnDInput : 4
					/// @DnDParent : 7CFE92DF
					/// @DnDArgument : "expr" "random_range(-30,-10)"
					/// @DnDArgument : "expr_1" "random_range(-20,20)"
					/// @DnDArgument : "expr_2" "true"
					/// @DnDArgument : "expr_3" "false"
					/// @DnDArgument : "var" "minion.vsp"
					/// @DnDArgument : "var_1" "minion.hsp"
					/// @DnDArgument : "var_2" "minion.gurchenis_buff"
					/// @DnDArgument : "var_3" "minion.contributes_to_wave"
					minion.vsp = random_range(-30,-10);
					minion.hsp = random_range(-20,20);
					minion.gurchenis_buff = true;
					minion.contributes_to_wave = false;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 761F7BD8
					/// @DnDParent : 7CFE92DF
					/// @DnDArgument : "expr" "minion.hsp*2"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "minion.x"
					minion.x += minion.hsp*2;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 6AF1220D
					/// @DnDApplyTo : minion
					/// @DnDParent : 7CFE92DF
					/// @DnDArgument : "script" "face_pylon"
					/// @DnDSaveInfo : "script" "face_pylon"
					with(minion) {
						script_execute(face_pylon);
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 00339483
					/// @DnDParent : 7CFE92DF
					/// @DnDArgument : "expr" "minion.facing*10"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "minion.hsp"
					minion.hsp += minion.facing*10;}
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 32C55AB0
				/// @DnDParent : 74EE295C
				/// @DnDArgument : "times" "3"
				repeat(3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 349E7628
					/// @DnDParent : 32C55AB0
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "minion"
					/// @DnDArgument : "objectid" "o_enemy_blugunna"
					/// @DnDSaveInfo : "objectid" "o_enemy_blugunna"
					minion = instance_create_layer(x + 0, y + 0, "Instances", o_enemy_blugunna);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7A8A0193
					/// @DnDInput : 4
					/// @DnDParent : 32C55AB0
					/// @DnDArgument : "expr" "random_range(-30,-10)"
					/// @DnDArgument : "expr_1" "random_range(-20,20)"
					/// @DnDArgument : "expr_2" "true"
					/// @DnDArgument : "expr_3" "false"
					/// @DnDArgument : "var" "minion.vsp"
					/// @DnDArgument : "var_1" "minion.hsp"
					/// @DnDArgument : "var_2" "minion.gurchenis_buff"
					/// @DnDArgument : "var_3" "minion.contributes_to_wave"
					minion.vsp = random_range(-30,-10);
					minion.hsp = random_range(-20,20);
					minion.gurchenis_buff = true;
					minion.contributes_to_wave = false;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4510BE47
					/// @DnDParent : 32C55AB0
					/// @DnDArgument : "expr" "minion.hsp*2"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "minion.x"
					minion.x += minion.hsp*2;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 06FB581B
					/// @DnDApplyTo : minion
					/// @DnDParent : 32C55AB0
					/// @DnDArgument : "script" "face_pylon"
					/// @DnDSaveInfo : "script" "face_pylon"
					with(minion) {
						script_execute(face_pylon);
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 32D42A44
					/// @DnDParent : 32C55AB0
					/// @DnDArgument : "expr" "minion.facing*10"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "minion.hsp"
					minion.hsp += minion.facing*10;}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 70B37628
				/// @DnDParent : 74EE295C
				/// @DnDArgument : "expr" "floor(speed_force)+1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "speed_force"
				speed_force += floor(speed_force)+1;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 3B181C79
				/// @DnDParent : 74EE295C
				/// @DnDArgument : "script" "play_kill_sound"
				/// @DnDArgument : "arg" "2"
				/// @DnDSaveInfo : "script" "play_kill_sound"
				script_execute(play_kill_sound, 2);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6203F8F8
			/// @DnDParent : 1C2A1C6D
			/// @DnDArgument : "var" "floor(cooldown)%10"
			if(floor(cooldown)%10 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 4F6BD3AF
				/// @DnDParent : 6203F8F8
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "joe"
				/// @DnDArgument : "objectid" "o_gurch_bubble"
				/// @DnDSaveInfo : "objectid" "o_gurch_bubble"
				joe = instance_create_layer(x + 0, y + 0, "Instances", o_gurch_bubble);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7644509D
				/// @DnDInput : 2
				/// @DnDParent : 6203F8F8
				/// @DnDArgument : "expr" "random_range(-30,30)*(speed_force/200)"
				/// @DnDArgument : "expr_1" "random_range(-30,30)*(speed_force/200)"
				/// @DnDArgument : "var" "joe.hsp"
				/// @DnDArgument : "var_1" "joe.vsp"
				joe.hsp = random_range(-30,30)*(speed_force/200);
				joe.vsp = random_range(-30,30)*(speed_force/200);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 54312B25
				/// @DnDParent : 6203F8F8
				/// @DnDArgument : "soundid" "sfx_waterdrop"
				/// @DnDArgument : "pitch" "random_range(.3,.5)"
				/// @DnDSaveInfo : "soundid" "sfx_waterdrop"
				audio_play_sound(sfx_waterdrop, 0, 0, 1.0, undefined, random_range(.3,.5));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 75014885
				/// @DnDParent : 6203F8F8
				/// @DnDArgument : "expr" "floor(cooldown)-1"
				/// @DnDArgument : "var" "cooldown"
				cooldown = floor(cooldown)-1;}}	break;}