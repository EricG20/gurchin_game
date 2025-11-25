/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 363FC2CB
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "player_controlz"
function player_controlz() {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5EC131F0
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "tick"
	/// @DnDArgument : "not" "1"
	if(!(tick)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 64D7FCA8
		/// @DnDParent : 5EC131F0
		/// @DnDArgument : "expr" "left"
		if(left){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6EDE2FAD
			/// @DnDInput : 2
			/// @DnDParent : 64D7FCA8
			/// @DnDArgument : "expr" "-.5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "clamp(hsp,-5.5,5.5)"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "hsp"
			hsp += -.5;
			hsp = clamp(hsp,-5.5,5.5);
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 660980BB
			/// @DnDParent : 64D7FCA8
			/// @DnDArgument : "x" "-1"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-30"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDSaveInfo : "object" "o_solid"
			var l660980BB_0 = instance_place(x + -1, y + -30, [o_solid]);if ((l660980BB_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 26BA5B81
				/// @DnDParent : 660980BB
				/// @DnDArgument : "expr" "jump"
				if(jump){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 72482F79
					/// @DnDParent : 26BA5B81
					/// @DnDArgument : "expr" "on_ground"
					/// @DnDArgument : "not" "1"
					if(!(on_ground)){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 791DB83B
						/// @DnDInput : 2
						/// @DnDParent : 72482F79
						/// @DnDArgument : "expr" "-7"
						/// @DnDArgument : "expr_1" "6"
						/// @DnDArgument : "var" "vsp"
						/// @DnDArgument : "var_1" "hsp"
						vsp = -7;
						hsp = 6;
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 096E132F
						/// @DnDParent : 72482F79
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "objectid" "e_freedust"
						/// @DnDSaveInfo : "objectid" "e_freedust"
						instance_create_layer(x + 0, y + 0, "Instances", e_freedust);}}}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7862B48D
		/// @DnDParent : 5EC131F0
		/// @DnDArgument : "expr" "right"
		if(right){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A6FF6AF
			/// @DnDInput : 2
			/// @DnDParent : 7862B48D
			/// @DnDArgument : "expr" ".5"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "clamp(hsp,-5.5,5.5)"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "hsp"
			hsp += .5;
			hsp = clamp(hsp,-5.5,5.5);
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 02F902ED
			/// @DnDParent : 7862B48D
			/// @DnDArgument : "x" "1"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-30"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDSaveInfo : "object" "o_solid"
			var l02F902ED_0 = instance_place(x + 1, y + -30, [o_solid]);if ((l02F902ED_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 62302423
				/// @DnDParent : 02F902ED
				/// @DnDArgument : "expr" "jump"
				if(jump){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 4F9D51DD
					/// @DnDParent : 62302423
					/// @DnDArgument : "expr" "on_ground"
					/// @DnDArgument : "not" "1"
					if(!(on_ground)){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4F597EDD
						/// @DnDInput : 2
						/// @DnDParent : 4F9D51DD
						/// @DnDArgument : "expr" "-6"
						/// @DnDArgument : "expr_1" "-6"
						/// @DnDArgument : "var" "vsp"
						/// @DnDArgument : "var_1" "hsp"
						vsp = -6;
						hsp = -6;
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 5CEC2BF1
						/// @DnDParent : 4F9D51DD
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "objectid" "e_freedust"
						/// @DnDSaveInfo : "objectid" "e_freedust"
						instance_create_layer(x + 0, y + 0, "Instances", e_freedust);}}}}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4877C748
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "jump"
	if(jump){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 12444FEA
		/// @DnDParent : 4877C748
		/// @DnDArgument : "expr" "on_ground"
		if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D074FAC
			/// @DnDParent : 12444FEA
			/// @DnDArgument : "expr" "-8"
			/// @DnDArgument : "var" "vsp"
			vsp = -8;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4AA36FE3
			/// @DnDParent : 12444FEA
			/// @DnDArgument : "soundid" "sfx_hop"
			/// @DnDSaveInfo : "soundid" "sfx_hop"
			audio_play_sound(sfx_hop, 0, 0, 1.0, undefined, 1.0);}}

	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 75DE359E
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "var" "mount"
	if(mount == undefined){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4C75F46E
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "expr" "boost_start"
		if(boost_start){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5B624151
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "left"
			if(left){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 21964D69
				/// @DnDParent : 5B624151
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "boostxdir"
				boostxdir = -1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7E9FD3D6
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "right"
			if(right){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6253676C
				/// @DnDParent : 7E9FD3D6
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "boostxdir"
				boostxdir = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 54B48EB6
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "down"
			if(down){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 35913CBD
				/// @DnDParent : 54B48EB6
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "boostydir"
				boostydir = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 25E30651
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "up"
			if(up){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A65D30F
				/// @DnDParent : 25E30651
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "boostydir"
				boostydir = -1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 4550CD2F
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "on_ground"
			if(on_ground){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 11EA8671
				/// @DnDParent : 4550CD2F
				/// @DnDArgument : "expr" "left || right || up || down"
				/// @DnDArgument : "not" "1"
				if(!(left || right || up || down)){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0B3C42C9
					/// @DnDParent : 11EA8671
					/// @DnDArgument : "expr" "facing"
					/// @DnDArgument : "var" "boostxdir"
					boostxdir = facing;}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D642918
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "op" "2"
			if(v_fuel > 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 351006B3
				/// @DnDParent : 3D642918
				/// @DnDArgument : "soundid" "sfx_boost_start"
				/// @DnDArgument : "pitch" "random_range(.8,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_boost_start"
				audio_play_sound(sfx_boost_start, 0, 0, 1.0, undefined, random_range(.8,1.2));
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 79ED93BC
				/// @DnDParent : 3D642918
				/// @DnDArgument : "target" "boostloop"
				/// @DnDArgument : "soundid" "sfx_hover_thing"
				/// @DnDArgument : "loop" "1"
				/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
				boostloop = audio_play_sound(sfx_hover_thing, 0, 1, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3427809C
				/// @DnDParent : 3D642918
				/// @DnDArgument : "xpos" "-19*facing"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-45"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "bloop"
				/// @DnDArgument : "objectid" "e_gun_flash"
				/// @DnDSaveInfo : "objectid" "e_gun_flash"
				bloop = instance_create_layer(x + -19*facing, y + -45, "Instances", e_gun_flash);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 12C8BA59
				/// @DnDParent : 3D642918
				/// @DnDArgument : "xpos" "19*facing"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "-45"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "bloop2"
				/// @DnDArgument : "objectid" "e_gun_flash"
				/// @DnDSaveInfo : "objectid" "e_gun_flash"
				bloop2 = instance_create_layer(x + 19*facing, y + -45, "Instances", e_gun_flash);
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0F00B8ED
				/// @DnDParent : 3D642918
				/// @DnDArgument : "var" "bloopr"
				/// @DnDArgument : "value" "point_direction(x,y,boostxdir+x,boostydir+y)"
				var bloopr = point_direction(x,y,boostxdir+x,boostydir+y);
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 2591FCE5
				/// @DnDInput : 3
				/// @DnDApplyTo : bloop
				/// @DnDParent : 3D642918
				/// @DnDArgument : "value" "c_orange"
				/// @DnDArgument : "value_1" "bloopr"
				/// @DnDArgument : "value_2" "-1.5"
				/// @DnDArgument : "instvar" "14"
				/// @DnDArgument : "instvar_1" "12"
				/// @DnDArgument : "instvar_2" "15"
				with(bloop) {
				image_blend = c_orange;
				image_angle = bloopr;
				image_xscale = -1.5;
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 4A373A14
				/// @DnDInput : 3
				/// @DnDApplyTo : bloop2
				/// @DnDParent : 3D642918
				/// @DnDArgument : "value" "c_yellow"
				/// @DnDArgument : "value_1" "bloopr"
				/// @DnDArgument : "value_2" "-1.5"
				/// @DnDArgument : "instvar" "14"
				/// @DnDArgument : "instvar_1" "12"
				/// @DnDArgument : "instvar_2" "15"
				with(bloop2) {
				image_blend = c_yellow;
				image_angle = bloopr;
				image_xscale = -1.5;
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F7E3DBB
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "op" "3"
			if(v_fuel <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 74E18D24
				/// @DnDParent : 1F7E3DBB
				/// @DnDArgument : "soundid" "sfx_dry_boost"
				/// @DnDSaveInfo : "soundid" "sfx_dry_boost"
				audio_play_sound(sfx_dry_boost, 0, 0, 1.0, undefined, 1.0);}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 21006179
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "expr" "boost"
		if(boost){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 70408C2B
			/// @DnDParent : 21006179
			/// @DnDArgument : "expr" "tick"
			if(tick){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0FB74E7E
				/// @DnDInput : 2
				/// @DnDParent : 70408C2B
				/// @DnDArgument : "expr" "boostxdir*9"
				/// @DnDArgument : "expr_1" "boostydir*9"
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "var_1" "vsp"
				hsp = boostxdir*9;
				vsp = boostydir*9;}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
		/// @DnDVersion : 1
		/// @DnDHash : 41346E55
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "key" "vk_shift"
		var l41346E55_0;l41346E55_0 = keyboard_check_released(vk_shift);if (l41346E55_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C03C79A
			/// @DnDInput : 3
			/// @DnDParent : 41346E55
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "boostxdir"
			/// @DnDArgument : "var_1" "boostydir"
			/// @DnDArgument : "var_2" "tick"
			boostxdir = 0;
			boostydir = 0;
			tick = false;
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 63C0E423
			/// @DnDParent : 41346E55
			/// @DnDArgument : "soundid" "boostloop"
			audio_stop_sound(boostloop);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6680D4C0
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "var" "v_fuel"
		/// @DnDArgument : "op" "3"
		if(v_fuel <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76963F15
			/// @DnDInput : 3
			/// @DnDParent : 6680D4C0
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "boostxdir"
			/// @DnDArgument : "var_1" "boostydir"
			/// @DnDArgument : "var_2" "tick"
			boostxdir = 0;
			boostydir = 0;
			tick = false;
		
			/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 478FADA2
			/// @DnDParent : 6680D4C0
			/// @DnDArgument : "soundid" "boostloop"
			audio_stop_sound(boostloop);}}}