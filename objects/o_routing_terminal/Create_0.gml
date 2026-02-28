/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 1388BFCE
/// @DnDArgument : "var" "missions"
missions = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 2F991249
/// @DnDArgument : "var" "mission_details"
mission_details = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 06EA90A4
/// @DnDInput : 4
/// @DnDArgument : "var" "missions"
/// @DnDArgument : "value" ""classic""
/// @DnDArgument : "value_1" ""classic""
/// @DnDArgument : "value_2" ""classic""
/// @DnDArgument : "value_3" ""classic""
ds_list_add(missions, "classic", "classic", "classic", "classic");

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 1A70C088
/// @DnDComment : classic mode details
/// @DnDInput : 4
/// @DnDArgument : "var" "mission_details"
/// @DnDArgument : "key" ""classic_thumbnail""
/// @DnDArgument : "value" "s_mini_player"
/// @DnDArgument : "key_1" ""classic_title""
/// @DnDArgument : "value_1" ""Grivna-Prime Assault!""
/// @DnDArgument : "key_2" ""classic_desc""
/// @DnDArgument : "value_2" ""Vurmin are attacking the ship housing our Glorbulous Empress, and are heading straight for the Core Pylon!""
/// @DnDArgument : "key_3" ""classic_room""
/// @DnDArgument : "value_3" "ship_room"
ds_map_replace(mission_details, "classic_thumbnail", s_mini_player);
ds_map_replace(mission_details, "classic_title", "Grivna-Prime Assault!");
ds_map_replace(mission_details, "classic_desc", "Vurmin are attacking the ship housing our Glorbulous Empress, and are heading straight for the Core Pylon!");
ds_map_replace(mission_details, "classic_room", ship_room);