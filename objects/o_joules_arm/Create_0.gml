/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B2D1669
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Create particle system once$(13_10)ps = part_system_create();$(13_10)part_system_depth(ps, depth-100);$(13_10)$(13_10)// Create particle type once$(13_10)pt = part_type_create();$(13_10)part_type_sprite(pt, joules_particle, false, false, false);$(13_10)$(13_10)// Shrink rapidly$(13_10)part_type_size(pt, 0, 5, -global.game_speed, 0);$(13_10)$(13_10)// Direction will be set dynamically when firing$(13_10)part_type_direction(pt, 0, 0, 0, 0);$(13_10)$(13_10)// Speed + life$(13_10)part_type_speed(pt, 6, 10, 0, 0);$(13_10)part_type_life(pt, 10, 15);$(13_10)$(13_10)// Optional fade$(13_10)part_type_alpha2(pt, 1, 0);$(13_10)"
/// @description Execute Code
// Create particle system once
ps = part_system_create();
part_system_depth(ps, depth-100);

// Create particle type once
pt = part_type_create();
part_type_sprite(pt, joules_particle, false, false, false);

// Shrink rapidly
part_type_size(pt, 0, 5, -global.game_speed, 0);

// Direction will be set dynamically when firing
part_type_direction(pt, 0, 0, 0, 0);

// Speed + life
part_type_speed(pt, 6, 10, 0, 0);
part_type_life(pt, 10, 15);

// Optional fade
part_type_alpha2(pt, 1, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2620294F
/// @DnDArgument : "code" "system = new VISystem(0.01, .1);$(13_10)$(13_10)cable= new VIRopeTextured(x, y, (sprite_get_height(s_joules_cable) - sprite_get_yoffset(s_joules_cable)) * 18, 9, s_joules_cable, 1, -1);$(13_10)$(13_10)connector1 = new VIConnector(x-10, y);$(13_10)connector2 = new VIConnector(x+20, y);$(13_10)$(13_10)$(13_10)system.AddObject(cable);$(13_10)$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, cable.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)connector2.AddChild(VI_PC_TYPE.POINT, cable.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)$(13_10)$(13_10)system.AddObject(connector1);$(13_10)system.AddObject(connector2);"
system = new VISystem(0.01, .1);

cable= new VIRopeTextured(x, y, (sprite_get_height(s_joules_cable) - sprite_get_yoffset(s_joules_cable)) * 18, 9, s_joules_cable, 1, -1);

connector1 = new VIConnector(x-10, y);
connector2 = new VIConnector(x+20, y);


system.AddObject(cable);

connector1.AddChild(VI_PC_TYPE.POINT, cable.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
connector2.AddChild(VI_PC_TYPE.POINT, cable.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);


system.AddObject(connector1);
system.AddObject(connector2);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 45E60109
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_flash"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_flash"
instance_create_layer(x + 0, y + 0, "Effects", e_flash);

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 62A0CF19
/// @DnDArgument : "var" "collided_with"
collided_with = ds_list_create();