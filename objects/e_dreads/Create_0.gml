/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11492D6E
/// @DnDArgument : "code" "system = new VISystem(.6, 1.4);$(13_10)$(13_10)var dread1 = new VIRopeTextured(x-15, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 5, 5, s_gurch_dread, 3, -1);$(13_10)var dread2 = new VIRopeTextured(x-7, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);$(13_10)var dread3 = new VIRopeTextured(x, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);$(13_10)var dread4 = new VIRopeTextured(x+7, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);$(13_10)var dread5 = new VIRopeTextured(x+15, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);$(13_10)var dread6 = new VIRopeTextured(x+15, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 5, 5, s_gurch_dread, 3, -1);$(13_10)$(13_10)connector1 = new VIConnector(x-10, y);$(13_10)connector2 = new VIConnector(x-5, y);$(13_10)connector3 = new VIConnector(x, y);$(13_10)connector4 = new VIConnector(x+5, y);$(13_10)connector5 = new VIConnector(x+10, y);$(13_10)connector6 = new VIConnector(x+15, y);$(13_10)system.AddObject(dread1);$(13_10)system.AddObject(dread2);$(13_10)system.AddObject(dread3);$(13_10)system.AddObject(dread4);$(13_10)system.AddObject(dread5);$(13_10)system.AddObject(dread6);$(13_10)//dread1.LockFirstPoint();$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, dread1.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)//connector1.SetParent(VI_PC_TYPE.INSTANCE, self);$(13_10)connector2.AddChild(VI_PC_TYPE.POINT, dread2.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)//connector2.SetParent(VI_PC_TYPE.INSTANCE, self);$(13_10)connector3.AddChild(VI_PC_TYPE.POINT, dread3.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)//connector3.SetParent(VI_PC_TYPE.INSTANCE, self);$(13_10)connector4.AddChild(VI_PC_TYPE.POINT, dread4.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)connector5.AddChild(VI_PC_TYPE.POINT, dread5.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)connector6.AddChild(VI_PC_TYPE.POINT, dread6.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)//connector4.SetParent(VI_PC_TYPE.INSTANCE, self);$(13_10)system.AddObject(connector1);$(13_10)system.AddObject(connector2);$(13_10)system.AddObject(connector3);$(13_10)system.AddObject(connector4);$(13_10)system.AddObject(connector5);$(13_10)system.AddObject(connector6);"
system = new VISystem(.6, 1.4);

var dread1 = new VIRopeTextured(x-15, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 5, 5, s_gurch_dread, 3, -1);
var dread2 = new VIRopeTextured(x-7, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);
var dread3 = new VIRopeTextured(x, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);
var dread4 = new VIRopeTextured(x+7, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);
var dread5 = new VIRopeTextured(x+15, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 6, 5, s_gurch_dread, 3, -1);
var dread6 = new VIRopeTextured(x+15, y, (sprite_get_height(s_gurch_dread) - sprite_get_yoffset(s_gurch_dread)) * 5, 5, s_gurch_dread, 3, -1);

connector1 = new VIConnector(x-10, y);
connector2 = new VIConnector(x-5, y);
connector3 = new VIConnector(x, y);
connector4 = new VIConnector(x+5, y);
connector5 = new VIConnector(x+10, y);
connector6 = new VIConnector(x+15, y);
system.AddObject(dread1);
system.AddObject(dread2);
system.AddObject(dread3);
system.AddObject(dread4);
system.AddObject(dread5);
system.AddObject(dread6);
//dread1.LockFirstPoint();
connector1.AddChild(VI_PC_TYPE.POINT, dread1.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
//connector1.SetParent(VI_PC_TYPE.INSTANCE, self);
connector2.AddChild(VI_PC_TYPE.POINT, dread2.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
//connector2.SetParent(VI_PC_TYPE.INSTANCE, self);
connector3.AddChild(VI_PC_TYPE.POINT, dread3.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
//connector3.SetParent(VI_PC_TYPE.INSTANCE, self);
connector4.AddChild(VI_PC_TYPE.POINT, dread4.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
connector5.AddChild(VI_PC_TYPE.POINT, dread5.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
connector6.AddChild(VI_PC_TYPE.POINT, dread6.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
//connector4.SetParent(VI_PC_TYPE.INSTANCE, self);
system.AddObject(connector1);
system.AddObject(connector2);
system.AddObject(connector3);
system.AddObject(connector4);
system.AddObject(connector5);
system.AddObject(connector6);