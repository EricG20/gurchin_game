/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2297323E
/// @DnDDisabled : 1
/// @DnDArgument : "soundid" "sfx_confirm"
/// @DnDSaveInfo : "soundid" "sfx_confirm"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4741758F
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "1.4"
/// @DnDArgument : "var" "flashAlpha"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 08A25B38
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "words"
/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 32B6CF9A
/// @DnDDisabled : 1
/// @DnDParent : 08A25B38
/// @DnDArgument : "const" ""PLAY""
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F158A79
/// @DnDDisabled : 1
/// @DnDParent : 32B6CF9A
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "increment"


/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 5A338DD3
/// @DnDDisabled : 1
/// @DnDParent : 32B6CF9A
/// @DnDArgument : "sound" "menu"
/// @DnDArgument : "volume" "0"
/// @DnDArgument : "time" "3000"
/// @DnDSaveInfo : "sound" "menu"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 2DB445DC
/// @DnDDisabled : 1
/// @DnDParent : 08A25B38
/// @DnDArgument : "const" ""START""
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26238128
/// @DnDDisabled : 1
/// @DnDParent : 2DB445DC
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "increment"


/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 0A99D3F2
/// @DnDDisabled : 1
/// @DnDParent : 2DB445DC
/// @DnDArgument : "sound" "menu"
/// @DnDArgument : "volume" "0"
/// @DnDArgument : "time" "3000"
/// @DnDSaveInfo : "sound" "menu"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 4B49FFE5
/// @DnDDisabled : 1
/// @DnDParent : 08A25B38
/// @DnDArgument : "const" ""SETTINGS""
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B0EA715
/// @DnDDisabled : 1
/// @DnDParent : 4B49FFE5
/// @DnDArgument : "expr" "-1260"
/// @DnDArgument : "var" "global.targ_x"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 1823131A
/// @DnDDisabled : 1
/// @DnDParent : 08A25B38
/// @DnDArgument : "const" ""BACK""
/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 02C757E2
/// @DnDDisabled : 1
/// @DnDParent : 1823131A
/// @DnDArgument : "expr" "o_game.state"
/// @DnDAction : YoYo Games.Switch.Default
/// @DnDVersion : 1
/// @DnDHash : 4ABA7112
/// @DnDDisabled : 1
/// @DnDParent : 02C757E2
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31AAB79E
/// @DnDDisabled : 1
/// @DnDParent : 4ABA7112
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "increment"


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 36239174
/// @DnDDisabled : 1
/// @DnDParent : 4ABA7112
/// @DnDArgument : "script" "scr_fadeout_song"
/// @DnDArgument : "arg" "2000"
/// @DnDSaveInfo : "script" "scr_fadeout_song"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 2DAC6BF1
/// @DnDDisabled : 1
/// @DnDParent : 02C757E2
/// @DnDArgument : "const" "gm.SELECT"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A8CE487
/// @DnDDisabled : 1
/// @DnDParent : 2DAC6BF1
/// @DnDArgument : "expr" "576"
/// @DnDArgument : "var" "global.targ_x"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 6C11E009
/// @DnDDisabled : 1
/// @DnDParent : 08A25B38
/// @DnDArgument : "const" ""QUIT""
/// @DnDAction : YoYo Games.Game.End_Game
/// @DnDVersion : 1
/// @DnDHash : 4567E630
/// @DnDDisabled : 1
/// @DnDParent : 6C11E009

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 0202F69F
/// @DnDDisabled : 1
/// @DnDParent : 08A25B38
/// @DnDArgument : "const" ""TUTORIAL""
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18004433
/// @DnDDisabled : 1
/// @DnDParent : 0202F69F
/// @DnDArgument : "expr" "2260"
/// @DnDArgument : "var" "global.targ_x"


/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 3E8C1E8B
/// @DnDDisabled : 1
/// @DnDApplyTo : {o_game}
/// @DnDParent : 0202F69F
/// @DnDArgument : "xpos" "960"
/// @DnDArgument : "ypos" "540"
/// @DnDArgument : "var" "teto"
/// @DnDArgument : "sequenceid" "tutorial"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "sequenceid" "tutorial"


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4FFFB591
/// @DnDDisabled : 1
/// @DnDParent : 0202F69F
/// @DnDArgument : "script" "scr_fadeout_song"
/// @DnDArgument : "arg" "10"
/// @DnDSaveInfo : "script" "scr_fadeout_song"