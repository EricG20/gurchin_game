/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7A41EDD0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "scr_change_character"
/// @DnDArgument : "arg" "name"
/// @DnDArgument : "arg_1" "hair"
/// @DnDArgument : "arg_2" "color_of_suit"
function scr_change_character(name, hair, color_of_suit) {	/// @DnDAction : YoYo Games.Switch.Switch
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
			/// @DnDHash : 1B2F2B1C
			/// @DnDInput : 26
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
			/// @DnDArgument : "expr_12" "-67-6"
			/// @DnDArgument : "expr_13" "-11-39"
			/// @DnDArgument : "expr_14" "2.2"
			/// @DnDArgument : "expr_15" ""Zelinka""
			/// @DnDArgument : "expr_16" "5"
			/// @DnDArgument : "expr_17" "6.7"
			/// @DnDArgument : "expr_18" "13"
			/// @DnDArgument : "expr_19" "3"
			/// @DnDArgument : "expr_20" "4"
			/// @DnDArgument : "expr_21" ".5"
			/// @DnDArgument : "expr_22" "2"
			/// @DnDArgument : "expr_23" "300"
			/// @DnDArgument : "expr_24" "s_zelinka_knockback"
			/// @DnDArgument : "expr_25" "o_goozi"
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
			hair_sprite = s_zelinka_hair;
			bangs_sprite = s_zelinka_bangs;
			smile_sprite = s_zelinka_mouthgood;
			straightface_sprite = s_zelinka_mouthmeh;
			frown_sprite = s_zelinka_mouthohnah;
			idle_sprite = s_zelinka_idle;
			walk_sprite = s_zelinka_walk;
			eyes_sprite = s_zelinka_eyes;
			head_height = -41-8;
			eye_height = -67-6;
			hair_height = -11-39;
			walk_lift_magnitude = 2.2;
			character_index = "Zelinka";
			max_hp = 5;
			walk_speed = 6.7;
			jumpheight = 13;
			walk_bobbing_strength = 3;
			ear_bobbing_strength = 4;
			hair_weight = .5;
			head_offset_x = 2;
			special_meter_cap = 300;
			knockback_sprite = s_zelinka_knockback;
			default_gun = o_goozi;
		
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78C6DEDE
			/// @DnDApplyTo : mygurn
			/// @DnDParent : 39FEBF4E
			/// @DnDArgument : "objind" "o_goozi"
			/// @DnDSaveInfo : "objind" "o_goozi"
			with(mygurn) instance_change(o_goozi, true);
		
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
			ds_map_replace(weapon_levels, o_goozi, 1);	break;}

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
			hair_weight = 1.5;	break;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B9320FD
	/// @DnDParent : 7A41EDD0
	/// @DnDArgument : "expr" "color_of_suit"
	/// @DnDArgument : "var" "suit_color"
	suit_color = color_of_suit;}