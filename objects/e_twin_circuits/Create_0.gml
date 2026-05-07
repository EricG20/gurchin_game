/// @description Execute Code

system = new VISystem(0.01, 2);


circuit1= new VIRopeTextured(x-20, y, (sprite_get_height(s_joules_circuitribbon) - sprite_get_yoffset(s_joules_circuitribbon)) * 2, 3, s_joules_circuitribbon, 1, -1);
circuit2= new VIRopeTextured(x-20, y, (sprite_get_height(s_joules_circuitribbon) - sprite_get_yoffset(s_joules_circuitribbon)) * 2, 3, s_joules_circuitribbon, 1, -1);
circuitend1= new VIRopeTextured(x-20, y, (sprite_get_height(s_joules_circuitribbonend) - sprite_get_yoffset(s_joules_circuitribbonend)) * 1, 2, s_joules_circuitribbonend, 1, -1);
circuitend2= new VIRopeTextured(x-20, y, (sprite_get_height(s_joules_circuitribbonend) - sprite_get_yoffset(s_joules_circuitribbonend)) * 1, 2, s_joules_circuitribbonend, 1, -1);

circuit1.GetPointByKeyword(VI_POINT_INDEX.FIRST).mass = 2;
circuit2.GetPointByKeyword(VI_POINT_INDEX.FIRST).mass = 2;
//circuit1.LockUpperRow();
//circuit2.LockUpperRow();

connector1 = new VIConnector(x-10, y);
connector2 = new VIConnector(x+20, y);
connector1_1 = new VIConnector(x-10, y);
connector2_1 = new VIConnector(x+20, y);


system.AddObject(circuit1);
system.AddObject(circuit2);
system.AddObject(circuitend1);
system.AddObject(circuitend2);



connector1.AddChild(VI_PC_TYPE.POINT, circuit1.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
connector1_1.SetParent(VI_PC_TYPE.POINT,circuit1.GetPointByKeyword(VI_POINT_INDEX.FIRST));
//connector1_1.AddChild(VI_PC_TYPE.POINT, circuitend1, true);
connector1_1.AddChild(VI_PC_TYPE.POINT, circuitend1.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);


connector2.AddChild(VI_PC_TYPE.POINT, circuit2.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
connector2_1.SetParent(VI_PC_TYPE.POINT,circuit2.GetPointByKeyword(VI_POINT_INDEX.FIRST));
//connector2_1.AddChild(VI_PC_TYPE.POINT, circuitend2, true);
connector2_1.AddChild(VI_PC_TYPE.POINT, circuitend2.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);

system.AddObject(connector1);
system.AddObject(connector2);
system.AddObject(connector1_1);
system.AddObject(connector2_1);
