/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F7E0AB5
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "GURCHENIS.CRASH"
if(state == GURCHENIS.CRASH){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3814A96D
	/// @DnDParent : 6F7E0AB5
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "destination_y"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "alpha" "vsp/20 -.5"
	/// @DnDArgument : "sprite" "gurchenis_crush_warning"
	/// @DnDArgument : "frame" "(floor(current_time*.03)%2)"
	/// @DnDSaveInfo : "sprite" "gurchenis_crush_warning"
	draw_sprite_ext(gurchenis_crush_warning, (floor(current_time*.03)%2), x, destination_y, 2, 2, 0, $FFFFFF & $ffffff, vsp/20 -.5);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1C5C1E72
	/// @DnDParent : 6F7E0AB5
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1-squash"
	/// @DnDArgument : "yscale" "1+squash"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1-squash, 1+squash, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1FA642AB
else{	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 78697A5D
	/// @DnDParent : 1FA642AB
	/// @DnDArgument : "script" "flash_operate"
	/// @DnDSaveInfo : "script" "flash_operate"
	script_execute(flash_operate);}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 208302DB
/// @DnDArgument : "expr" "state"
var l208302DB_0 = state;switch(l208302DB_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6D635130
	/// @DnDParent : 208302DB
	/// @DnDArgument : "const" "GURCHENIS.INITWING"
	case GURCHENIS.INITWING:	/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 4DE9FC68
		/// @DnDParent : 6D635130
		/// @DnDArgument : "init" "i = 1"
		/// @DnDArgument : "cond" "i < 5"
		for(i = 1; i < 5; i += 1) {	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 77FE78AD
			/// @DnDParent : 4DE9FC68
			/// @DnDArgument : "x" "sin((current_time/(1000*cooldown))+(pi/2)*i)*10*speed_force"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "cos((current_time/(1000*cooldown))+(pi/2)*i)*10*speed_force"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "alpha" ".5"
			/// @DnDArgument : "sprite" "sprite_index"
			/// @DnDArgument : "frame" "image_index"
			draw_sprite_ext(sprite_index, image_index, x + sin((current_time/(1000*cooldown))+(pi/2)*i)*10*speed_force, y + cos((current_time/(1000*cooldown))+(pi/2)*i)*10*speed_force, 1, 1, 0, $FFFFFF & $ffffff, .5);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 58B255D4
	/// @DnDParent : 208302DB
	/// @DnDArgument : "const" "GURCHENIS.EYEBEAM"
	case GURCHENIS.EYEBEAM:	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4274B6C5
		/// @DnDParent : 58B255D4
		/// @DnDArgument : "var" "speed_force"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "60"
		if(speed_force >= 60){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 55649857
			/// @DnDInput : 9
			/// @DnDParent : 4274B6C5
			/// @DnDArgument : "script" "scr_laser"
			/// @DnDArgument : "arg" "30"
			/// @DnDArgument : "arg_1" "-50"
			/// @DnDArgument : "arg_2" ".4"
			/// @DnDArgument : "arg_3" "o_player"
			/// @DnDArgument : "arg_4" "destination_x"
			/// @DnDArgument : "arg_5" "destination_y"
			/// @DnDArgument : "arg_6" "c_red"
			/// @DnDArgument : "arg_7" "c_maroon"
			/// @DnDArgument : "arg_8" "c_black"
			/// @DnDSaveInfo : "script" "scr_laser"
			script_execute(scr_laser, 30, -50, .4, o_player, destination_x, destination_y, c_red, c_maroon, c_black);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 01EA029B
			/// @DnDInput : 9
			/// @DnDParent : 4274B6C5
			/// @DnDArgument : "script" "scr_laser"
			/// @DnDArgument : "arg" "-30"
			/// @DnDArgument : "arg_1" "-50"
			/// @DnDArgument : "arg_2" ".4"
			/// @DnDArgument : "arg_3" "o_player"
			/// @DnDArgument : "arg_4" "destination_x"
			/// @DnDArgument : "arg_5" "destination_y"
			/// @DnDArgument : "arg_6" "c_red"
			/// @DnDArgument : "arg_7" "c_maroon"
			/// @DnDArgument : "arg_8" "c_black"
			/// @DnDSaveInfo : "script" "scr_laser"
			script_execute(scr_laser, -30, -50, .4, o_player, destination_x, destination_y, c_red, c_maroon, c_black);
		
			/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
			/// @DnDVersion : 1
			/// @DnDHash : 696E55EE
			/// @DnDParent : 4274B6C5
			/// @DnDArgument : "soundid" "billybop"
			/// @DnDArgument : "not" "1"
			var l696E55EE_0 = billybop;if (!audio_is_playing(l696E55EE_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 21486156
				/// @DnDParent : 696E55EE
				/// @DnDArgument : "target" "billybop"
				/// @DnDArgument : "soundid" "laser_loop"
				/// @DnDArgument : "pitch" ".5+(speed_force/60)*.3"
				/// @DnDSaveInfo : "soundid" "laser_loop"
				billybop = audio_play_sound(laser_loop, 0, 0, 1.0, undefined, .5+(speed_force/60)*.3);
			
				/// @DnDAction : YoYo Games.Data Structures.DS_Clear
				/// @DnDVersion : 1
				/// @DnDHash : 2E76FC0A
				/// @DnDParent : 696E55EE
				/// @DnDArgument : "var" "collided_with"
				ds_list_clear(collided_with);}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3A828F76
		/// @DnDParent : 58B255D4
		else{	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 090B73A2
			/// @DnDInput : 9
			/// @DnDParent : 3A828F76
			/// @DnDArgument : "script" "scr_laser"
			/// @DnDArgument : "arg" "30"
			/// @DnDArgument : "arg_1" "-50"
			/// @DnDArgument : "arg_2" ".05"
			/// @DnDArgument : "arg_3" "noone"
			/// @DnDArgument : "arg_4" "destination_x"
			/// @DnDArgument : "arg_5" "destination_y"
			/// @DnDArgument : "arg_6" "c_maroon"
			/// @DnDArgument : "arg_7" "c_red"
			/// @DnDArgument : "arg_8" "c_white"
			/// @DnDSaveInfo : "script" "scr_laser"
			script_execute(scr_laser, 30, -50, .05, noone, destination_x, destination_y, c_maroon, c_red, c_white);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4E11FF34
			/// @DnDInput : 9
			/// @DnDParent : 3A828F76
			/// @DnDArgument : "script" "scr_laser"
			/// @DnDArgument : "arg" "-30"
			/// @DnDArgument : "arg_1" "-50"
			/// @DnDArgument : "arg_2" ".05"
			/// @DnDArgument : "arg_3" "noone"
			/// @DnDArgument : "arg_4" "destination_x"
			/// @DnDArgument : "arg_5" "destination_y"
			/// @DnDArgument : "arg_6" "c_maroon"
			/// @DnDArgument : "arg_7" "c_red"
			/// @DnDArgument : "arg_8" "c_white"
			/// @DnDSaveInfo : "script" "scr_laser"
			script_execute(scr_laser, -30, -50, .05, noone, destination_x, destination_y, c_maroon, c_red, c_white);}	break;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EC2D6D1
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1500"
if(hp <= 1500){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FD74D16
	/// @DnDParent : 2EC2D6D1
	/// @DnDArgument : "var" "anger"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "2"
	if(anger < 2){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7E96F21B
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "script" "scr_white_flash"
		/// @DnDArgument : "arg" ".3"
		/// @DnDSaveInfo : "script" "scr_white_flash"
		script_execute(scr_white_flash, .3);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5B138B4B
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "script" "scr_makeexplosion"
		/// @DnDSaveInfo : "script" "scr_makeexplosion"
		script_execute(scr_makeexplosion);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6CCAF1CD
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "soundid" "sfx_explosion"
		/// @DnDSaveInfo : "soundid" "sfx_explosion"
		audio_play_sound(sfx_explosion, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 70347168
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "soundid" "gurchenis_stressed1"
		/// @DnDSaveInfo : "soundid" "gurchenis_stressed1"
		audio_play_sound(gurchenis_stressed1, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 385C6CF8
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "soundid" "combat_gurchenis"
		/// @DnDSaveInfo : "soundid" "combat_gurchenis"
		var l385C6CF8_0 = combat_gurchenis;if (audio_is_playing(l385C6CF8_0)){	/// @DnDAction : YoYo Games.Audio.Audio_Set_Position
			/// @DnDVersion : 1
			/// @DnDHash : 18D1B59D
			/// @DnDParent : 385C6CF8
			/// @DnDArgument : "sound" "o_game.curr_song"
			/// @DnDArgument : "time" "111.91"
			audio_sound_set_track_position(o_game.curr_song, 111.91);
		
			/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_End
			/// @DnDVersion : 1
			/// @DnDHash : 6107B005
			/// @DnDParent : 385C6CF8
			/// @DnDArgument : "idx" "o_game.curr_song"
			/// @DnDArgument : "offset" "174.09"
			audio_sound_loop_end(o_game.curr_song, 174.09);
		
			/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_Start
			/// @DnDVersion : 1
			/// @DnDHash : 168B97E1
			/// @DnDParent : 385C6CF8
			/// @DnDArgument : "idx" "o_game.curr_song"
			/// @DnDArgument : "offset" "124.35"
			audio_sound_loop_start(o_game.curr_song, 124.35);}
	
		/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
		/// @DnDVersion : 1
		/// @DnDHash : 15589373
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "visible" "1"
		/// @DnDArgument : "layer" "layer_get_id("Effect_4")"
		layer_set_visible(layer_get_id("Effect_4"), 1);
	
		/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
		/// @DnDVersion : 1
		/// @DnDHash : 04E06D34
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "visible" "1"
		/// @DnDArgument : "layer" "layer_get_id("Effect_5")"
		layer_set_visible(layer_get_id("Effect_5"), 1);
	
		/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
		/// @DnDVersion : 1
		/// @DnDHash : 08AC0AD0
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "visible" "1"
		/// @DnDArgument : "layer" "layer_get_id("gurchenis_background")"
		layer_set_visible(layer_get_id("gurchenis_background"), 1);
	
		/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
		/// @DnDVersion : 1
		/// @DnDHash : 20A308AB
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "visible" "1"
		/// @DnDArgument : "layer" "layer_get_id("Effect_3")"
		layer_set_visible(layer_get_id("Effect_3"), 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 426C577A
		/// @DnDInput : 2
		/// @DnDParent : 5FD74D16
		/// @DnDArgument : "expr" "GURCHENIS.HAILMARY"
		/// @DnDArgument : "expr_1" "1000"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "cooldown"
		state = GURCHENIS.HAILMARY;
		cooldown = 1000;}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 04037912
	/// @DnDParent : 2EC2D6D1
	/// @DnDArgument : "script" "scr_gurchenisaura"
	/// @DnDSaveInfo : "script" "scr_gurchenisaura"
	script_execute(scr_gurchenisaura);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4471D9CB
	/// @DnDParent : 2EC2D6D1
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "anger"
	anger = 2;}