/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06E4892D
/// @DnDInput : 2
/// @DnDArgument : "expr" "weapon_index"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "var" "other.mygurn.weapon_index"
/// @DnDArgument : "var_1" "max_level"
other.mygurn.weapon_index = weapon_index;
max_level = 3;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 167B7856
/// @DnDArgument : "expr" "(other.mygurn.object_index == o_emptyhanded) || (other.mygurn.object_index == weapon_index)"
/// @DnDArgument : "not" "1"
if(!((other.mygurn.object_index == o_emptyhanded) || (other.mygurn.object_index == weapon_index))){	/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
	/// @DnDVersion : 1
	/// @DnDHash : 46FC9A96
	/// @DnDParent : 167B7856
	/// @DnDArgument : "assignee" "blah"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "other.weapon_invo"
	/// @DnDArgument : "value" "weapon_index"
	var blah = ds_list_find_index(other.weapon_invo, weapon_index);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39FA97C3
	/// @DnDComment : uhh if the weapons not in invo
	/// @DnDParent : 167B7856
	/// @DnDArgument : "var" "blah"
	/// @DnDArgument : "value" "-1"
	if(blah == -1){	/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
		/// @DnDVersion : 1
		/// @DnDHash : 5A3D4B78
		/// @DnDParent : 39FA97C3
		/// @DnDArgument : "assignee" "is_there_space"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "other.weapon_invo"
		/// @DnDArgument : "value" "o_emptyhanded"
		var is_there_space = ds_list_find_index(other.weapon_invo, o_emptyhanded);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2EBBEB9B
		/// @DnDParent : 39FA97C3
		/// @DnDArgument : "xpos" "other.x"
		/// @DnDArgument : "ypos" "other.y"
		/// @DnDArgument : "var" "level_notif"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_notif"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_notif"
		var level_notif = instance_create_layer(other.x, other.y, "Effects", e_notif);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58F7D262
		/// @DnDParent : 39FA97C3
		/// @DnDArgument : "expr" "string(is_there_space)"
		/// @DnDArgument : "var" "level_notif.dis_text"
		level_notif.dis_text = string(is_there_space);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 122121CD
		/// @DnDComment : no space$(13_10)
		/// @DnDParent : 39FA97C3
		/// @DnDArgument : "var" "is_there_space"
		/// @DnDArgument : "value" "-1"
		if(is_there_space == -1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CB8B7AC
			/// @DnDParent : 122121CD
			/// @DnDArgument : "var" "o_game.swaps_farthest_weapon"
			/// @DnDArgument : "value" "true"
			if(o_game.swaps_farthest_weapon == true){	/// @DnDAction : YoYo Games.Data Structures.List_Remove
				/// @DnDVersion : 1
				/// @DnDHash : 2EE2DBE2
				/// @DnDParent : 5CB8B7AC
				/// @DnDArgument : "var" "other.weapon_invo"
				/// @DnDArgument : "index" "other.weapon_invo_cap-1"
				if(ds_list_size(other.weapon_invo) > other.weapon_invo_cap-1)	ds_list_delete(other.weapon_invo, other.weapon_invo_cap-1);
			
				/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
				/// @DnDVersion : 1
				/// @DnDHash : 00AC1703
				/// @DnDParent : 5CB8B7AC
				/// @DnDArgument : "var" "other.weapon_ammo"
				/// @DnDArgument : "key" "other.mygurn.object_index"
				/// @DnDArgument : "value" "other.mygurn.ammo"
				ds_map_replace(other.weapon_ammo, other.mygurn.object_index, other.mygurn.ammo);
			
				/// @DnDAction : YoYo Games.Data Structures.List_Add
				/// @DnDVersion : 1
				/// @DnDHash : 0493E848
				/// @DnDParent : 5CB8B7AC
				/// @DnDArgument : "var" "other.weapon_invo"
				/// @DnDArgument : "value" "other.mygurn.object_index"
				ds_list_add(other.weapon_invo, other.mygurn.object_index);}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4E36D089
		/// @DnDParent : 39FA97C3
		else{	/// @DnDAction : YoYo Games.Data Structures.List_Remove
			/// @DnDVersion : 1
			/// @DnDHash : 429CD71F
			/// @DnDParent : 4E36D089
			/// @DnDArgument : "var" "other.weapon_invo"
			/// @DnDArgument : "index" "is_there_space"
			if(ds_list_size(other.weapon_invo) > is_there_space)	ds_list_delete(other.weapon_invo, is_there_space);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 5C32AE35
			/// @DnDParent : 4E36D089
			/// @DnDArgument : "var" "other.weapon_invo"
			/// @DnDArgument : "value" "other.mygurn.object_index"
			ds_list_add(other.weapon_invo, other.mygurn.object_index);}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2D66C3A7
	/// @DnDParent : 167B7856
	else{	/// @DnDAction : YoYo Games.Data Structures.List_Remove
		/// @DnDVersion : 1
		/// @DnDHash : 5A0353A6
		/// @DnDParent : 2D66C3A7
		/// @DnDArgument : "var" "other.weapon_invo"
		/// @DnDArgument : "index" "blah"
		if(ds_list_size(other.weapon_invo) > blah)	ds_list_delete(other.weapon_invo, blah);
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1979D06E
		/// @DnDParent : 2D66C3A7
		/// @DnDArgument : "var" "other.weapon_ammo"
		/// @DnDArgument : "key" "other.mygurn.object_index"
		/// @DnDArgument : "value" "other.mygurn.ammo"
		ds_map_replace(other.weapon_ammo, other.mygurn.object_index, other.mygurn.ammo);
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 0FAE1F0F
		/// @DnDParent : 2D66C3A7
		/// @DnDArgument : "var" "other.weapon_invo"
		/// @DnDArgument : "value" "other.mygurn.object_index"
		ds_list_add(other.weapon_invo, other.mygurn.object_index);}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 641B3B6B
/// @DnDArgument : "expr" "other.mygurn.object_index == o_emptyhanded"
if(other.mygurn.object_index == o_emptyhanded){	/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
	/// @DnDVersion : 1
	/// @DnDHash : 108F3BCC
	/// @DnDComment : checking if the weapon is in invo
	/// @DnDParent : 641B3B6B
	/// @DnDArgument : "assignee" "do_i_have_the_weapon"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "other.weapon_invo"
	/// @DnDArgument : "value" "weapon_index"
	var do_i_have_the_weapon = ds_list_find_index(other.weapon_invo, weapon_index);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C504F85
	/// @DnDParent : 641B3B6B
	/// @DnDArgument : "var" "do_i_have_the_weapon"
	/// @DnDArgument : "op" "4"
	if(do_i_have_the_weapon >= 0){	/// @DnDAction : YoYo Games.Data Structures.List_Remove
		/// @DnDVersion : 1
		/// @DnDHash : 321AE954
		/// @DnDParent : 0C504F85
		/// @DnDArgument : "var" "other.weapon_invo"
		/// @DnDArgument : "index" "do_i_have_the_weapon"
		if(ds_list_size(other.weapon_invo) > do_i_have_the_weapon)	ds_list_delete(other.weapon_invo, do_i_have_the_weapon);
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 0A91DBB6
		/// @DnDParent : 0C504F85
		/// @DnDArgument : "var" "other.weapon_invo"
		/// @DnDArgument : "value" "other.mygurn.object_index"
		ds_list_add(other.weapon_invo, other.mygurn.object_index);}}

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 6323BD4C
/// @DnDApplyTo : other.mygurn
/// @DnDArgument : "objind" "weapon_index"
with(other.mygurn) instance_change(weapon_index, true);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 14E922F1
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-30"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_flash"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_flash"
instance_create_layer(x + 0, y + -30, "Effects", e_flash);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 781E3BCB
/// @DnDArgument : "soundid" "sfx_shotgun_cock"
/// @DnDSaveInfo : "soundid" "sfx_shotgun_cock"
audio_play_sound(sfx_shotgun_cock, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 5B1EADAC
/// @DnDArgument : "assignee" "cur_wep_lvl"
/// @DnDArgument : "var" "other.weapon_levels"
/// @DnDArgument : "key" "weapon_index"
cur_wep_lvl = ds_map_find_value(other.weapon_levels, weapon_index);

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 346224FB
/// @DnDArgument : "var" "cur_wep_lvl"
if(cur_wep_lvl == undefined){	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3BD17F4F
	/// @DnDParent : 346224FB
	/// @DnDArgument : "var" "other.weapon_levels"
	/// @DnDArgument : "key" "weapon_index"
	/// @DnDArgument : "value" "1"
	ds_map_replace(other.weapon_levels, weapon_index, 1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BCB4727
	/// @DnDParent : 346224FB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "other.curr_weapon_level"
	other.curr_weapon_level = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6B8901DB
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77DC8D79
	/// @DnDParent : 6B8901DB
	/// @DnDArgument : "expr" "scr_weapon_max_levels(weapon_index)"
	/// @DnDArgument : "var" "max_level"
	max_level = scr_weapon_max_levels(weapon_index);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 79FFD134
	/// @DnDDisabled : 1
	/// @DnDParent : 6B8901DB
	/// @DnDArgument : "expr" "weapon_index"
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3AF16A34
	/// @DnDDisabled : 1
	/// @DnDParent : 79FFD134
	/// @DnDArgument : "const" "o_gon"
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3847F8D7
	/// @DnDDisabled : 1
	/// @DnDParent : 3AF16A34
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "max_level"
	
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 63CD15C6
	/// @DnDDisabled : 1
	/// @DnDParent : 79FFD134
	/// @DnDArgument : "const" "o_gilbert_gun"
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7629F106
	/// @DnDDisabled : 1
	/// @DnDParent : 63CD15C6
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "max_level"
	
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 099AACC2
	/// @DnDDisabled : 1
	/// @DnDParent : 79FFD134
	/// @DnDArgument : "const" "o_deathshower"
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5594BCBA
	/// @DnDDisabled : 1
	/// @DnDParent : 099AACC2
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "max_level"

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 237F698E
	/// @DnDParent : 6B8901DB
	/// @DnDArgument : "var" "cur_wep_lvl"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "max_level"
	if(cur_wep_lvl < max_level){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7DE87F4E
		/// @DnDParent : 237F698E
		/// @DnDArgument : "soundid" "sfx_charge"
		/// @DnDSaveInfo : "soundid" "sfx_charge"
		audio_play_sound(sfx_charge, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 01644BC4
		/// @DnDParent : 237F698E
		/// @DnDArgument : "xpos" "other.x"
		/// @DnDArgument : "ypos" "other.y"
		/// @DnDArgument : "var" "level_notif"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_notif"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_notif"
		var level_notif = instance_create_layer(other.x, other.y, "Effects", e_notif);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30188E26
		/// @DnDParent : 237F698E
		/// @DnDArgument : "expr" "scr_weapon_names(weapon_index) + " at level " + string(cur_wep_lvl + 1) + "!""
		/// @DnDArgument : "var" "level_notif.dis_text"
		level_notif.dis_text = scr_weapon_names(weapon_index) + " at level " + string(cur_wep_lvl + 1) + "!";
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2753E5FB
		/// @DnDParent : 237F698E
		/// @DnDArgument : "var" "other.weapon_levels"
		/// @DnDArgument : "key" "weapon_index"
		/// @DnDArgument : "value" "cur_wep_lvl + 1"
		ds_map_replace(other.weapon_levels, weapon_index, cur_wep_lvl + 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4389D072
		/// @DnDParent : 237F698E
		/// @DnDArgument : "expr" "cur_wep_lvl + 1"
		/// @DnDArgument : "var" "other.curr_weapon_level"
		other.curr_weapon_level = cur_wep_lvl + 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0C4AF8B5
	/// @DnDParent : 6B8901DB
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C988AD0
		/// @DnDParent : 0C4AF8B5
		/// @DnDArgument : "expr" "max_level"
		/// @DnDArgument : "var" "other.curr_weapon_level"
		other.curr_weapon_level = max_level;}}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 686C6CFD
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 766F5A3F
/// @DnDArgument : "expr" "max_level"
/// @DnDArgument : "var" "other.max_gun_level"
other.max_gun_level = max_level;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 027574C5
/// @DnDArgument : "expr" "weapon_index"
var l027574C5_0 = weapon_index;switch(l027574C5_0){	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 2D205C1F
	/// @DnDParent : 027574C5
	default:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46E69B74
		/// @DnDParent : 2D205C1F
		/// @DnDArgument : "expr" "floor(other.mygurn.ammo_cap*global.ammo_bonus*other.ammo_bonus)"
		/// @DnDArgument : "var" "other.mygurn.ammo"
		other.mygurn.ammo = floor(other.mygurn.ammo_cap*global.ammo_bonus*other.ammo_bonus);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 19C61F36
	/// @DnDParent : 027574C5
	/// @DnDArgument : "const" "o_bat"
	case o_bat:	/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 7D077E7E
		/// @DnDParent : 19C61F36
		break;	break;}