/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3555EAEC
/// @DnDInput : 3
/// @DnDArgument : "expr" ".05*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "animcurve_channel_evaluate(corve,mov)"
/// @DnDArgument : "expr_2" "animcurve_channel_evaluate(corve,mov)"
/// @DnDArgument : "var" "mov"
/// @DnDArgument : "var_1" "image_xscale"
/// @DnDArgument : "var_2" "image_yscale"
mov += .05*global.game_speed;
image_xscale = animcurve_channel_evaluate(corve,mov);
image_yscale = animcurve_channel_evaluate(corve,mov);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 263438DF
/// @DnDArgument : "var" "mov"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(mov >= 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1C25BC9E
	/// @DnDParent : 263438DF
	instance_destroy();}