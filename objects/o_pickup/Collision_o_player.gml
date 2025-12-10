/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06E4892D
/// @DnDArgument : "expr" "weapon_index"
/// @DnDArgument : "var" "other.mygurn.weapon_index"
other.mygurn.weapon_index = weapon_index;

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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DAECACB
/// @DnDArgument : "var" "weapon_index"
/// @DnDArgument : "value" "o_gon"
if(weapon_index == o_gon){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74645A77
	/// @DnDParent : 5DAECACB
	/// @DnDArgument : "var" "other.gon_level"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "5"
	if(!(other.gon_level == 5)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7DE87F4E
		/// @DnDParent : 74645A77
		/// @DnDArgument : "soundid" "sfx_charge"
		/// @DnDSaveInfo : "soundid" "sfx_charge"
		audio_play_sound(sfx_charge, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 01644BC4
		/// @DnDParent : 74645A77
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
		/// @DnDParent : 74645A77
		/// @DnDArgument : "expr" ""Handgun is now level " + string(other.gon_level + 1) + "!""
		/// @DnDArgument : "var" "level_notif.dis_text"
		level_notif.dis_text = "Handgun is now level " + string(other.gon_level + 1) + "!";}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63F39DE5
	/// @DnDParent : 5DAECACB
	/// @DnDArgument : "expr" "clamp(other.gon_level+1,1,5)"
	/// @DnDArgument : "var" "other.gon_level"
	other.gon_level = clamp(other.gon_level+1,1,5);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 686C6CFD
instance_destroy();