/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 678BBE11
/// @DnDArgument : "expr" "active"
/// @DnDArgument : "not" "1"
if(!(active))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3B444303
	/// @DnDParent : 678BBE11
	/// @DnDArgument : "script" "controlz"
	/// @DnDSaveInfo : "script" "controlz"
	script_execute(controlz);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 4329C5BA
	/// @DnDParent : 678BBE11
	/// @DnDArgument : "script" "check_ground"
	/// @DnDSaveInfo : "script" "check_ground"
	script_execute(check_ground);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 787B4BF2
	/// @DnDParent : 678BBE11
	/// @DnDArgument : "script" "movement_stuff"
	/// @DnDSaveInfo : "script" "movement_stuff"
	script_execute(movement_stuff);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2FFBCD6C
/// @DnDArgument : "expr" "active"
if(active)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 500B4965
	/// @DnDInput : 2
	/// @DnDParent : 2FFBCD6C
	/// @DnDArgument : "expr" "flspeed"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "enginumber"
	hsp = flspeed;
	enginumber += 1;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 584175BE
	/// @DnDParent : 2FFBCD6C
	/// @DnDArgument : "x" "flspeed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-40"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid"
	/// @DnDSaveInfo : "object" "o_solid"
	var l584175BE_0 = instance_place(x + flspeed, y + -40, o_solid);
	if ((l584175BE_0 > 0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 773C72EB
		/// @DnDParent : 584175BE
		/// @DnDArgument : "soundid" "sfx_Complete_Destruction"
		/// @DnDSaveInfo : "soundid" "sfx_Complete_Destruction"
		audio_play_sound(sfx_Complete_Destruction, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 08009090
		/// @DnDParent : 584175BE
		/// @DnDArgument : "script" "scr_makeexplosion"
		/// @DnDSaveInfo : "script" "scr_makeexplosion"
		script_execute(scr_makeexplosion);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 6586FCE0
		/// @DnDApplyTo : o_player
		/// @DnDParent : 584175BE
		with(o_player) {
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 177D5D01
			/// @DnDParent : 6586FCE0
			/// @DnDArgument : "function" "instance_activate_object"
			/// @DnDArgument : "arg" "mygurn"
			instance_activate_object(mygurn);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 359A012E
			/// @DnDInput : 3
			/// @DnDParent : 6586FCE0
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "mount.vsp"
			/// @DnDArgument : "var_1" "mount.hsp"
			/// @DnDArgument : "var_2" "mount.active"
			mount.vsp = 0;
			mount.hsp = 0;
			mount.active = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 544E50B3
			/// @DnDInput : 2
			/// @DnDParent : 6586FCE0
			/// @DnDArgument : "expr" "undefined"
			/// @DnDArgument : "expr_1" "-12"
			/// @DnDArgument : "var" "mount"
			/// @DnDArgument : "var_1" "vsp"
			mount = undefined;
			vsp = -12;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 55B44973
		/// @DnDParent : 584175BE
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4613894E
/// @DnDArgument : "var" "abs(hsp)"
/// @DnDArgument : "value" "flspeed"
if(abs(hsp) == flspeed)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 77A5BF5C
	/// @DnDParent : 4613894E
	/// @DnDArgument : "xpos" "-flspeed"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-25"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "bebo"
	/// @DnDArgument : "objectid" "e_boosttrail"
	/// @DnDSaveInfo : "objectid" "e_boosttrail"
	bebo = instance_create_layer(x + -flspeed, y + -25, "Instances", e_boosttrail);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3EF2715E
	/// @DnDParent : 4613894E
	/// @DnDArgument : "xpos" "-flspeed-10"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-25"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "belo"
	/// @DnDArgument : "objectid" "e_boosttrail"
	/// @DnDSaveInfo : "objectid" "e_boosttrail"
	belo = instance_create_layer(x + -flspeed-10, y + -25, "Instances", e_boosttrail);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EF036B3
	/// @DnDParent : 4613894E
	/// @DnDArgument : "expr" "point_direction(xprevious,yprevious,x,y)+90"
	/// @DnDArgument : "var" "bebo.image_angle"
	bebo.image_angle = point_direction(xprevious,yprevious,x,y)+90;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 490BC58C
	/// @DnDParent : 4613894E
	/// @DnDArgument : "expr" "point_direction(xprevious,yprevious,x,y)+90"
	/// @DnDArgument : "var" "belo.image_angle"
	belo.image_angle = point_direction(xprevious,yprevious,x,y)+90;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 42BF95EF
/// @DnDArgument : "expr" "hsp==0"
/// @DnDArgument : "not" "1"
if(!(hsp==0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5D9494B4
	/// @DnDParent : 42BF95EF
	/// @DnDArgument : "value" "sign(hsp)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = sign(hsp);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D7C6DE6
/// @DnDArgument : "var" "enginumber mod 55"
if(enginumber mod 55 == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 71556A27
	/// @DnDParent : 3D7C6DE6
	/// @DnDArgument : "expr" "on_ground"
	if(on_ground)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 346FB3F2
		/// @DnDParent : 71556A27
		/// @DnDArgument : "soundid" "sfx_engine"
		/// @DnDSaveInfo : "soundid" "sfx_engine"
		audio_play_sound(sfx_engine, 0, 0, 1.0, undefined, 1.0);
	}
}