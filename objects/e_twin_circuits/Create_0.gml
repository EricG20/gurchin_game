/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4585B7FC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)system = new VISystem(.1, 1.3);$(13_10)$(13_10)$(13_10)circuit1= new VIRopeTextured(x, y, (sprite_get_height(s_joules_circuitribbon) - sprite_get_yoffset(s_joules_circuitribbon)) * 2, 2, s_joules_circuitribbon, 3, -1);$(13_10)circuit2 = new VIRopeTextured(x, y, (sprite_get_height(s_joules_circuitribbon) - sprite_get_yoffset(s_joules_circuitribbon)) * 2, 2, s_joules_circuitribbon, 3, -1);$(13_10)//circuitend1 = new VIBoxTextured(x, y, sprite_get_height(s_joules_circuitribbonend) -sprite_get_yoffset(s_joules_circuitribbonend), s_joules_circuitribbonend, 1);$(13_10)//circuitend2 = new VIBoxTextured(x, y, sprite_get_height(s_joules_circuitribbonend) -sprite_get_yoffset(s_joules_circuitribbonend), s_joules_circuitribbonend, 1);$(13_10)$(13_10)//circuit1.LockUpperRow();$(13_10)//circuit2.LockUpperRow();$(13_10)$(13_10)connector1 = new VIConnector(x-10, y);$(13_10)connector2 = new VIConnector(x-5, y);$(13_10)$(13_10)system.AddObject(circuit1);$(13_10)system.AddObject(circuit2);$(13_10)//system.AddObject(circuitend1);$(13_10)//system.AddObject(circuitend2);$(13_10)$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, circuit1.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)//connector1.AddChild(VI_PC_TYPE.POINT, circuitend1.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)$(13_10)connector1.AddChild(VI_PC_TYPE.POINT, circuit2.GetPointByKeyword(VI_POINT_INDEX.LAST), false);$(13_10)//connector1.AddChild(VI_PC_TYPE.POINT, circuitend2.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);$(13_10)$(13_10)system.AddObject(connector1);$(13_10)system.AddObject(connector2);"
/// @description Execute Code

system = new VISystem(.1, 1.3);


circuit1= new VIRopeTextured(x, y, (sprite_get_height(s_joules_circuitribbon) - sprite_get_yoffset(s_joules_circuitribbon)) * 2, 2, s_joules_circuitribbon, 3, -1);
circuit2 = new VIRopeTextured(x, y, (sprite_get_height(s_joules_circuitribbon) - sprite_get_yoffset(s_joules_circuitribbon)) * 2, 2, s_joules_circuitribbon, 3, -1);
//circuitend1 = new VIBoxTextured(x, y, sprite_get_height(s_joules_circuitribbonend) -sprite_get_yoffset(s_joules_circuitribbonend), s_joules_circuitribbonend, 1);
//circuitend2 = new VIBoxTextured(x, y, sprite_get_height(s_joules_circuitribbonend) -sprite_get_yoffset(s_joules_circuitribbonend), s_joules_circuitribbonend, 1);

//circuit1.LockUpperRow();
//circuit2.LockUpperRow();

connector1 = new VIConnector(x-10, y);
connector2 = new VIConnector(x-5, y);

system.AddObject(circuit1);
system.AddObject(circuit2);
//system.AddObject(circuitend1);
//system.AddObject(circuitend2);

connector1.AddChild(VI_PC_TYPE.POINT, circuit1.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
//connector1.AddChild(VI_PC_TYPE.POINT, circuitend1.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);

connector1.AddChild(VI_PC_TYPE.POINT, circuit2.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
//connector1.AddChild(VI_PC_TYPE.POINT, circuitend2.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);

system.AddObject(connector1);
system.AddObject(connector2);