/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 09F980E0
/// @DnDArgument : "expr" "facing"
/// @DnDArgument : "var" "clawbaby.image_xscale"
clawbaby.image_xscale = facing;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BA1360E
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "25"
if(hp < 25)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 752E6A9F
	/// @DnDInput : 2
	/// @DnDParent : 5BA1360E
	/// @DnDArgument : "expr" "s_gunclaw_fuckidle"
	/// @DnDArgument : "expr_1" "irandom_range(0,2)"
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "var_1" "image_index"
	sprite_index = s_gunclaw_fuckidle;
	image_index = irandom_range(0,2);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D46B622
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53028CB4
	/// @DnDParent : 4D46B622
	/// @DnDArgument : "expr" "gunclaw.DIE"
	/// @DnDArgument : "var" "state"
	state = gunclaw.DIE;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F374E10
/// @DnDArgument : "expr" "gun_x*.7"
/// @DnDArgument : "var" "gun_x"
gun_x = gun_x*.7;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0BE4DE19
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5D101941
/// @DnDArgument : "expr" "state"
var l5D101941_0 = state;
switch(l5D101941_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0123A8D2
	/// @DnDParent : 5D101941
	/// @DnDArgument : "const" "gunclaw.DIE"
	case gunclaw.DIE:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7D4B0439
		/// @DnDInput : 2
		/// @DnDParent : 0123A8D2
		/// @DnDArgument : "script" "easy_cam_set_zoom"
		/// @DnDArgument : "arg" "o_camera"
		/// @DnDArgument : "arg_1" "cooldown+1"
		/// @DnDSaveInfo : "script" "easy_cam_set_zoom"
		script_execute(easy_cam_set_zoom, o_camera, cooldown+1);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5A7AC898
		/// @DnDParent : 0123A8D2
		/// @DnDArgument : "xpos" "irandom_range(-40,40)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "irandom_range(-60,0)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_explosion"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_explosion"
		instance_create_layer(x + irandom_range(-40,40), y + irandom_range(-60,0), "Effects", e_explosion);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0C8110DE
		/// @DnDParent : 0123A8D2
		/// @DnDArgument : "xpos" "irandom_range(-40,40)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "irandom_range(-60,0)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
		instance_create_layer(x + irandom_range(-40,40), y + irandom_range(-60,0), "Effects", e_enemy_walkah_shit);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 23ABB9D5
		/// @DnDParent : 0123A8D2
		/// @DnDArgument : "soundid" "sfx_smallboom"
		/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
		/// @DnDSaveInfo : "soundid" "sfx_smallboom"
		audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, random_range(0.9,1.1));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59CD8C7F
		/// @DnDParent : 0123A8D2
		/// @DnDArgument : "expr" "cooldown*.9"
		/// @DnDArgument : "var" "cooldown"
		cooldown = cooldown*.9;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6686A0E9
		/// @DnDParent : 0123A8D2
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Sequences.Sequence_Create
			/// @DnDVersion : 1
			/// @DnDHash : 6A6DA990
			/// @DnDParent : 6686A0E9
			/// @DnDArgument : "xpos" "o_camera.x"
			/// @DnDArgument : "ypos" "o_camera.y"
			/// @DnDArgument : "sequenceid" "boss0end"
			/// @DnDArgument : "layer" ""Instances""
			/// @DnDSaveInfo : "sequenceid" "boss0end"
			variable = layer_sequence_create("Instances", o_camera.x, o_camera.y, boss0end);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6F58F25F
			/// @DnDInput : 2
			/// @DnDParent : 6686A0E9
			/// @DnDArgument : "script" "easy_cam_set_zoom"
			/// @DnDArgument : "arg" "o_camera"
			/// @DnDArgument : "arg_1" "1"
			/// @DnDSaveInfo : "script" "easy_cam_set_zoom"
			script_execute(easy_cam_set_zoom, o_camera, 1);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0E592206
			/// @DnDParent : 6686A0E9
			/// @DnDArgument : "script" "incr_score"
			/// @DnDArgument : "arg" "15"
			/// @DnDSaveInfo : "script" "incr_score"
			script_execute(incr_score, 15);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0CA69C02
			/// @DnDParent : 6686A0E9
			/// @DnDArgument : "script" "scr_makeexplosion"
			/// @DnDSaveInfo : "script" "scr_makeexplosion"
			script_execute(scr_makeexplosion);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 57C1A6AD
			/// @DnDParent : 6686A0E9
			/// @DnDArgument : "soundid" "sfx_Complete_Destruction"
			/// @DnDSaveInfo : "soundid" "sfx_Complete_Destruction"
			audio_play_sound(sfx_Complete_Destruction, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 235ADEDD
			/// @DnDApplyTo : clawbaby
			/// @DnDParent : 6686A0E9
			with(clawbaby) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 62F22F14
			/// @DnDParent : 6686A0E9
			instance_destroy();
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2FEDA23C
	/// @DnDParent : 5D101941
	/// @DnDArgument : "const" "gunclaw.IDLE"
	case gunclaw.IDLE:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52244AB9
		/// @DnDParent : 2FEDA23C
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "think"
		think += -1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 542A8A58
		/// @DnDParent : 2FEDA23C
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 13DF0AD2
		/// @DnDParent : 2FEDA23C
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2459F607
		/// @DnDParent : 2FEDA23C
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "op" "3"
		if(think <= 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 79D4E9BB
			/// @DnDInput : 2
			/// @DnDParent : 2459F607
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "gunclaw.ATTACK1"
			/// @DnDArgument : "option_1" "gunclaw.ATTACK2"
			state = choose(gunclaw.ATTACK1, gunclaw.ATTACK2);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 783EE3D9
			/// @DnDInput : 3
			/// @DnDParent : 2459F607
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "expr_1" "-sign(x-o_player.x)"
			/// @DnDArgument : "expr_2" "facing*8"
			/// @DnDArgument : "var" "think"
			/// @DnDArgument : "var_1" "facing"
			/// @DnDArgument : "var_2" "hsp"
			think = 30;
			facing = -sign(x-o_player.x);
			hsp = facing*8;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7CEE6F34
			/// @DnDParent : 2459F607
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "gunclaw.ATTACK2"
			if(state == gunclaw.ATTACK2)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5727A5EB
				/// @DnDInput : 3
				/// @DnDParent : 7CEE6F34
				/// @DnDArgument : "expr" "9"
				/// @DnDArgument : "expr_1" "-15"
				/// @DnDArgument : "expr_2" "90"
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "var_1" "vsp"
				/// @DnDArgument : "var_2" "think"
				hsp = 9;
				vsp = -15;
				think = 90;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 75008997
				/// @DnDParent : 7CEE6F34
				/// @DnDArgument : "script" "scr_afterimage"
				/// @DnDSaveInfo : "script" "scr_afterimage"
				script_execute(scr_afterimage);
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 103DFB72
	/// @DnDParent : 5D101941
	/// @DnDArgument : "const" "gunclaw.WALK"
	case gunclaw.WALK:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4336D122
		/// @DnDInput : 2
		/// @DnDParent : 103DFB72
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "facing*mover"
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "var_1" "hsp"
		think += -1;
		hsp = facing*mover;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1DFC5D34
		/// @DnDParent : 103DFB72
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7BC98E49
		/// @DnDParent : 103DFB72
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F71ABB4
		/// @DnDParent : 103DFB72
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "op" "3"
		if(think <= 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 55C4538B
			/// @DnDInput : 2
			/// @DnDParent : 3F71ABB4
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "gunclaw.IDLE"
			/// @DnDArgument : "option_1" "gunclaw.ATTACK3"
			state = choose(gunclaw.IDLE, gunclaw.ATTACK3);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12DA4037
			/// @DnDInput : 2
			/// @DnDParent : 3F71ABB4
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "expr_1" "-sign(x-o_player.x)"
			/// @DnDArgument : "var" "think"
			/// @DnDArgument : "var_1" "facing"
			think = 20;
			facing = -sign(x-o_player.x);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67D82405
			/// @DnDParent : 3F71ABB4
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "gunclaw.ATTACK3"
			if(state == gunclaw.ATTACK3)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 22BC0E38
				/// @DnDParent : 67D82405
				/// @DnDArgument : "script" "scr_afterimage"
				/// @DnDSaveInfo : "script" "scr_afterimage"
				script_execute(scr_afterimage);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 028F4DCE
				/// @DnDInput : 4
				/// @DnDParent : 67D82405
				/// @DnDArgument : "expr" "-5"
				/// @DnDArgument : "expr_1" "300"
				/// @DnDArgument : "expr_2" "claw.ATTACK"
				/// @DnDArgument : "expr_3" "facing*10"
				/// @DnDArgument : "var" "clawbaby.clawpush"
				/// @DnDArgument : "var_1" "think"
				/// @DnDArgument : "var_2" "clawbaby.state"
				/// @DnDArgument : "var_3" "hsp"
				clawbaby.clawpush = -5;
				think = 300;
				clawbaby.state = claw.ATTACK;
				hsp = facing*10;
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3110B80D
	/// @DnDParent : 5D101941
	/// @DnDArgument : "const" "gunclaw.ATTACK1"
	case gunclaw.ATTACK1:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EB74DAD
		/// @DnDParent : 3110B80D
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "think"
		think += -1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 114F4EEC
		/// @DnDParent : 3110B80D
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4BC931F0
		/// @DnDParent : 3110B80D
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 454B3BC6
		/// @DnDParent : 3110B80D
		/// @DnDArgument : "var" "think mod 5"
		if(think mod 5 == 0)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0052EA1F
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "var" "creator"
			/// @DnDArgument : "value" "id"
			var creator = id;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 116A6672
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "xpos" "29*facing"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-20"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "flashhh"
			/// @DnDArgument : "objectid" "e_small_flash"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_small_flash"
			flashhh = instance_create_layer(x + 29*facing, y + -20, "Effects", e_small_flash);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 350C3738
			/// @DnDApplyTo : flashhh
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "value" "creator.facing"
			/// @DnDArgument : "instvar" "15"
			with(flashhh) {
			image_xscale = creator.facing;
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7E05B9C9
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "xpos" "29*facing"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-20"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bul"
			/// @DnDArgument : "objectid" "o_enemy_bullet"
			/// @DnDSaveInfo : "objectid" "o_enemy_bullet"
			bul = instance_create_layer(x + 29*facing, y + -20, "Instances", o_enemy_bullet);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 34DE26B2
			/// @DnDApplyTo : bul
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "value" "creator.facing*13"
			/// @DnDArgument : "instvar" "4"
			with(bul) {
			hspeed = creator.facing*13;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 713C76B0
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "expr" "6"
			/// @DnDArgument : "var" "gun_x"
			gun_x = 6;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 19276A3F
			/// @DnDParent : 454B3BC6
			/// @DnDArgument : "soundid" "sfx_shoot"
			/// @DnDSaveInfo : "soundid" "sfx_shoot"
			audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1078A974
		/// @DnDParent : 3110B80D
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "op" "3"
		if(think <= 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 20551DCE
			/// @DnDInput : 2
			/// @DnDParent : 1078A974
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "gunclaw.IDLE"
			/// @DnDArgument : "option_1" "gunclaw.WALK"
			state = choose(gunclaw.IDLE, gunclaw.WALK);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C678804
			/// @DnDParent : 1078A974
			/// @DnDArgument : "expr" "90"
			/// @DnDArgument : "var" "think"
			think = 90;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F1D8E91
			/// @DnDParent : 1078A974
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "gunclaw.WALK"
			if(state == gunclaw.WALK)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 36469496
				/// @DnDParent : 7F1D8E91
				/// @DnDArgument : "expr" "8"
				/// @DnDArgument : "var" "mover"
				mover = 8;
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 149307E2
	/// @DnDParent : 5D101941
	/// @DnDArgument : "const" "gunclaw.ATTACK2"
	case gunclaw.ATTACK2:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67969978
		/// @DnDInput : 2
		/// @DnDParent : 149307E2
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "facing*8"
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "var_1" "hsp"
		think += -1;
		hsp = facing*8;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F2B5885
		/// @DnDParent : 149307E2
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F16E005
		/// @DnDParent : 149307E2
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 325CB5E9
		/// @DnDParent : 149307E2
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "60"
		if(think <= 60)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2EBEBE2B
			/// @DnDParent : 325CB5E9
			/// @DnDArgument : "var" "think"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "30"
			if(think >= 30)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 58933683
				/// @DnDParent : 2EBEBE2B
				/// @DnDArgument : "var" "think mod 7"
				if(think mod 7 == 0)
				{
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 43318593
					/// @DnDParent : 58933683
					/// @DnDArgument : "var" "dir"
					/// @DnDArgument : "value" "point_direction(x,y,o_player.x,o_player.y)"
					var dir = point_direction(x,y,o_player.x,o_player.y);
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5B039823
					/// @DnDParent : 58933683
					/// @DnDArgument : "xpos" "29*facing"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-20"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "flashhh"
					/// @DnDArgument : "objectid" "e_small_flash"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_small_flash"
					flashhh = instance_create_layer(x + 29*facing, y + -20, "Effects", e_small_flash);
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 5FB46862
					/// @DnDApplyTo : flashhh
					/// @DnDParent : 58933683
					/// @DnDArgument : "value" "dir"
					/// @DnDArgument : "instvar" "12"
					with(flashhh) {
					image_angle = dir;
					}
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 47379CE3
					/// @DnDParent : 58933683
					/// @DnDArgument : "xpos" "29*facing"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-20"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "bul"
					/// @DnDArgument : "objectid" "o_enemy_bullet"
					/// @DnDSaveInfo : "objectid" "o_enemy_bullet"
					bul = instance_create_layer(x + 29*facing, y + -20, "Instances", o_enemy_bullet);
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 4CC75309
					/// @DnDApplyTo : bul
					/// @DnDParent : 58933683
					/// @DnDArgument : "value" "11"
					/// @DnDArgument : "instvar" "3"
					with(bul) {
					speed = 11;
					}
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 6268F05B
					/// @DnDApplyTo : bul
					/// @DnDParent : 58933683
					/// @DnDArgument : "value" "dir"
					/// @DnDArgument : "instvar" "2"
					with(bul) {
					direction = dir;
					}
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 1768420C
					/// @DnDParent : 58933683
					/// @DnDArgument : "soundid" "sfx_shoot"
					/// @DnDSaveInfo : "soundid" "sfx_shoot"
					audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, 1.0);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7173825A
		/// @DnDParent : 149307E2
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "op" "3"
		if(think <= 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 12A968C4
			/// @DnDParent : 7173825A
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "gunclaw.WALK"
			state = choose(gunclaw.WALK);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15418E89
			/// @DnDInput : 2
			/// @DnDParent : 7173825A
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "expr_1" "-2"
			/// @DnDArgument : "var" "think"
			/// @DnDArgument : "var_1" "mover"
			think = 30;
			mover = -2;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 605754CE
	/// @DnDParent : 5D101941
	/// @DnDArgument : "const" "gunclaw.ATTACK3"
	case gunclaw.ATTACK3:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74376BB4
		/// @DnDParent : 605754CE
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "think"
		think += -1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2F613991
		/// @DnDParent : 605754CE
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 723CA46D
		/// @DnDParent : 605754CE
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5344CA82
		/// @DnDParent : 605754CE
		/// @DnDArgument : "var" "think"
		/// @DnDArgument : "op" "3"
		if(think <= 0)
		{
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 402A7053
			/// @DnDInput : 2
			/// @DnDParent : 5344CA82
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "option" "gunclaw.IDLE"
			/// @DnDArgument : "option_1" "gunclaw.WALK"
			state = choose(gunclaw.IDLE, gunclaw.WALK);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F470CF3
			/// @DnDInput : 4
			/// @DnDParent : 5344CA82
			/// @DnDArgument : "expr" "60"
			/// @DnDArgument : "expr_1" "claw.IDLE"
			/// @DnDArgument : "expr_2" "-5"
			/// @DnDArgument : "expr_3" "10*facing"
			/// @DnDArgument : "var" "think"
			/// @DnDArgument : "var_1" "clawbaby.state"
			/// @DnDArgument : "var_2" "clawbaby.clawspeed"
			/// @DnDArgument : "var_3" "hsp"
			think = 60;
			clawbaby.state = claw.IDLE;
			clawbaby.clawspeed = -5;
			hsp = 10*facing;
		}
		break;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 09E444BA
/// @DnDArgument : "key" "ord("K")"
var l09E444BA_0;
l09E444BA_0 = keyboard_check_pressed(ord("K"));
if (l09E444BA_0)
{

}