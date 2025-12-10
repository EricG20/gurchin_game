/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D13822A
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DIE"
if(!(state == ps.DIE)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 086CB9CD
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "99"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "sprite" "s_health"
	/// @DnDArgument : "number" "hp*2"
	/// @DnDSaveInfo : "sprite" "s_health"
	var l086CB9CD_0 = sprite_get_width(s_health);var l086CB9CD_1 = 0;for(var l086CB9CD_2 = hp*2; l086CB9CD_2 > 0; --l086CB9CD_2) {	draw_sprite(s_health, 0, 99 + l086CB9CD_1, 70);	l086CB9CD_1 += l086CB9CD_0;}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 360E5C27
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "70"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "s_gurch_icon"
	/// @DnDSaveInfo : "sprite" "s_gurch_icon"
	draw_sprite_ext(s_gurch_icon, 0, 70, 70, 1, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 36415906
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "85"
	/// @DnDArgument : "y" "120"
	/// @DnDArgument : "sprite" "s_fuel"
	/// @DnDArgument : "number" "v_fuel/2"
	/// @DnDSaveInfo : "sprite" "s_fuel"
	var l36415906_0 = sprite_get_width(s_fuel);var l36415906_1 = 0;for(var l36415906_2 = v_fuel/2; l36415906_2 > 0; --l36415906_2) {	draw_sprite(s_fuel, 0, 85 + l36415906_1, 120);	l36415906_1 += l36415906_0;}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 034187CB
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "70"
	/// @DnDArgument : "y" "120"
	/// @DnDArgument : "sprite" "s_boosters"
	/// @DnDSaveInfo : "sprite" "s_boosters"
	draw_sprite_ext(s_boosters, 0, 70, 120, 1, 1, 0, $FFFFFF & $ffffff, 1);}