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

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 686C6CFD
instance_destroy();