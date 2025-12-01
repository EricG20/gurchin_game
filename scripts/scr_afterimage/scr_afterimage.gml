/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43E78B5B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_afterimage"
function scr_afterimage() {	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 6CD3A9ED
	/// @DnDParent : 43E78B5B
	/// @DnDArgument : "expr" "object_index"
	var l6CD3A9ED_0 = object_index;switch(l6CD3A9ED_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0BD42BDB
		/// @DnDParent : 6CD3A9ED
		/// @DnDArgument : "const" "o_player"
		case o_player:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 411C7E05
			/// @DnDParent : 0BD42BDB
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "afim"
			/// @DnDArgument : "objectid" "e_afterimage"
			/// @DnDSaveInfo : "objectid" "e_afterimage"
			afim = instance_create_layer(x + 0, y + 0, "Instances", e_afterimage);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1EFDDACF
			/// @DnDInput : 5
			/// @DnDParent : 0BD42BDB
			/// @DnDArgument : "expr" "facing"
			/// @DnDArgument : "expr_1" "image_yscale"
			/// @DnDArgument : "expr_2" "sprite_index"
			/// @DnDArgument : "expr_3" "image_index"
			/// @DnDArgument : "expr_4" "image_angle"
			/// @DnDArgument : "var" "afim.image_xscale"
			/// @DnDArgument : "var_1" "afim.image_yscale"
			/// @DnDArgument : "var_2" "afim.sprite_index"
			/// @DnDArgument : "var_3" "afim.image_index"
			/// @DnDArgument : "var_4" "afim.image_angle"
			afim.image_xscale = facing;
			afim.image_yscale = image_yscale;
			afim.sprite_index = sprite_index;
			afim.image_index = image_index;
			afim.image_angle = image_angle;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 52A4434F
			/// @DnDParent : 0BD42BDB
			/// @DnDArgument : "xpos" "head_offset_x - hsp"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-39+head_offset_y - vsp"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "hafim"
			/// @DnDArgument : "objectid" "e_afterimage"
			/// @DnDSaveInfo : "objectid" "e_afterimage"
			hafim = instance_create_layer(x + head_offset_x - hsp, y + -39+head_offset_y - vsp, "Instances", e_afterimage);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A3E6632
			/// @DnDInput : 5
			/// @DnDParent : 0BD42BDB
			/// @DnDArgument : "expr" "facing"
			/// @DnDArgument : "expr_1" "image_yscale"
			/// @DnDArgument : "expr_2" "s_player_hair"
			/// @DnDArgument : "expr_3" "dir_index"
			/// @DnDArgument : "expr_4" "image_angle"
			/// @DnDArgument : "var" "hafim.image_xscale"
			/// @DnDArgument : "var_1" "hafim.image_yscale"
			/// @DnDArgument : "var_2" "hafim.sprite_index"
			/// @DnDArgument : "var_3" "hafim.image_index"
			/// @DnDArgument : "var_4" "hafim.image_angle"
			hafim.image_xscale = facing;
			hafim.image_yscale = image_yscale;
			hafim.sprite_index = s_player_hair;
			hafim.image_index = dir_index;
			hafim.image_angle = image_angle;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4CFA1662
			/// @DnDParent : 0BD42BDB
			/// @DnDArgument : "xpos" "head_offset_x"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-39+head_offset_y"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "hafim"
			/// @DnDArgument : "objectid" "e_afterimage"
			/// @DnDSaveInfo : "objectid" "e_afterimage"
			hafim = instance_create_layer(x + head_offset_x, y + -39+head_offset_y, "Instances", e_afterimage);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1051740C
			/// @DnDInput : 5
			/// @DnDParent : 0BD42BDB
			/// @DnDArgument : "expr" "facing"
			/// @DnDArgument : "expr_1" "image_yscale"
			/// @DnDArgument : "expr_2" "s_player_head"
			/// @DnDArgument : "expr_3" "dir_index"
			/// @DnDArgument : "expr_4" "image_angle"
			/// @DnDArgument : "var" "hafim.image_xscale"
			/// @DnDArgument : "var_1" "hafim.image_yscale"
			/// @DnDArgument : "var_2" "hafim.sprite_index"
			/// @DnDArgument : "var_3" "hafim.image_index"
			/// @DnDArgument : "var_4" "hafim.image_angle"
			hafim.image_xscale = facing;
			hafim.image_yscale = image_yscale;
			hafim.sprite_index = s_player_head;
			hafim.image_index = dir_index;
			hafim.image_angle = image_angle;	break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 6D4B41E5
		/// @DnDParent : 6CD3A9ED
		default:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 60E373DB
			/// @DnDParent : 6D4B41E5
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "afim"
			/// @DnDArgument : "objectid" "e_afterimage"
			/// @DnDSaveInfo : "objectid" "e_afterimage"
			afim = instance_create_layer(x + 0, y + 0, "Instances", e_afterimage);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67558A29
			/// @DnDInput : 5
			/// @DnDParent : 6D4B41E5
			/// @DnDArgument : "expr" "image_xscale"
			/// @DnDArgument : "expr_1" "image_yscale"
			/// @DnDArgument : "expr_2" "sprite_index"
			/// @DnDArgument : "expr_3" "image_index"
			/// @DnDArgument : "expr_4" "image_angle"
			/// @DnDArgument : "var" "afim.image_xscale"
			/// @DnDArgument : "var_1" "afim.image_yscale"
			/// @DnDArgument : "var_2" "afim.sprite_index"
			/// @DnDArgument : "var_3" "afim.image_index"
			/// @DnDArgument : "var_4" "afim.image_angle"
			afim.image_xscale = image_xscale;
			afim.image_yscale = image_yscale;
			afim.sprite_index = sprite_index;
			afim.image_index = image_index;
			afim.image_angle = image_angle;	break;}}