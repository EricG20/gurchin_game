/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EE3182E
/// @DnDArgument : "expr" ".03"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "waggle"
waggle += .03;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 637B869E
/// @DnDArgument : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35ECFF7A
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6030A9A6
	/// @DnDParent : 35ECFF7A
	/// @DnDArgument : "expr" "es.DEATH"
	/// @DnDArgument : "var" "state"
	state = es.DEATH;
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4C3D7EA0
/// @DnDArgument : "expr" "state"
var l4C3D7EA0_0 = state;
switch(l4C3D7EA0_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 583C1677
	/// @DnDParent : 4C3D7EA0
	/// @DnDArgument : "const" "es.IDLE"
	case es.IDLE:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02886759
		/// @DnDParent : 583C1677
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 39513737
		/// @DnDParent : 583C1677
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 050F285C
		/// @DnDParent : 583C1677
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5503BAE5
		/// @DnDParent : 583C1677
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CB0108E
			/// @DnDParent : 5503BAE5
			/// @DnDArgument : "var" "distance_to_object(o_player)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "600"
			if(distance_to_object(o_player) < 600)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 1CA90634
				/// @DnDParent : 2CB0108E
				/// @DnDArgument : "soundid" "charge_2"
				audio_play_sound(charge_2, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1AA5EE40
				/// @DnDInput : 2
				/// @DnDParent : 2CB0108E
				/// @DnDArgument : "expr" "es.CHARGE"
				/// @DnDArgument : "expr_1" "-(sign(x-o_player.x))"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "facing"
				state = es.CHARGE;
				facing = -(sign(x-o_player.x));
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 26B4EB9E
	/// @DnDParent : 4C3D7EA0
	/// @DnDArgument : "const" "es.CHARGE"
	case es.CHARGE:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0924C97E
		/// @DnDParent : 26B4EB9E
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charge"
		charge += -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01767EFB
		/// @DnDParent : 26B4EB9E
		/// @DnDArgument : "expr" "point_direction(x,y,o_player.x,o_player.y)"
		/// @DnDArgument : "var" "mymom"
		mymom = point_direction(x,y,o_player.x,o_player.y);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 500025E7
		/// @DnDParent : 26B4EB9E
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0E107C28
		/// @DnDParent : 26B4EB9E
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44D5F8D9
		/// @DnDParent : 26B4EB9E
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "3"
		if(charge <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50B03D82
			/// @DnDInput : 2
			/// @DnDParent : 44D5F8D9
			/// @DnDArgument : "expr" "40"
			/// @DnDArgument : "expr_1" "es.ATTACK"
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "var_1" "state"
			charge = 40;
			state = es.ATTACK;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 071DC7F5
	/// @DnDParent : 4C3D7EA0
	/// @DnDArgument : "const" "es.ATTACK"
	case es.ATTACK:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61966398
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charge"
		charge += -1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 32562C7F
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "xpos" "facing*-6"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-15"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "flam"
		/// @DnDArgument : "objectid" "o_flame"
		flam = instance_create_layer(x + facing*-6, y + -15, "Instances", o_flame);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2BDA9E62
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 18B5AC68
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11B50DF2
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "expr" "id"
		/// @DnDArgument : "var" "flam.creator"
		flam.creator = id;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 401F3185
		/// @DnDInput : 2
		/// @DnDApplyTo : flam
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "value" "creator.mymom+random_range(-10,10)"
		/// @DnDArgument : "value_1" "random_range(8,14)"
		/// @DnDArgument : "instvar" "2"
		/// @DnDArgument : "instvar_1" "3"
		with(flam) {
		direction = creator.mymom+random_range(-10,10);
		speed = random_range(8,14);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7101B3AF
		/// @DnDParent : 071DC7F5
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "3"
		if(charge <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 52E26149
			/// @DnDInput : 3
			/// @DnDParent : 7101B3AF
			/// @DnDArgument : "expr" "240"
			/// @DnDArgument : "expr_1" "es.IDLE"
			/// @DnDArgument : "expr_2" "60"
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "var_1" "state"
			/// @DnDArgument : "var_2" "charge"
			cooldown = 240;
			state = es.IDLE;
			charge = 60;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 77CDCA8E
	/// @DnDParent : 4C3D7EA0
	/// @DnDArgument : "const" "es.DEATH"
	case es.DEATH:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0267FC6D
		/// @DnDParent : 77CDCA8E
		/// @DnDArgument : "var" "destruct_time mod 5"
		if(destruct_time mod 5 == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3CA64376
			/// @DnDParent : 0267FC6D
			/// @DnDArgument : "xpos" "irandom_range(-30,30)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "irandom_range(-30,0)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "e_explosion"
			/// @DnDArgument : "layer" ""Effects""
			instance_create_layer(x + irandom_range(-30,30), y + irandom_range(-30,0), "Effects", e_explosion);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 03FCE2E1
			/// @DnDParent : 0267FC6D
			/// @DnDArgument : "xpos" "irandom_range(-30,30)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "irandom_range(-30,0)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
			/// @DnDArgument : "layer" ""Effects""
			instance_create_layer(x + irandom_range(-30,30), y + irandom_range(-30,0), "Effects", e_enemy_walkah_shit);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6B17D660
			/// @DnDParent : 0267FC6D
			/// @DnDArgument : "soundid" "sfx_smallboom"
			/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
			audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, random_range(0.9,1.1));
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FBF55F1
		/// @DnDParent : 77CDCA8E
		/// @DnDArgument : "var" "destruct_time"
		if(destruct_time == 0)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 04A80672
			/// @DnDParent : 3FBF55F1
			/// @DnDArgument : "times" "25"
			repeat(25)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 430BF095
				/// @DnDParent : 04A80672
				/// @DnDArgument : "xpos" "irandom_range(-40,40)"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "irandom_range(-60,0)"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
				/// @DnDArgument : "layer" ""Effects""
				instance_create_layer(x + irandom_range(-40,40), y + irandom_range(-60,0), "Effects", e_enemy_walkah_shit);
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1BAF0C03
				/// @DnDParent : 04A80672
				instance_destroy();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4E78E56E
		/// @DnDParent : 77CDCA8E
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 31AF1584
		/// @DnDParent : 77CDCA8E
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5118BD34
		/// @DnDParent : 77CDCA8E
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "destruct_time"
		destruct_time += -1;
		break;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A9334B1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "es.DEATH"
if(!(state == es.DEATH))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62879578
	/// @DnDInput : 2
	/// @DnDParent : 5A9334B1
	/// @DnDArgument : "expr_1" "sin(waggle)"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "var_1" "x"
	vsp = 0;
	x += sin(waggle);
}