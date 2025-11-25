/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D13822A
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "ps.DIE"
if(state == ps.DIE)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 06DC8FAF
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "640"
	/// @DnDArgument : "y" "360"
	/// @DnDArgument : "xscale" "3"
	/// @DnDArgument : "yscale" "3"
	/// @DnDArgument : "sprite" "s_ded"
	/// @DnDSaveInfo : "sprite" "s_ded"
	draw_sprite_ext(s_ded, 0, 640, 360, 3, 3, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 086CB9CD
/// @DnDArgument : "x" "99"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "sprite" "s_health"
/// @DnDArgument : "number" "hp"
/// @DnDSaveInfo : "sprite" "s_health"
var l086CB9CD_0 = sprite_get_width(s_health);
var l086CB9CD_1 = 0;
for(var l086CB9CD_2 = hp; l086CB9CD_2 > 0; --l086CB9CD_2) {
	draw_sprite(s_health, 0, 99 + l086CB9CD_1, 70);
	l086CB9CD_1 += l086CB9CD_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 360E5C27
/// @DnDArgument : "x" "70"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "sprite" "s_power_symbol"
/// @DnDSaveInfo : "sprite" "s_power_symbol"
draw_sprite_ext(s_power_symbol, 0, 70, 70, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 36415906
/// @DnDArgument : "x" "85"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "sprite" "s_fuel"
/// @DnDArgument : "number" "v_fuel/5"
/// @DnDSaveInfo : "sprite" "s_fuel"
var l36415906_0 = sprite_get_width(s_fuel);
var l36415906_1 = 0;
for(var l36415906_2 = v_fuel/5; l36415906_2 > 0; --l36415906_2) {
	draw_sprite(s_fuel, 0, 85 + l36415906_1, 120);
	l36415906_1 += l36415906_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 034187CB
/// @DnDArgument : "x" "70"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "sprite" "s_boosters"
/// @DnDSaveInfo : "sprite" "s_boosters"
draw_sprite_ext(s_boosters, 0, 70, 120, 2, 2, 0, $FFFFFF & $ffffff, 1);