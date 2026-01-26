/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4EF30976
/// @DnDArgument : "var" "flubbington"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "15"
if(flubbington > 15){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 639ABC1F
	/// @DnDParent : 4EF30976
	/// @DnDArgument : "expr" "c_lime"
	/// @DnDArgument : "var" "flub_color"
	flub_color = c_lime;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0ADFD18D
/// @DnDArgument : "var" "flubbington"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "30"
if(flubbington > 30){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C60C2C3
	/// @DnDParent : 0ADFD18D
	/// @DnDArgument : "expr" "c_yellow"
	/// @DnDArgument : "var" "flub_color"
	flub_color = c_yellow;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 288482F9
/// @DnDArgument : "var" "flubbington"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "50"
if(flubbington > 50){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 096149A4
	/// @DnDParent : 288482F9
	/// @DnDArgument : "expr" "c_orange"
	/// @DnDArgument : "var" "flub_color"
	flub_color = c_orange;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F748CFC
/// @DnDArgument : "var" "flubbington"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "100"
if(flubbington > 100){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50AFEC78
	/// @DnDParent : 4F748CFC
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "flub_color"
	flub_color = c_red;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F0971D3
/// @DnDArgument : "var" "floor(incr)%14"
if(floor(incr)%14 == 0){	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 210C0965
	/// @DnDParent : 5F0971D3
	/// @DnDArgument : "x" "random_range(bbox_left,bbox_right)"
	/// @DnDArgument : "y" "random_range(bbox_top,bbox_bottom)"
	/// @DnDArgument : "type" "6"
	/// @DnDArgument : "color" "flub_color"
	effect_create_below(6, random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), 0, flub_color & $ffffff);}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 426B4AA4
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y+(sin(incr)-1)*5"
/// @DnDArgument : "xscale" "image_xscale"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "alpha" "clamp((400-incr),0,1) + (sin(incr)+1)"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "flub_color"
draw_sprite_ext(sprite_index, image_index, x, y+(sin(incr)-1)*5, image_xscale, image_yscale, 0, flub_color & $ffffff, clamp((400-incr),0,1) + (sin(incr)+1));