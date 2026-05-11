/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2CAFB8BE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "flash_operate"
function flash_operate() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C34F94D
	/// @DnDParent : 2CAFB8BE
	/// @DnDArgument : "var" "move_it"
	/// @DnDArgument : "value" "0"
	var move_it = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5C9EDAD2
	/// @DnDParent : 2CAFB8BE
	/// @DnDArgument : "expr" "object_is_ancestor(object_index, o_enemy)"
	if(object_is_ancestor(object_index, o_enemy)){	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0506CDA2
		/// @DnDParent : 5C9EDAD2
		/// @DnDArgument : "var" "move_it"
		/// @DnDArgument : "value" "clamp(stun_timer/5,0, 5) *sin(current_time/10)"
		var move_it = clamp(stun_timer/5,0, 5) *sin(current_time/10);}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3AF36C98
	/// @DnDParent : 2CAFB8BE
	/// @DnDArgument : "x" "move_it"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "yscale" "image_yscale"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDArgument : "col" "display_color"
	draw_sprite_ext(sprite_index, image_index, x + move_it, y + 0, facing, image_yscale, 0, display_color & $ffffff, 1);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74373C48
	/// @DnDParent : 2CAFB8BE
	/// @DnDArgument : "var" "flashAlpha"
	/// @DnDArgument : "op" "2"
	if(flashAlpha > 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 0F7E3B42
		/// @DnDParent : 74373C48
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)shader_set(shFlash);"
		/// @description Execute Code
		shader_set(shFlash);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 647C4B43
		/// @DnDParent : 74373C48
		/// @DnDArgument : "x" "move_it"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing*image_xscale"
		/// @DnDArgument : "yscale" "image_yscale"
		/// @DnDArgument : "alpha" "flashAlpha"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDArgument : "col" "flashColor"
		draw_sprite_ext(sprite_index, image_index, x + move_it, y + 0, facing*image_xscale, image_yscale, 0, flashColor & $ffffff, flashAlpha);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 784F550D
		/// @DnDParent : 74373C48
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)shader_reset();"
		/// @description Execute Code
		shader_reset();}}