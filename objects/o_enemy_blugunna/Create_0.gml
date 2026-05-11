/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 557CE697
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)system = new VISystem(1, .1);$(13_10)$(13_10)var dread1 = new VIRopeTextured(x-15, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);$(13_10)var dread2 = new VIRopeTextured(x-7, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);$(13_10)var dread3 = new VIRopeTextured(x, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);$(13_10)var dread4 = new VIRopeTextured(x+7, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);$(13_10)var dread5 = new VIRopeTextured(x+15, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);$(13_10)var dread6 = new VIRopeTextured(x+15, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);$(13_10)$(13_10)connector1 = new VIConnector(x-10, y);$(13_10)$(13_10)system.AddObject(dread1);$(13_10)system.AddObject(dread2);$(13_10)system.AddObject(dread3);$(13_10)system.AddObject(dread4);$(13_10)system.AddObject(dread5);$(13_10)system.AddObject(dread6);$(13_10)$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread1.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread2.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread3.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread4.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread5.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread6.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)$(13_10)system.AddObject(connector1);$(13_10)"
/// @description Execute Code
system = new VISystem(1, .1);

var dread1 = new VIRopeTextured(x-15, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);
var dread2 = new VIRopeTextured(x-7, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);
var dread3 = new VIRopeTextured(x, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);
var dread4 = new VIRopeTextured(x+7, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);
var dread5 = new VIRopeTextured(x+15, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);
var dread6 = new VIRopeTextured(x+15, y, (sprite_get_height(eyelith_tendril) - sprite_get_yoffset(eyelith_tendril)) * 3, 6, eyelith_tendril, 3, -1);

connector1 = new VIConnector(x-10, y);

system.AddObject(dread1);
system.AddObject(dread2);
system.AddObject(dread3);
system.AddObject(dread4);
system.AddObject(dread5);
system.AddObject(dread6);

connector1.AddChild(VI_PC_TYPE.POINT, dread1.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
connector1.AddChild(VI_PC_TYPE.POINT, dread2.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
connector1.AddChild(VI_PC_TYPE.POINT, dread3.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
connector1.AddChild(VI_PC_TYPE.POINT, dread4.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
connector1.AddChild(VI_PC_TYPE.POINT, dread5.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
connector1.AddChild(VI_PC_TYPE.POINT, dread6.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);

system.AddObject(connector1);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 17FFE117
/// @DnDArgument : "script" "flash_make"
/// @DnDSaveInfo : "script" "flash_make"
script_execute(flash_make);

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 32266696
/// @DnDArgument : "var" "collided_with"
collided_with = ds_list_create();