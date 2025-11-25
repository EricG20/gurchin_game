/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3555EAEC
/// @DnDInput : 4
/// @DnDArgument : "expr" ".008/scale"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "animcurve_channel_evaluate(corve,mov)*scale"
/// @DnDArgument : "expr_2" "animcurve_channel_evaluate(corve,mov)*scale"
/// @DnDArgument : "expr_3" "1.5-mov"
/// @DnDArgument : "var" "mov"
/// @DnDArgument : "var_1" "image_xscale"
/// @DnDArgument : "var_2" "image_yscale"
/// @DnDArgument : "var_3" "image_alpha"
mov += .008/scale;
image_xscale = animcurve_channel_evaluate(corve,mov)*scale;
image_yscale = animcurve_channel_evaluate(corve,mov)*scale;
image_alpha = 1.5-mov;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 15532B6F
/// @DnDArgument : "value" "speed*.7"
/// @DnDArgument : "instvar" "3"
speed = speed*.7;

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 435140C3
/// @DnDArgument : "var" "ower"
/// @DnDArgument : "not" "1"
if(ower != undefined){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 73502B83
	/// @DnDInput : 2
	/// @DnDParent : 435140C3
	/// @DnDArgument : "var" "image_blend"
	/// @DnDArgument : "script" "gradient_get_color"
	/// @DnDArgument : "arg" "ower"
	/// @DnDArgument : "arg_1" "clamp(mov,0,1)"
	/// @DnDSaveInfo : "script" "gradient_get_color"
	image_blend = script_execute(gradient_get_color, ower, clamp(mov,0,1));}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18E6D6F0
/// @DnDArgument : "expr" "zoop"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += zoop;

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