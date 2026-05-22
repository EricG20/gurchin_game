/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4269A4D8
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "var" "scroll_pos"
scroll_pos = -1;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 12F5B826
/// @DnDInput : 2
/// @DnDArgument : "var" "char_list"
/// @DnDArgument : "var_1" "colors"
char_list = ds_list_create();
colors = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 3232B9BD
/// @DnDInput : 3
/// @DnDArgument : "var" "char_list"
/// @DnDArgument : "value" ""Gurchin""
/// @DnDArgument : "value_1" ""Zelinka""
/// @DnDArgument : "value_2" ""J0UL3S""
ds_list_add(char_list, "Gurchin", "Zelinka", "J0UL3S");

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 2C7A4660
/// @DnDArgument : "var" "hair_styles"
hair_styles = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 27FBE2CC
/// @DnDArgument : "var" "hair_styles"
/// @DnDArgument : "value" ""default""
ds_list_add(hair_styles, "default");

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 1DD70A1E
/// @DnDInput : 8
/// @DnDArgument : "var" "colors"
/// @DnDArgument : "value" "$FFFFFFFF"
/// @DnDArgument : "value_1" "$FF6565FF"
/// @DnDArgument : "value_2" "$FF65FFFF"
/// @DnDArgument : "value_3" "$FF7FFF7F"
/// @DnDArgument : "value_4" "$FFFFFF65"
/// @DnDArgument : "value_5" "$FFFF6565"
/// @DnDArgument : "value_6" "$FFFF7FFF"
/// @DnDArgument : "value_7" "$FF4D4D4D"
ds_list_add(colors, $FFFFFFFF, $FF6565FF, $FF65FFFF, $FF7FFF7F, $FFFFFF65, $FFFF6565, $FFFF7FFF, $FF4D4D4D);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 557A9CBF
/// @DnDArgument : "code" "enum select_state{$(13_10)	CHARACTER,$(13_10)	HAIR,$(13_10)	COLOR,$(13_10)	MISSION$(13_10)}"
enum select_state{
	CHARACTER,
	HAIR,
	COLOR,
	MISSION
}