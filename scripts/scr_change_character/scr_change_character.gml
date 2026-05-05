/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7A41EDD0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "scr_change_character"
/// @DnDArgument : "arg" "name"
/// @DnDArgument : "arg_1" "hair"
/// @DnDArgument : "arg_2" "color_of_suit"
function scr_change_character(name, hair, color_of_suit) {	/// @DnDAction : YoYo Games.Data Structures.Create_List
	/// @DnDVersion : 1
	/// @DnDHash : 47F1E677
	/// @DnDInput : 7
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "good_job_lines"
	/// @DnDArgument : "var_1" "you_suck_lines"
	/// @DnDArgument : "var_2" "i_need_help_lines"
	/// @DnDArgument : "var_3" "gloat_lines"
	/// @DnDArgument : "var_4" "i_want_that_lines"
	/// @DnDArgument : "var_5" "hi_lines"
	/// @DnDArgument : "var_6" "special_lines"
	good_job_lines = ds_list_create();
	you_suck_lines = ds_list_create();
	i_need_help_lines = ds_list_create();
	gloat_lines = ds_list_create();
	i_want_that_lines = ds_list_create();
	hi_lines = ds_list_create();
	special_lines = ds_list_create();

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 063A56F9
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "good_job_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(good_job_lines, "");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 2D214F9C
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "you_suck_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(you_suck_lines, "");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 4D59198B
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "i_need_help_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(i_need_help_lines, "");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 702AE38B
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "gloat_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(gloat_lines, "");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 2A34A8BF
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "i_want_that_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(i_want_that_lines, "");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 2E1AE723
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "hi_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(hi_lines, "");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 7DF392D3
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "special_lines"
	/// @DnDArgument : "value" """"
	ds_list_add(special_lines, "");

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 76B8B3D3
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "expr" "name"
	var l76B8B3D3_0 = name;switch(l76B8B3D3_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 39FEBF4E
		/// @DnDParent : 76B8B3D3
		/// @DnDArgument : "const" ""Zelinka""
		case "Zelinka":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14F88D1D
			/// @DnDInput : 2
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "expr" "s_zelinka_ponder_eyes"
			/// @DnDArgument : "expr_1" "s_zelinka_ico"
			/// @DnDArgument : "var" "ponder_eyes_sprite"
			/// @DnDArgument : "var_1" "spr_icon"
			ponder_eyes_sprite = s_zelinka_ponder_eyes;
			spr_icon = s_zelinka_ico;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1B2F2B1C
			/// @DnDInput : 28
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "expr" "s_zelinka_antenna"
			/// @DnDArgument : "expr_1" "s_zelinka_ear"
			/// @DnDArgument : "expr_2" "s_zelinka_head"
			/// @DnDArgument : "expr_3" "s_zelinka_hair"
			/// @DnDArgument : "expr_4" "s_zelinka_bangs"
			/// @DnDArgument : "expr_5" "s_zelinka_mouthgood"
			/// @DnDArgument : "expr_6" "s_zelinka_mouthmeh"
			/// @DnDArgument : "expr_7" "s_zelinka_mouthohnah"
			/// @DnDArgument : "expr_8" "s_zelinka_idle"
			/// @DnDArgument : "expr_9" "s_zelinka_walk"
			/// @DnDArgument : "expr_10" "s_zelinka_eyes"
			/// @DnDArgument : "expr_11" "-41-8"
			/// @DnDArgument : "expr_12" "-67-5"
			/// @DnDArgument : "expr_13" "-11-39"
			/// @DnDArgument : "expr_14" "2.2"
			/// @DnDArgument : "expr_15" ""Zelinka""
			/// @DnDArgument : "expr_16" "5"
			/// @DnDArgument : "expr_17" "6.9"
			/// @DnDArgument : "expr_18" "13"
			/// @DnDArgument : "expr_19" "3"
			/// @DnDArgument : "expr_20" "4"
			/// @DnDArgument : "expr_21" ".5"
			/// @DnDArgument : "expr_22" "2"
			/// @DnDArgument : "expr_23" "300"
			/// @DnDArgument : "expr_24" "s_zelinka_knockback"
			/// @DnDArgument : "expr_25" "o_goozi"
			/// @DnDArgument : "expr_26" "s_zelinka_slide"
			/// @DnDArgument : "expr_27" "25"
			/// @DnDArgument : "var" "antenna_sprite"
			/// @DnDArgument : "var_1" "ear_sprite"
			/// @DnDArgument : "var_2" "head_sprite"
			/// @DnDArgument : "var_3" "hair_sprite"
			/// @DnDArgument : "var_4" "bangs_sprite"
			/// @DnDArgument : "var_5" "smile_sprite"
			/// @DnDArgument : "var_6" "straightface_sprite"
			/// @DnDArgument : "var_7" "frown_sprite"
			/// @DnDArgument : "var_8" "idle_sprite"
			/// @DnDArgument : "var_9" "walk_sprite"
			/// @DnDArgument : "var_10" "eyes_sprite"
			/// @DnDArgument : "var_11" "head_height"
			/// @DnDArgument : "var_12" "eye_height"
			/// @DnDArgument : "var_13" "hair_height"
			/// @DnDArgument : "var_14" "walk_lift_magnitude"
			/// @DnDArgument : "var_15" "character_index"
			/// @DnDArgument : "var_16" "max_hp"
			/// @DnDArgument : "var_17" "walk_speed"
			/// @DnDArgument : "var_18" "jumpheight"
			/// @DnDArgument : "var_19" "walk_bobbing_strength"
			/// @DnDArgument : "var_20" "ear_bobbing_strength"
			/// @DnDArgument : "var_21" "hair_weight"
			/// @DnDArgument : "var_22" "head_offset_x"
			/// @DnDArgument : "var_23" "special_meter_cap"
			/// @DnDArgument : "var_24" "knockback_sprite"
			/// @DnDArgument : "var_25" "default_gun"
			/// @DnDArgument : "var_26" "slide_sprite"
			/// @DnDArgument : "var_27" "slide_head_y_offset"
			antenna_sprite = s_zelinka_antenna;
			ear_sprite = s_zelinka_ear;
			head_sprite = s_zelinka_head;
			hair_sprite = s_zelinka_hair;
			bangs_sprite = s_zelinka_bangs;
			smile_sprite = s_zelinka_mouthgood;
			straightface_sprite = s_zelinka_mouthmeh;
			frown_sprite = s_zelinka_mouthohnah;
			idle_sprite = s_zelinka_idle;
			walk_sprite = s_zelinka_walk;
			eyes_sprite = s_zelinka_eyes;
			head_height = -41-8;
			eye_height = -67-5;
			hair_height = -11-39;
			walk_lift_magnitude = 2.2;
			character_index = "Zelinka";
			max_hp = 5;
			walk_speed = 6.9;
			jumpheight = 13;
			walk_bobbing_strength = 3;
			ear_bobbing_strength = 4;
			hair_weight = .5;
			head_offset_x = 2;
			special_meter_cap = 300;
			knockback_sprite = s_zelinka_knockback;
			default_gun = o_goozi;
			slide_sprite = s_zelinka_slide;
			slide_head_y_offset = 25;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25B96E74
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "expr" "1.15"
			/// @DnDArgument : "var" "permanent_firerate_bonus"
			permanent_firerate_bonus = 1.15;
		
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78C6DEDE
			/// @DnDDisabled : 1
			/// @DnDApplyTo : mygurn
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "objind" "o_goozi"
			/// @DnDSaveInfo : "objind" "o_goozi"
		
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 4834ED74
			/// @DnDInput : 2
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "weapon_levels"
			/// @DnDArgument : "key" "o_gon"
			/// @DnDArgument : "value" "0"
			/// @DnDArgument : "key_1" "o_goozi"
			/// @DnDArgument : "value_1" "1"
			ds_map_replace(weapon_levels, o_gon, 0);
			ds_map_replace(weapon_levels, o_goozi, 1);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 3C5515BA
			/// @DnDInput : 3
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "good_job_lines"
			/// @DnDArgument : "value" ""Love it.""
			/// @DnDArgument : "value_1" ""Ooooo, knew you were good!""
			/// @DnDArgument : "value_2" ""You are so cute for that.""
			ds_list_add(good_job_lines, "Love it.", "Ooooo, knew you were good!", "You are so cute for that.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 6F4B4F08
			/// @DnDInput : 5
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "you_suck_lines"
			/// @DnDArgument : "value" ""Ugh, what are you doing?""
			/// @DnDArgument : "value_1" ""Wake up, man!""
			/// @DnDArgument : "value_2" ""Augh, you're so garbage its pissing me off!""
			/// @DnDArgument : "value_3" ""How did you even qualify for the defence force?""
			/// @DnDArgument : "value_4" ""I think if you just left the team, it would be the best for all of us.""
			ds_list_add(you_suck_lines, "Ugh, what are you doing?", "Wake up, man!", "Augh, you're so garbage its pissing me off!", "How did you even qualify for the defence force?", "I think if you just left the team, it would be the best for all of us.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 76AD380D
			/// @DnDInput : 3
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "i_need_help_lines"
			/// @DnDArgument : "value" ""Can a girl get some help?""
			/// @DnDArgument : "value_1" ""I could definitely use some help!""
			/// @DnDArgument : "value_2" ""HELP!""
			ds_list_add(i_need_help_lines, "Can a girl get some help?", "I could definitely use some help!", "HELP!");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 525D6563
			/// @DnDInput : 3
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "gloat_lines"
			/// @DnDArgument : "value" ""No one can keep up with me!""
			/// @DnDArgument : "value_1" ""Eeeee!~ I'm on fire!""
			/// @DnDArgument : "value_2" ""Look! At! Meee!""
			ds_list_add(gloat_lines, "No one can keep up with me!", "Eeeee!~ I'm on fire!", "Look! At! Meee!");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 511D2567
			/// @DnDInput : 3
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "i_want_that_lines"
			/// @DnDArgument : "value" ""OMG, can I have that?""
			/// @DnDArgument : "value_1" ""Don't you think I deserve that?""
			/// @DnDArgument : "value_2" ""I can have that if you don't want it. By the way, you don't want it.""
			ds_list_add(i_want_that_lines, "OMG, can I have that?", "Don't you think I deserve that?", "I can have that if you don't want it. By the way, you don't want it.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 068591A5
			/// @DnDInput : 3
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "hi_lines"
			/// @DnDArgument : "value" ""Hi!""
			/// @DnDArgument : "value_1" ""Hiiiii~!""
			/// @DnDArgument : "value_2" ""Hey!""
			ds_list_add(hi_lines, "Hi!", "Hiiiii~!", "Hey!");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 5754D028
			/// @DnDInput : 2
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "special_lines"
			/// @DnDArgument : "value" ""Bullet storm is ready!""
			/// @DnDArgument : "value_1" ""They'll need a really good umbrella for this.""
			ds_list_add(special_lines, "Bullet storm is ready!", "They'll need a really good umbrella for this.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 30203A07
			/// @DnDInput : 3
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "talking_mouths"
			/// @DnDArgument : "value" "s_zelinka_mouth_a"
			/// @DnDArgument : "value_1" "s_zelinka_mouth_g"
			/// @DnDArgument : "value_2" "s_zelinka_mouth_o"
			ds_list_add(talking_mouths, s_zelinka_mouth_a, s_zelinka_mouth_g, s_zelinka_mouth_o);
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 62861F4B
			/// @DnDInput : 12
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "expressions"
			/// @DnDArgument : "key" ""joy_eyes""
			/// @DnDArgument : "value" "s_zelinka_joy_eyes"
			/// @DnDArgument : "key_1" ""joy_mouth""
			/// @DnDArgument : "value_1" "s_zelinka_mouth_joy"
			/// @DnDArgument : "key_2" ""sad_eyes""
			/// @DnDArgument : "value_2" "s_zelinka_sad_eyes"
			/// @DnDArgument : "key_3" ""sad_mouth""
			/// @DnDArgument : "value_3" "s_zelinka_mouth_sad"
			/// @DnDArgument : "key_4" ""scared_eyes""
			/// @DnDArgument : "value_4" "s_zelinka_scared_eyes"
			/// @DnDArgument : "key_5" ""scared_mouth""
			/// @DnDArgument : "value_5" "s_zelinka_mouth_scared"
			/// @DnDArgument : "key_6" ""confident_eyes""
			/// @DnDArgument : "value_6" "s_zelinka_joy_eyes"
			/// @DnDArgument : "key_7" ""confident_mouth""
			/// @DnDArgument : "value_7" "s_zelinka_mouthgood"
			/// @DnDArgument : "key_8" ""ponder_eyes""
			/// @DnDArgument : "value_8" "s_zelinka_ponder_eyes"
			/// @DnDArgument : "key_9" ""ponder_mouth""
			/// @DnDArgument : "value_9" "s_zelinka_mouthmeh"
			/// @DnDArgument : "key_10" ""neutral_eyes""
			/// @DnDArgument : "value_10" "s_zelinka_eyes"
			/// @DnDArgument : "key_11" ""neutral_mouth""
			/// @DnDArgument : "value_11" "s_zelinka_mouthgood"
			ds_map_replace(expressions, "joy_eyes", s_zelinka_joy_eyes);
			ds_map_replace(expressions, "joy_mouth", s_zelinka_mouth_joy);
			ds_map_replace(expressions, "sad_eyes", s_zelinka_sad_eyes);
			ds_map_replace(expressions, "sad_mouth", s_zelinka_mouth_sad);
			ds_map_replace(expressions, "scared_eyes", s_zelinka_scared_eyes);
			ds_map_replace(expressions, "scared_mouth", s_zelinka_mouth_scared);
			ds_map_replace(expressions, "confident_eyes", s_zelinka_joy_eyes);
			ds_map_replace(expressions, "confident_mouth", s_zelinka_mouthgood);
			ds_map_replace(expressions, "ponder_eyes", s_zelinka_ponder_eyes);
			ds_map_replace(expressions, "ponder_mouth", s_zelinka_mouthmeh);
			ds_map_replace(expressions, "neutral_eyes", s_zelinka_eyes);
			ds_map_replace(expressions, "neutral_mouth", s_zelinka_mouthgood);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 3B6E73E8
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "var" "talking_mouths"
			/// @DnDArgument : "value" "s_zelinka_mouth_a"
			/// @DnDArgument : "value_1" "s_zelinka_mouth_g"
			/// @DnDArgument : "value_2" "s_zelinka_mouth_o"	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5277A3DC
		/// @DnDParent : 76B8B3D3
		/// @DnDArgument : "const" ""Gurchin""
		case "Gurchin":	/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 5737ED1F
			/// @DnDInput : 3
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "good_job_lines"
			/// @DnDArgument : "value" ""Way to go!""
			/// @DnDArgument : "value_1" ""Awesome!""
			/// @DnDArgument : "value_2" ""Gurchin approved.""
			ds_list_add(good_job_lines, "Way to go!", "Awesome!", "Gurchin approved.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 2331B6E4
			/// @DnDInput : 6
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "you_suck_lines"
			/// @DnDArgument : "value" ""Are you trying to get killed?""
			/// @DnDArgument : "value_1" ""Get it together!""
			/// @DnDArgument : "value_2" ""I think you need more practice...""
			/// @DnDArgument : "value_3" ""You know what? You suck.""
			/// @DnDArgument : "value_4" ""I'd be better off if you were just a turret.""
			/// @DnDArgument : "value_5" ""Waste of good resources.""
			ds_list_add(you_suck_lines, "Are you trying to get killed?", "Get it together!", "I think you need more practice...", "You know what? You suck.", "I'd be better off if you were just a turret.", "Waste of good resources.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 1F5D8A31
			/// @DnDInput : 4
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "i_need_help_lines"
			/// @DnDArgument : "value" ""I could use some help!""
			/// @DnDArgument : "value_1" ""Not looking good over here!""
			/// @DnDArgument : "value_2" ""I WANT TO LIIIIIVE!""
			/// @DnDArgument : "value_3" ""FOR GLORB'S SAKE HELP ME!""
			ds_list_add(i_need_help_lines, "I could use some help!", "Not looking good over here!", "I WANT TO LIIIIIVE!", "FOR GLORB'S SAKE HELP ME!");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 187B5114
			/// @DnDInput : 4
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "gloat_lines"
			/// @DnDArgument : "value" ""It's just too easy!""
			/// @DnDArgument : "value_1" ""LET'S GO!""
			/// @DnDArgument : "value_2" ""Naturally, I'm the best.""
			/// @DnDArgument : "value_3" ""You guys can thank me later.""
			ds_list_add(gloat_lines, "It's just too easy!", "LET'S GO!", "Naturally, I'm the best.", "You guys can thank me later.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 49EDF38A
			/// @DnDInput : 3
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "i_want_that_lines"
			/// @DnDArgument : "value" ""Can I have that?""
			/// @DnDArgument : "value_1" ""I would like that!""
			/// @DnDArgument : "value_2" ""I'd make good use of that.""
			ds_list_add(i_want_that_lines, "Can I have that?", "I would like that!", "I'd make good use of that.");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 3454398E
			/// @DnDInput : 2
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "hi_lines"
			/// @DnDArgument : "value" ""Hello!""
			/// @DnDArgument : "value_1" ""Hey, whats up?""
			ds_list_add(hi_lines, "Hello!", "Hey, whats up?");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 1D3A722B
			/// @DnDInput : 3
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "special_lines"
			/// @DnDArgument : "value" ""Turret building time.""
			/// @DnDArgument : "value_1" ""Ready to build a turret!""
			/// @DnDArgument : "value_2" ""Time out! I wanna build something!""
			ds_list_add(special_lines, "Turret building time.", "Ready to build a turret!", "Time out! I wanna build something!");
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 27116A52
			/// @DnDInput : 12
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "expressions"
			/// @DnDArgument : "key" ""joy_eyes""
			/// @DnDArgument : "value" "s_gurchin_eyes_joy"
			/// @DnDArgument : "key_1" ""joy_mouth""
			/// @DnDArgument : "value_1" "s_gurchin_mouth_joy"
			/// @DnDArgument : "key_2" ""sad_eyes""
			/// @DnDArgument : "value_2" "s_gurchin_eyes_sad"
			/// @DnDArgument : "key_3" ""sad_mouth""
			/// @DnDArgument : "value_3" "s_gurchin_mouth_sad"
			/// @DnDArgument : "key_4" ""scared_eyes""
			/// @DnDArgument : "value_4" "s_gurchin_eyes_scared"
			/// @DnDArgument : "key_5" ""scared_mouth""
			/// @DnDArgument : "value_5" "s_gurchin_mouth_scared"
			/// @DnDArgument : "key_6" ""confident_eyes""
			/// @DnDArgument : "value_6" "s_gurchin_eyes_confident"
			/// @DnDArgument : "key_7" ""confident_mouth""
			/// @DnDArgument : "value_7" "s_gurchin_mouth_confident"
			/// @DnDArgument : "key_8" ""ponder_eyes""
			/// @DnDArgument : "value_8" "s_gurchin_ponder_eyes"
			/// @DnDArgument : "key_9" ""ponder_mouth""
			/// @DnDArgument : "value_9" "s_player_straightface"
			/// @DnDArgument : "key_10" ""neutral_eyes""
			/// @DnDArgument : "value_10" "s_player_gurchin_eyes"
			/// @DnDArgument : "key_11" ""neutral_mouth""
			/// @DnDArgument : "value_11" "s_player_smile"
			ds_map_replace(expressions, "joy_eyes", s_gurchin_eyes_joy);
			ds_map_replace(expressions, "joy_mouth", s_gurchin_mouth_joy);
			ds_map_replace(expressions, "sad_eyes", s_gurchin_eyes_sad);
			ds_map_replace(expressions, "sad_mouth", s_gurchin_mouth_sad);
			ds_map_replace(expressions, "scared_eyes", s_gurchin_eyes_scared);
			ds_map_replace(expressions, "scared_mouth", s_gurchin_mouth_scared);
			ds_map_replace(expressions, "confident_eyes", s_gurchin_eyes_confident);
			ds_map_replace(expressions, "confident_mouth", s_gurchin_mouth_confident);
			ds_map_replace(expressions, "ponder_eyes", s_gurchin_ponder_eyes);
			ds_map_replace(expressions, "ponder_mouth", s_player_straightface);
			ds_map_replace(expressions, "neutral_eyes", s_player_gurchin_eyes);
			ds_map_replace(expressions, "neutral_mouth", s_player_smile);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 31AC6885
			/// @DnDInput : 4
			/// @DnDParent : 5277A3DC
			/// @DnDArgument : "var" "talking_mouths"
			/// @DnDArgument : "value" "s_gurchin_mouth_a"
			/// @DnDArgument : "value_1" "s_gurchin_mouth_i"
			/// @DnDArgument : "value_2" "s_gurchin_mouth_o"
			/// @DnDArgument : "value_3" "s_gurchin_mouth_e"
			ds_list_add(talking_mouths, s_gurchin_mouth_a, s_gurchin_mouth_i, s_gurchin_mouth_o, s_gurchin_mouth_e);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 38B718F0
		/// @DnDParent : 76B8B3D3
		/// @DnDArgument : "const" ""Robot""
		case "Robot":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4885AD93
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "expr" "s_zelinka_ponder_eyes"
			/// @DnDArgument : "var" "ponder_eyes_sprite"
			ponder_eyes_sprite = s_zelinka_ponder_eyes;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46BB926D
			/// @DnDInput : 26
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "expr" "s_zelinka_antenna"
			/// @DnDArgument : "expr_1" "s_zelinka_ear"
			/// @DnDArgument : "expr_2" "s_zelinka_head"
			/// @DnDArgument : "expr_3" "s_empty_sprite_for_bald"
			/// @DnDArgument : "expr_4" "s_empty_sprite_for_bald"
			/// @DnDArgument : "expr_5" "s_zelinka_mouthgood"
			/// @DnDArgument : "expr_6" "s_zelinka_mouthmeh"
			/// @DnDArgument : "expr_7" "s_zelinka_mouthohnah"
			/// @DnDArgument : "expr_8" "s_zelinka_idle"
			/// @DnDArgument : "expr_9" "s_zelinka_walk"
			/// @DnDArgument : "expr_10" "s_zelinka_eyes"
			/// @DnDArgument : "expr_11" "-41-8"
			/// @DnDArgument : "expr_12" "-67-5"
			/// @DnDArgument : "expr_13" "-11-39"
			/// @DnDArgument : "expr_14" "2.2"
			/// @DnDArgument : "expr_15" ""Robot""
			/// @DnDArgument : "expr_16" "5"
			/// @DnDArgument : "expr_17" "6.7"
			/// @DnDArgument : "expr_18" "13"
			/// @DnDArgument : "expr_19" "3"
			/// @DnDArgument : "expr_20" "4"
			/// @DnDArgument : "expr_21" ".5"
			/// @DnDArgument : "expr_22" "2"
			/// @DnDArgument : "expr_23" "300"
			/// @DnDArgument : "expr_24" "s_zelinka_knockback"
			/// @DnDArgument : "expr_25" "o_grelauncher"
			/// @DnDArgument : "var" "antenna_sprite"
			/// @DnDArgument : "var_1" "ear_sprite"
			/// @DnDArgument : "var_2" "head_sprite"
			/// @DnDArgument : "var_3" "hair_sprite"
			/// @DnDArgument : "var_4" "bangs_sprite"
			/// @DnDArgument : "var_5" "smile_sprite"
			/// @DnDArgument : "var_6" "straightface_sprite"
			/// @DnDArgument : "var_7" "frown_sprite"
			/// @DnDArgument : "var_8" "idle_sprite"
			/// @DnDArgument : "var_9" "walk_sprite"
			/// @DnDArgument : "var_10" "eyes_sprite"
			/// @DnDArgument : "var_11" "head_height"
			/// @DnDArgument : "var_12" "eye_height"
			/// @DnDArgument : "var_13" "hair_height"
			/// @DnDArgument : "var_14" "walk_lift_magnitude"
			/// @DnDArgument : "var_15" "character_index"
			/// @DnDArgument : "var_16" "max_hp"
			/// @DnDArgument : "var_17" "walk_speed"
			/// @DnDArgument : "var_18" "jumpheight"
			/// @DnDArgument : "var_19" "walk_bobbing_strength"
			/// @DnDArgument : "var_20" "ear_bobbing_strength"
			/// @DnDArgument : "var_21" "hair_weight"
			/// @DnDArgument : "var_22" "head_offset_x"
			/// @DnDArgument : "var_23" "special_meter_cap"
			/// @DnDArgument : "var_24" "knockback_sprite"
			/// @DnDArgument : "var_25" "default_gun"
			antenna_sprite = s_zelinka_antenna;
			ear_sprite = s_zelinka_ear;
			head_sprite = s_zelinka_head;
			hair_sprite = s_empty_sprite_for_bald;
			bangs_sprite = s_empty_sprite_for_bald;
			smile_sprite = s_zelinka_mouthgood;
			straightface_sprite = s_zelinka_mouthmeh;
			frown_sprite = s_zelinka_mouthohnah;
			idle_sprite = s_zelinka_idle;
			walk_sprite = s_zelinka_walk;
			eyes_sprite = s_zelinka_eyes;
			head_height = -41-8;
			eye_height = -67-5;
			hair_height = -11-39;
			walk_lift_magnitude = 2.2;
			character_index = "Robot";
			max_hp = 5;
			walk_speed = 6.7;
			jumpheight = 13;
			walk_bobbing_strength = 3;
			ear_bobbing_strength = 4;
			hair_weight = .5;
			head_offset_x = 2;
			special_meter_cap = 300;
			knockback_sprite = s_zelinka_knockback;
			default_gun = o_grelauncher;
		
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0CE52536
			/// @DnDDisabled : 1
			/// @DnDApplyTo : mygurn
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "objind" "o_xoopington"
			/// @DnDSaveInfo : "objind" "o_xoopington"
		
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 57280EF1
			/// @DnDInput : 2
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "weapon_levels"
			/// @DnDArgument : "key" "o_gon"
			/// @DnDArgument : "value" "0"
			/// @DnDArgument : "key_1" "o_grelauncher"
			/// @DnDArgument : "value_1" "3"
			ds_map_replace(weapon_levels, o_gon, 0);
			ds_map_replace(weapon_levels, o_grelauncher, 3);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 31BECBC0
			/// @DnDInput : 3
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "good_job_lines"
			/// @DnDArgument : "value" ""Love it.""
			/// @DnDArgument : "value_1" ""oooo cutttieee""
			/// @DnDArgument : "value_2" ""heh~ maybe you're not half bad after all, what do you say me and you find some get a oil can and a beer respectively after this is all over""
			ds_list_add(good_job_lines, "Love it.", "oooo cutttieee", "heh~ maybe you're not half bad after all, what do you say me and you find some get a oil can and a beer respectively after this is all over");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 22C29D0F
			/// @DnDInput : 3
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "you_suck_lines"
			/// @DnDArgument : "value" ""kys""
			/// @DnDArgument : "value_1" ""nice job retard""
			/// @DnDArgument : "value_2" ""jesus fuck what are you aiming at""
			ds_list_add(you_suck_lines, "kys", "nice job retard", "jesus fuck what are you aiming at");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 01E8A76E
			/// @DnDInput : 2
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "i_need_help_lines"
			/// @DnDArgument : "value" ""help""
			/// @DnDArgument : "value_1" ""BROTHER HELP ME STOP FARMING AND HELP""
			ds_list_add(i_need_help_lines, "help", "BROTHER HELP ME STOP FARMING AND HELP");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 619510B4
			/// @DnDInput : 3
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "gloat_lines"
			/// @DnDArgument : "value" ""holy shit im goated""
			/// @DnDArgument : "value_1" ""someone get a camera i just hit a clip""
			/// @DnDArgument : "value_2" ""RAHHH""
			ds_list_add(gloat_lines, "holy shit im goated", "someone get a camera i just hit a clip", "RAHHH");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 4D159DB9
			/// @DnDInput : 2
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "i_want_that_lines"
			/// @DnDArgument : "value" ""bitch get your dirty ass fingers off my shit and hand it over""
			/// @DnDArgument : "value_1" ""MINE""
			ds_list_add(i_want_that_lines, "bitch get your dirty ass fingers off my shit and hand it over", "MINE");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 14E36FAF
			/// @DnDInput : 2
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "hi_lines"
			/// @DnDArgument : "value" ""Hiiiii~""
			/// @DnDArgument : "value_1" ""Heyya!""
			ds_list_add(hi_lines, "Hiiiii~", "Heyya!");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 490BAF47
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "special_lines"
			/// @DnDArgument : "value" ""I'M GONNA CRANK IT""
			ds_list_add(special_lines, "I'M GONNA CRANK IT");
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 75D5AC3F
			/// @DnDInput : 3
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "talking_mouths"
			/// @DnDArgument : "value" "s_zelinka_mouth_a"
			/// @DnDArgument : "value_1" "s_zelinka_mouth_g"
			/// @DnDArgument : "value_2" "s_zelinka_mouth_o"
			ds_list_add(talking_mouths, s_zelinka_mouth_a, s_zelinka_mouth_g, s_zelinka_mouth_o);
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 06B2183B
			/// @DnDInput : 12
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "expressions"
			/// @DnDArgument : "key" ""joy_eyes""
			/// @DnDArgument : "value" "s_zelinka_joy_eyes"
			/// @DnDArgument : "key_1" ""joy_mouth""
			/// @DnDArgument : "value_1" "s_zelinka_mouth_joy"
			/// @DnDArgument : "key_2" ""sad_eyes""
			/// @DnDArgument : "value_2" "s_zelinka_sad_eyes"
			/// @DnDArgument : "key_3" ""sad_mouth""
			/// @DnDArgument : "value_3" "s_zelinka_mouth_sad"
			/// @DnDArgument : "key_4" ""scared_eyes""
			/// @DnDArgument : "value_4" "s_zelinka_scared_eyes"
			/// @DnDArgument : "key_5" ""scared_mouth""
			/// @DnDArgument : "value_5" "s_zelinka_mouth_scared"
			/// @DnDArgument : "key_6" ""confident_eyes""
			/// @DnDArgument : "value_6" "s_zelinka_joy_eyes"
			/// @DnDArgument : "key_7" ""confident_mouth""
			/// @DnDArgument : "value_7" "s_zelinka_mouthgood"
			/// @DnDArgument : "key_8" ""ponder_eyes""
			/// @DnDArgument : "value_8" "s_zelinka_ponder_eyes"
			/// @DnDArgument : "key_9" ""ponder_mouth""
			/// @DnDArgument : "value_9" "s_zelinka_mouthmeh"
			/// @DnDArgument : "key_10" ""neutral_eyes""
			/// @DnDArgument : "value_10" "s_zelinka_eyes"
			/// @DnDArgument : "key_11" ""neutral_mouth""
			/// @DnDArgument : "value_11" "s_zelinka_mouthgood"
			ds_map_replace(expressions, "joy_eyes", s_zelinka_joy_eyes);
			ds_map_replace(expressions, "joy_mouth", s_zelinka_mouth_joy);
			ds_map_replace(expressions, "sad_eyes", s_zelinka_sad_eyes);
			ds_map_replace(expressions, "sad_mouth", s_zelinka_mouth_sad);
			ds_map_replace(expressions, "scared_eyes", s_zelinka_scared_eyes);
			ds_map_replace(expressions, "scared_mouth", s_zelinka_mouth_scared);
			ds_map_replace(expressions, "confident_eyes", s_zelinka_joy_eyes);
			ds_map_replace(expressions, "confident_mouth", s_zelinka_mouthgood);
			ds_map_replace(expressions, "ponder_eyes", s_zelinka_ponder_eyes);
			ds_map_replace(expressions, "ponder_mouth", s_zelinka_mouthmeh);
			ds_map_replace(expressions, "neutral_eyes", s_zelinka_eyes);
			ds_map_replace(expressions, "neutral_mouth", s_zelinka_mouthgood);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 0A021A2A
			/// @DnDInput : 3
			/// @DnDParent : 38B718F0
			/// @DnDArgument : "var" "talking_mouths"
			/// @DnDArgument : "value" "s_zelinka_mouth_a"
			/// @DnDArgument : "value_1" "s_zelinka_mouth_g"
			/// @DnDArgument : "value_2" "s_zelinka_mouth_o"
			ds_list_add(talking_mouths, s_zelinka_mouth_a, s_zelinka_mouth_g, s_zelinka_mouth_o);	break;}

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 5B88D4CF
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "expr" "hair"
	var l5B88D4CF_0 = hair;switch(l5B88D4CF_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 32161951
		/// @DnDParent : 5B88D4CF
		/// @DnDArgument : "const" ""afro_bun""
		case "afro_bun":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40DF0DFB
			/// @DnDInput : 2
			/// @DnDParent : 32161951
			/// @DnDArgument : "expr" "s_player_afro_bun_bangs"
			/// @DnDArgument : "expr_1" "s_player_afro_bun"
			/// @DnDArgument : "var" "bangs_sprite"
			/// @DnDArgument : "var_1" "hair_sprite"
			bangs_sprite = s_player_afro_bun_bangs;
			hair_sprite = s_player_afro_bun;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 13691236
		/// @DnDParent : 5B88D4CF
		/// @DnDArgument : "const" ""bald""
		case "bald":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67D04AE6
			/// @DnDInput : 2
			/// @DnDParent : 13691236
			/// @DnDArgument : "expr" "s_empty_sprite_for_bald"
			/// @DnDArgument : "expr_1" "s_empty_sprite_for_bald"
			/// @DnDArgument : "var" "bangs_sprite"
			/// @DnDArgument : "var_1" "hair_sprite"
			bangs_sprite = s_empty_sprite_for_bald;
			hair_sprite = s_empty_sprite_for_bald;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 359C18A3
		/// @DnDParent : 5B88D4CF
		/// @DnDArgument : "const" ""afro""
		case "afro":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 56407484
			/// @DnDInput : 3
			/// @DnDParent : 359C18A3
			/// @DnDArgument : "expr" "s_player_afro_bangs"
			/// @DnDArgument : "expr_1" "s_player_hair"
			/// @DnDArgument : "expr_2" "1.5"
			/// @DnDArgument : "var" "bangs_sprite"
			/// @DnDArgument : "var_1" "hair_sprite"
			/// @DnDArgument : "var_2" "hair_weight"
			bangs_sprite = s_player_afro_bangs;
			hair_sprite = s_player_hair;
			hair_weight = 1.5;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6C208E31
		/// @DnDParent : 5B88D4CF
		/// @DnDArgument : "const" ""cap_and_dreads""
		case "cap_and_dreads":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11DEB827
			/// @DnDInput : 3
			/// @DnDParent : 6C208E31
			/// @DnDArgument : "expr" "s_gurchin_hat"
			/// @DnDArgument : "expr_1" "s_empty_sprite_for_bald"
			/// @DnDArgument : "expr_2" ".2"
			/// @DnDArgument : "var" "bangs_sprite"
			/// @DnDArgument : "var_1" "hair_sprite"
			/// @DnDArgument : "var_2" "hair_weight"
			bangs_sprite = s_gurchin_hat;
			hair_sprite = s_empty_sprite_for_bald;
			hair_weight = .2;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 51227968
			/// @DnDParent : 6C208E31
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "rah"
			/// @DnDArgument : "objectid" "e_dreads"
			/// @DnDSaveInfo : "objectid" "e_dreads"
			rah = instance_create_layer(x + 0, y + 0, "Instances", e_dreads);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3AB36994
			/// @DnDInput : 4
			/// @DnDParent : 6C208E31
			/// @DnDArgument : "expr" "id"
			/// @DnDArgument : "expr_1" "depth+1"
			/// @DnDArgument : "expr_2" "rah"
			/// @DnDArgument : "expr_3" "true"
			/// @DnDArgument : "var" "rah.master"
			/// @DnDArgument : "var_1" "rah.depth"
			/// @DnDArgument : "var_2" "belongings.hair"
			/// @DnDArgument : "var_3" "rah.persistent"
			rah.master = id;
			rah.depth = depth+1;
			belongings.hair = rah;
			rah.persistent = true;	break;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B9320FD
	/// @DnDInput : 2
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "expr" "color_of_suit"
	/// @DnDArgument : "expr_1" "hair"
	/// @DnDArgument : "var" "suit_color"
	/// @DnDArgument : "var_1" "haircut"
	suit_color = color_of_suit;
	haircut = hair;

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 09F9B7E0
	/// @DnDDisabled : 1
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "weapon_invo"
	/// @DnDArgument : "value" "default_gun"


	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 121CA9B7
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "weapon_invo"
	/// @DnDArgument : "value" "default_gun"
	ds_list_add(weapon_invo, default_gun);

	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 52CCFA66
	/// @DnDInput : 6
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "var" "vocabulary"
	/// @DnDArgument : "key" "GOOD_JOB"
	/// @DnDArgument : "value" "good_job_lines"
	/// @DnDArgument : "key_1" "YOU_SUCK"
	/// @DnDArgument : "value_1" "you_suck_lines"
	/// @DnDArgument : "key_2" "I_NEED_HELP"
	/// @DnDArgument : "value_2" "i_need_help_lines"
	/// @DnDArgument : "key_3" "GLOAT"
	/// @DnDArgument : "value_3" "gloat_lines"
	/// @DnDArgument : "key_4" "I_WANT_THAT"
	/// @DnDArgument : "value_4" "i_want_that_lines"
	/// @DnDArgument : "key_5" "HI"
	/// @DnDArgument : "value_5" "hi_lines"
	ds_map_replace(vocabulary, GOOD_JOB, good_job_lines);
	ds_map_replace(vocabulary, YOU_SUCK, you_suck_lines);
	ds_map_replace(vocabulary, I_NEED_HELP, i_need_help_lines);
	ds_map_replace(vocabulary, GLOAT, gloat_lines);
	ds_map_replace(vocabulary, I_WANT_THAT, i_want_that_lines);
	ds_map_replace(vocabulary, HI, hi_lines);}