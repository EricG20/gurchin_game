/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43E78B5B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_afterimage"
function scr_afterimage() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 60E373DB
	/// @DnDParent : 43E78B5B
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
	/// @DnDParent : 43E78B5B
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
	afim.image_angle = image_angle;
}