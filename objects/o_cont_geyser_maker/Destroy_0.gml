/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6FFCA44D
/// @DnDDisabled : 1
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "tozer"
/// @DnDArgument : "objectid" "o_geyser"
/// @DnDSaveInfo : "objectid" "o_geyser"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 089AA39E
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "facing*7"
/// @DnDArgument : "var" "tozer.dir_speed"


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5D7DE087
/// @DnDDisabled : 1
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDSaveInfo : "script" "scr_makeexplosion"


/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 730FF141
/// @DnDDisabled : 1
/// @DnDArgument : "soundid" "sfx_whoosh"
/// @DnDSaveInfo : "soundid" "sfx_whoosh"
/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 76B981CB
/// @DnDDisabled : 1
/// @DnDParent : 730FF141
/// @DnDArgument : "soundid" "jit"

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0EA88692
/// @DnDDisabled : 1
/// @DnDArgument : "soundid" "sfx_explosion"
/// @DnDSaveInfo : "soundid" "sfx_explosion"