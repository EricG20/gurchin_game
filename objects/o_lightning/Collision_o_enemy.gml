/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4458B9A6
/// @DnDArgument : "var" "target"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(target == noone)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63B96B78
	/// @DnDParent : 4458B9A6
	/// @DnDArgument : "var" "ds_list_find_index(collided_with,other.id)"
	/// @DnDArgument : "value" "-1"
	if(ds_list_find_index(collided_with,other.id) == -1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CABA129
		/// @DnDDisabled : 1
		/// @DnDParent : 63B96B78
		/// @DnDArgument : "var" "other.object_index"
		/// @DnDArgument : "value" "target.object_index"
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 236CB443
		/// @DnDInput : 2
		/// @DnDParent : 2CABA129
		/// @DnDArgument : "function" "ds_list_add"
		/// @DnDArgument : "arg" "collided_with"
		/// @DnDArgument : "arg_1" "other.id"
		ds_list_add(collided_with, other.id);
		
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61545989
		/// @DnDParent : 2CABA129
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "other.hp"
		other.hp += -2;
		
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CBB75C7
		/// @DnDParent : 2CABA129
		/// @DnDArgument : "var" "other.hp"
		/// @DnDArgument : "op" "3"
		if(other.hp <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C7E0634
			/// @DnDParent : 2CBB75C7
			/// @DnDArgument : "expr" "o_cursor"
			/// @DnDArgument : "var" "target"
			target = o_cursor;}
		
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28A7FD19
		/// @DnDParent : 2CABA129
		/// @DnDArgument : "var" "other.hsp"
		other.hsp = 0;
		
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 4F07F0B2
		/// @DnDParent : 2CABA129
		/// @DnDArgument : "soundid" "sfx_melee_land"
		/// @DnDArgument : "pitch" "random_range(0.5,.7)"
		/// @DnDSaveInfo : "soundid" "sfx_melee_land"
		audio_play_sound(sfx_melee_land, 0, 0, 1.0, undefined, random_range(0.5,.7));
		
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20DEC129
		/// @DnDInput : 2
		/// @DnDParent : 2CABA129
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "1.2"
		/// @DnDArgument : "var" "other.hp"
		/// @DnDArgument : "var_1" "other.flashAlpha"
		other.hp += 0;
		other.flashAlpha = 1.2;}}