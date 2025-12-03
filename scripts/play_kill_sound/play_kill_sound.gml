/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0831D6EF
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "play_kill_sound"
function play_kill_sound() {	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 5252FFF0
	/// @DnDInput : 5
	/// @DnDParent : 0831D6EF
	/// @DnDArgument : "var" "killsfx"
	/// @DnDArgument : "option" "kill_1"
	/// @DnDArgument : "option_1" "kill_2"
	/// @DnDArgument : "option_2" "kill_3"
	/// @DnDArgument : "option_3" "kill_4"
	/// @DnDArgument : "option_4" "kill_5"
	killsfx = choose(kill_1, kill_2, kill_3, kill_4, kill_5);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0B8E07EC
	/// @DnDParent : 0831D6EF
	/// @DnDArgument : "soundid" "killsfx"
	/// @DnDArgument : "pitch" "random_range(.8,1.2)"
	audio_play_sound(killsfx, 0, 0, 1.0, undefined, random_range(.8,1.2));}