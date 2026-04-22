/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 363FC2CB
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "player_controlz"
function player_controlz() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5AD26DAB
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "script" "scr_emote_controls"
	/// @DnDSaveInfo : "script" "scr_emote_controls"
	script_execute(scr_emote_controls);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5EC131F0
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "tick"
	/// @DnDArgument : "not" "1"
	if(!(tick))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 64D7FCA8
		/// @DnDParent : 5EC131F0
		/// @DnDArgument : "expr" "left"
		if(left)
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6EDE2FAD
			/// @DnDInput : 2
			/// @DnDParent : 64D7FCA8
			/// @DnDArgument : "expr" "left*-.5*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "clamp(hsp,left*-walk_speed*global.movementspeed_bonus*movementspeed_bonus,walk_speed*global.movementspeed_bonus*movementspeed_bonus)"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "hsp"
			hsp += left*-.5*global.game_speed;
			hsp = clamp(hsp,left*-walk_speed*global.movementspeed_bonus*movementspeed_bonus,walk_speed*global.movementspeed_bonus*movementspeed_bonus);
		
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
			var l660980BB_0 = instance_place(x + -1, y + -30, [o_solid]);
if ((l660980BB_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 26BA5B81
				/// @DnDParent : 660980BB
				/// @DnDArgument : "expr" "jump"
				if(jump)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 72482F79
					/// @DnDParent : 26BA5B81
					/// @DnDArgument : "expr" "on_ground"
					/// @DnDArgument : "not" "1"
					if(!(on_ground))
{
	/// @DnDAction : YoYo Games.Common.Variable
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
						instance_create_layer(x + 0, y + 0, "Instances", e_freedust);
}
}
}
}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7862B48D
		/// @DnDParent : 5EC131F0
		/// @DnDArgument : "expr" "right"
		if(right)
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A6FF6AF
			/// @DnDInput : 2
			/// @DnDParent : 7862B48D
			/// @DnDArgument : "expr" "right*.5*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "clamp(hsp,-walk_speed*global.movementspeed_bonus*movementspeed_bonus,right*walk_speed*global.movementspeed_bonus*movementspeed_bonus)"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "hsp"
			hsp += right*.5*global.game_speed;
			hsp = clamp(hsp,-walk_speed*global.movementspeed_bonus*movementspeed_bonus,right*walk_speed*global.movementspeed_bonus*movementspeed_bonus);
		
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
			var l02F902ED_0 = instance_place(x + 1, y + -30, [o_solid]);
if ((l02F902ED_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 62302423
				/// @DnDParent : 02F902ED
				/// @DnDArgument : "expr" "jump"
				if(jump)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 4F9D51DD
					/// @DnDParent : 62302423
					/// @DnDArgument : "expr" "on_ground"
					/// @DnDArgument : "not" "1"
					if(!(on_ground))
{
	/// @DnDAction : YoYo Games.Common.Variable
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
						instance_create_layer(x + 0, y + 0, "Instances", e_freedust);
}
}
}
}
}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5E443FF5
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "jump_release"
	if(jump_release)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B0F3E00
		/// @DnDParent : 5E443FF5
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "1"
		if(vsp < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0A6196DC
			/// @DnDParent : 3B0F3E00
			/// @DnDArgument : "expr" "vsp*.3"
			/// @DnDArgument : "var" "vsp"
			vsp = vsp*.3;
}
}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 534387FD
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "swap"
	if(swap)
{
	/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
		/// @DnDVersion : 1
		/// @DnDHash : 37D00735
		/// @DnDDisabled : 1
		/// @DnDParent : 534387FD
		/// @DnDArgument : "assignee" "weapon_swap_target"
		/// @DnDArgument : "var" "weapon_invo"
	
	
		/// @DnDAction : YoYo Games.Data Structures.Stack_Push
		/// @DnDVersion : 1
		/// @DnDHash : 5402B3F7
		/// @DnDDisabled : 1
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "weapon_invo"
		/// @DnDArgument : "value" "mygurn.object_index"
	
	
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 4E17E1F8
		/// @DnDParent : 534387FD
		/// @DnDArgument : "assignee" "weapon_swap_target"
		/// @DnDArgument : "var" "weapon_invo"
		weapon_swap_target = ds_list_find_value(weapon_invo, 0);
	
		/// @DnDAction : YoYo Games.Data Structures.List_Remove
		/// @DnDVersion : 1
		/// @DnDHash : 17861410
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "weapon_invo"
		if(ds_list_size(weapon_invo) > 0)
	ds_list_delete(weapon_invo, 0);
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 086C25F7
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "weapon_ammo"
		/// @DnDArgument : "key" "mygurn.object_index"
		/// @DnDArgument : "value" "mygurn.ammo"
		ds_map_replace(weapon_ammo, mygurn.object_index, mygurn.ammo);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 608C79FC
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "mygurn.anim"
		/// @DnDArgument : "value" "stance.RELOAD"
		if(mygurn.anim == stance.RELOAD)
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 27A6E993
			/// @DnDParent : 608C79FC
			/// @DnDArgument : "var" "weapon_reload_info"
			/// @DnDArgument : "key" "mygurn.object_index"
			/// @DnDArgument : "value" "mygurn.charge"
			ds_map_replace(weapon_reload_info, mygurn.object_index, mygurn.charge);
}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58ECAD56
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "mygurn.anim"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "stance.RELOAD"
		if(!(mygurn.anim == stance.RELOAD))
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 2852F69A
			/// @DnDParent : 58ECAD56
			/// @DnDArgument : "assignee" "am_I_real"
			/// @DnDArgument : "assignee_temp" "1"
			/// @DnDArgument : "var" "weapon_reload_info"
			/// @DnDArgument : "key" "mygurn.object_index"
			var am_I_real = ds_map_find_value(weapon_reload_info, mygurn.object_index);
		
			/// @DnDAction : YoYo Games.Common.If_Undefined
			/// @DnDVersion : 1
			/// @DnDHash : 5ADCE3C4
			/// @DnDParent : 58ECAD56
			/// @DnDArgument : "var" "am_I_real"
			/// @DnDArgument : "not" "1"
			if(am_I_real != undefined)
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Remove
				/// @DnDVersion : 1
				/// @DnDHash : 2FDCBF18
				/// @DnDParent : 5ADCE3C4
				/// @DnDArgument : "map" "weapon_reload_info"
				/// @DnDArgument : "key" "mygurn.object_index"
				ds_map_delete(weapon_reload_info, mygurn.object_index);
}
}
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 3712F94E
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "weapon_invo"
		/// @DnDArgument : "value" "mygurn.object_index"
		ds_list_add(weapon_invo, mygurn.object_index);
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1EA9BD04
		/// @DnDApplyTo : mygurn
		/// @DnDParent : 534387FD
		/// @DnDArgument : "objind" "other.weapon_swap_target"
		with(mygurn) instance_change(other.weapon_swap_target, true);
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1FC4BDC8
		/// @DnDParent : 534387FD
		/// @DnDArgument : "assignee" "ammo_count"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "weapon_ammo"
		/// @DnDArgument : "key" "weapon_swap_target"
		var ammo_count = ds_map_find_value(weapon_ammo, weapon_swap_target);
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1711F073
		/// @DnDParent : 534387FD
		/// @DnDArgument : "assignee" "auto_reload"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "weapon_reload_info"
		/// @DnDArgument : "key" "mygurn.object_index"
		var auto_reload = ds_map_find_value(weapon_reload_info, mygurn.object_index);
	
		/// @DnDAction : YoYo Games.Common.If_Undefined
		/// @DnDVersion : 1
		/// @DnDHash : 1C49CD24
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "ammo_count"
		/// @DnDArgument : "not" "1"
		if(ammo_count != undefined)
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73279C1B
			/// @DnDParent : 1C49CD24
			/// @DnDArgument : "expr" "ammo_count"
			/// @DnDArgument : "var" "mygurn.ammo"
			mygurn.ammo = ammo_count;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2BEA59E3
			/// @DnDParent : 1C49CD24
			/// @DnDArgument : "expr" "ammo_count <= 0"
			if(ammo_count <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Undefined
				/// @DnDVersion : 1
				/// @DnDHash : 650F619D
				/// @DnDParent : 2BEA59E3
				/// @DnDArgument : "var" "auto_reload"
				if(auto_reload == undefined)
{
	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4CC54391
					/// @DnDParent : 650F619D
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "reload"
					reload = true;
}
}
}
	
		/// @DnDAction : YoYo Games.Common.If_Undefined
		/// @DnDVersion : 1
		/// @DnDHash : 4EE96627
		/// @DnDParent : 534387FD
		/// @DnDArgument : "var" "auto_reload"
		/// @DnDArgument : "not" "1"
		if(auto_reload != undefined)
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 503EBD69
			/// @DnDParent : 4EE96627
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "var" "mygurn.anim"
			mygurn.anim = stance.RELOAD;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68EB7C03
			/// @DnDParent : 4EE96627
			/// @DnDArgument : "expr" "auto_reload"
			/// @DnDArgument : "var" "mygurn.charge"
			mygurn.charge = auto_reload;
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Remove
			/// @DnDVersion : 1
			/// @DnDHash : 33C581F9
			/// @DnDParent : 4EE96627
			/// @DnDArgument : "map" "weapon_reload_info"
			/// @DnDArgument : "key" "mygurn.object_index"
			ds_map_delete(weapon_reload_info, mygurn.object_index);
}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7467CFEC
		/// @DnDParent : 534387FD
		/// @DnDArgument : "expr" "90"
		/// @DnDArgument : "var" "mygurn.androtate"
		mygurn.androtate = 90;
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1BA2EE7E
		/// @DnDParent : 534387FD
		/// @DnDArgument : "assignee" "curr_weapon_level"
		/// @DnDArgument : "var" "weapon_levels"
		/// @DnDArgument : "key" "mygurn.object_index"
		curr_weapon_level = ds_map_find_value(weapon_levels, mygurn.object_index);
}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4877C748
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "jump"
	if(jump)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 12444FEA
		/// @DnDParent : 4877C748
		/// @DnDArgument : "expr" "on_ground"
		if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D074FAC
			/// @DnDParent : 12444FEA
			/// @DnDArgument : "expr" "-jumpheight"
			/// @DnDArgument : "var" "vsp"
			vsp = -jumpheight;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 288A5029
			/// @DnDParent : 12444FEA
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Object73"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "Object73"
			instance_create_layer(x + 0, y + 0, "Effects", Object73);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4AA36FE3
			/// @DnDParent : 12444FEA
			/// @DnDArgument : "soundid" "sfx_hop"
			/// @DnDArgument : "pitch" "random_range(.8, 1.2)"
			/// @DnDSaveInfo : "soundid" "sfx_hop"
			audio_play_sound(sfx_hop, 0, 0, 1.0, undefined, random_range(.8, 1.2));
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 3D4E8938
			/// @DnDParent : 12444FEA
			/// @DnDArgument : "expr" "tick"
			if(tick)
{
	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 53922A58
				/// @DnDInput : 2
				/// @DnDParent : 3D4E8938
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "-20"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "tick"
				/// @DnDArgument : "var_1" "v_fuel"
				tick = false;
				v_fuel += -20;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0715AC08
				/// @DnDParent : 3D4E8938
				/// @DnDArgument : "expr" "-jumpheight*1.4"
				/// @DnDArgument : "var" "vsp"
				vsp = -jumpheight*1.4;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 689E1EA5
				/// @DnDParent : 3D4E8938
				/// @DnDArgument : "soundid" "sfx_boost_start"
				/// @DnDArgument : "gain" ".8"
				/// @DnDArgument : "pitch" "random_range(.8,1.2)+.4"
				/// @DnDSaveInfo : "soundid" "sfx_boost_start"
				audio_play_sound(sfx_boost_start, 0, 0, .8, undefined, random_range(.8,1.2)+.4);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1D859158
				/// @DnDParent : 3D4E8938
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
				/// @DnDHash : 32AEA222
				/// @DnDParent : 3D4E8938
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
				/// @DnDHash : 4C6BF7C3
				/// @DnDParent : 3D4E8938
				/// @DnDArgument : "var" "bloopr"
				/// @DnDArgument : "value" "-90+facing*10"
				var bloopr = -90+facing*10;
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 11917BF8
				/// @DnDInput : 3
				/// @DnDApplyTo : bloop
				/// @DnDParent : 3D4E8938
				/// @DnDArgument : "value" "c_orange"
				/// @DnDArgument : "value_1" "bloopr"
				/// @DnDArgument : "value_2" "-1.1"
				/// @DnDArgument : "instvar" "14"
				/// @DnDArgument : "instvar_1" "12"
				/// @DnDArgument : "instvar_2" "15"
				with(bloop) {
				image_blend = c_orange;
				image_angle = bloopr;
				image_xscale = -1.1;
				}
}
}
}

	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 75DE359E
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "var" "mount"
	if(mount == undefined)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4C75F46E
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "expr" "boost_start"
		if(boost_start)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5B624151
			/// @DnDDisabled : 1
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "left"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21964D69
			/// @DnDDisabled : 1
			/// @DnDParent : 5B624151
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "boostxdir"
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7E9FD3D6
			/// @DnDDisabled : 1
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "right"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6253676C
			/// @DnDDisabled : 1
			/// @DnDParent : 7E9FD3D6
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "boostxdir"
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 54B48EB6
			/// @DnDDisabled : 1
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "down"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35913CBD
			/// @DnDDisabled : 1
			/// @DnDParent : 54B48EB6
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "boostydir"
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 25E30651
			/// @DnDDisabled : 1
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "up"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A65D30F
			/// @DnDDisabled : 1
			/// @DnDParent : 25E30651
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "boostydir"
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7D146FB4
			/// @DnDInput : 2
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "lengthdir_x(1, nav)"
			/// @DnDArgument : "expr_1" "lengthdir_y(1, nav)"
			/// @DnDArgument : "var" "boostxdir"
			/// @DnDArgument : "var_1" "boostydir"
			boostxdir = lengthdir_x(1, nav);
			boostydir = lengthdir_y(1, nav);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 4550CD2F
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "on_ground"
			if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 11EA8671
				/// @DnDParent : 4550CD2F
				/// @DnDArgument : "expr" "left || right || up || down"
				/// @DnDArgument : "not" "1"
				if(!(left || right || up || down))
{
	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0B3C42C9
					/// @DnDParent : 11EA8671
					/// @DnDArgument : "expr" "facing"
					/// @DnDArgument : "var" "boostxdir"
					boostxdir = facing;
}
}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 73E5B377
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "expr" "on_ground"
			/// @DnDArgument : "not" "1"
			if(!(on_ground))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 60FCDA52
				/// @DnDParent : 73E5B377
				/// @DnDArgument : "expr" "left || right || up || down"
				/// @DnDArgument : "not" "1"
				if(!(left || right || up || down))
{
	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7E1FD759
					/// @DnDInput : 2
					/// @DnDParent : 60FCDA52
					/// @DnDArgument : "var" "boostxdir"
					/// @DnDArgument : "var_1" "boostydir"
					boostxdir = 0;
					boostydir = 0;
}
}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D642918
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "op" "2"
			if(v_fuel > 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
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
				/// @DnDDisabled : 1
				/// @DnDParent : 3D642918
				/// @DnDArgument : "target" "boostloop"
				/// @DnDArgument : "soundid" "sfx_hover_thing"
				/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
			
			
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
				}
}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F7E3DBB
			/// @DnDParent : 4C75F46E
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "op" "3"
			if(v_fuel <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 74E18D24
				/// @DnDParent : 1F7E3DBB
				/// @DnDArgument : "soundid" "sfx_dry_boost"
				/// @DnDSaveInfo : "soundid" "sfx_dry_boost"
				audio_play_sound(sfx_dry_boost, 0, 0, 1.0, undefined, 1.0);
}
}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 21006179
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "expr" "boost"
		if(boost)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 70408C2B
			/// @DnDParent : 21006179
			/// @DnDArgument : "expr" "tick"
			if(tick)
{
	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0FB74E7E
				/// @DnDInput : 2
				/// @DnDParent : 70408C2B
				/// @DnDArgument : "expr" "boostxdir*13"
				/// @DnDArgument : "expr_1" "boostydir*13"
				/// @DnDArgument : "var" "hsp"
				/// @DnDArgument : "var_1" "vsp"
				hsp = boostxdir*13;
				vsp = boostydir*13;
}
}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 34553416
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "expr" "InputReleased(INPUT_VERB.BOOST)"
		if(InputReleased(INPUT_VERB.BOOST))
{
	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C03C79A
			/// @DnDInput : 3
			/// @DnDParent : 34553416
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
			/// @DnDParent : 34553416
			/// @DnDArgument : "soundid" "boostloop"
			audio_stop_sound(boostloop);
}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6680D4C0
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "var" "v_fuel"
		/// @DnDArgument : "op" "3"
		if(v_fuel <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
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
			audio_stop_sound(boostloop);
}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0688F5D5
		/// @DnDParent : 75DE359E
		/// @DnDArgument : "expr" "melee"
		if(melee)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 36F626D2
			/// @DnDParent : 0688F5D5
			/// @DnDArgument : "var" "melee_cooldown"
			/// @DnDArgument : "op" "3"
			if(melee_cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 38E3D9CF
				/// @DnDInput : 2
				/// @DnDParent : 36F626D2
				/// @DnDArgument : "expr" "-4"
				/// @DnDArgument : "expr_1" "140*global.firerate_bonus*firerate_bonus"
				/// @DnDArgument : "var" "vsp"
				/// @DnDArgument : "var_1" "melee_cooldown"
				vsp = -4;
				melee_cooldown = 140*global.firerate_bonus*firerate_bonus;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7A364440
				/// @DnDParent : 36F626D2
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "billy"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "o_kick_up"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_kick_up"
				var billy = instance_create_layer(x + 0, y + 0, "Instances_Front", o_kick_up);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 1C22E363
				/// @DnDParent : 36F626D2
				/// @DnDArgument : "soundid" "sfx_kick"
				/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
				/// @DnDSaveInfo : "soundid" "sfx_kick"
				audio_play_sound(sfx_kick, 0, 0, 1.0, undefined, random_range(0.9,1.1));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3C53750A
				/// @DnDInput : 2
				/// @DnDParent : 36F626D2
				/// @DnDArgument : "expr" "facing"
				/// @DnDArgument : "expr_1" "id"
				/// @DnDArgument : "var" "billy.facing"
				/// @DnDArgument : "var_1" "billy.sender"
				billy.facing = facing;
				billy.sender = id;
}
}
}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 53D1415F
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "tick"
	if(tick)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4E2710FF
		/// @DnDParent : 53D1415F
		/// @DnDArgument : "expr" "InputCheck(INPUT_VERB.BOOST)"
		if(InputCheck(INPUT_VERB.BOOST))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A9D2408
			/// @DnDParent : 4E2710FF
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "op" "2"
			if(v_fuel > 0)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 6CC337C3
				/// @DnDParent : 4A9D2408
				/// @DnDArgument : "soundid" "boostloop"
				/// @DnDArgument : "not" "1"
				var l6CC337C3_0 = boostloop;
if (!audio_is_playing(l6CC337C3_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 47B37F33
					/// @DnDParent : 6CC337C3
					/// @DnDArgument : "target" "boostloop"
					/// @DnDArgument : "soundid" "sfx_hover_thing"
					/// @DnDArgument : "pitch" "1.0+v_fuel*.5"
					/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
					boostloop = audio_play_sound(sfx_hover_thing, 0, 0, 1.0, undefined, 1.0+v_fuel*.5);
}
}
}
}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7038A84F
	/// @DnDParent : 363FC2CB
	/// @DnDArgument : "expr" "special"
	if(special)
{
	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13EB5123
		/// @DnDParent : 7038A84F
		/// @DnDArgument : "expr" "special_meter_cap+1"
		/// @DnDArgument : "var" "special_meter"
		special_meter = special_meter_cap+1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23AC9093
		/// @DnDParent : 7038A84F
		/// @DnDArgument : "var" "special_meter"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "special_meter_cap"
		if(special_meter >= special_meter_cap)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 78BC4BFE
			/// @DnDParent : 23AC9093
			/// @DnDArgument : "soundid" "dry_fart"
			/// @DnDArgument : "pitch" ".5"
			/// @DnDSaveInfo : "soundid" "dry_fart"
			audio_play_sound(dry_fart, 0, 0, 1.0, undefined, .5);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4C596D93
			/// @DnDParent : 23AC9093
			/// @DnDArgument : "script" "scr_specials"
			/// @DnDSaveInfo : "script" "scr_specials"
			script_execute(scr_specials);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3AB090C0
			/// @DnDParent : 23AC9093
			/// @DnDArgument : "var" "special_meter"
			special_meter = 0;
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 2CD0B982
			/// @DnDParent : 23AC9093
			/// @DnDArgument : "times" "8"
			repeat(8)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 312EF96A
				/// @DnDParent : 2CD0B982
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "joe"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "e_freedust"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_freedust"
				var joe = instance_create_layer(x + 0, y + 0, "Effects", e_freedust);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2BF7A86A
				/// @DnDParent : 2CD0B982
				/// @DnDArgument : "expr" "random_range(-2,2)"
				/// @DnDArgument : "var" "joe.hspeed"
				joe.hspeed = random_range(-2,2);
}
}
}
}