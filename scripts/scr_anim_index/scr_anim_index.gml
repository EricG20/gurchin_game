/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 59F793F6
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "scr_anim_index"
/// @DnDArgument : "arg" "fpz"
/// @DnDArgument : "arg_1" "framez"
function scr_anim_index(fpz, framez) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7960C701
	/// @DnDParent : 59F793F6
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @function scr_anim_index(fps, total_frames)$(13_10)/// @description Returns interpolated frame index based on real time.$(13_10)/// @param fps            Frames per second you want the animation to run at$(13_10)/// @param total_frames   Total number of frames in the sprite$(13_10)$(13_10)$(13_10)// Convert current_time (ms) to seconds$(13_10)var t = current_time * 0.001;$(13_10)$(13_10)// How many frames have passed at this fps?$(13_10)var frame_pos = t * fpz;$(13_10)$(13_10)// Wrap around total frames$(13_10)return frame_pos mod framez;$(13_10)"
	/// @description Execute Code
	/// @function scr_anim_index(fps, total_frames)
	/// @description Returns interpolated frame index based on real time.
	/// @param fps            Frames per second you want the animation to run at
	/// @param total_frames   Total number of frames in the sprite
	
	
	// Convert current_time (ms) to seconds
	var t = current_time * 0.001;
	
	// How many frames have passed at this fps?
	var frame_pos = t * fpz;
	
	// Wrap around total frames
	return frame_pos mod framez;}