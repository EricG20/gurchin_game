/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 2A43B91A
/// @DnDArgument : "var" "collided_with"
collided_with = ds_list_create();

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 5B13CEDA
/// @DnDInput : 2
/// @DnDArgument : "value" "1+weilder.curr_weapon_level*.3"
/// @DnDArgument : "value_1" "1+weilder.curr_weapon_level*.3"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
image_xscale = 1+weilder.curr_weapon_level*.3;
image_yscale = 1+weilder.curr_weapon_level*.3;