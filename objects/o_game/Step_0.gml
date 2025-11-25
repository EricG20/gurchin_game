/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75993F27
/// @DnDArgument : "expr" "global.game_time*((delta_time/1000000)/(1/fps))"
/// @DnDArgument : "var" "global.game_speed"
global.game_speed = global.game_time*((delta_time/1000000)/(1/fps));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A9786CF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "ini"
if(room == ini){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 35903B16
	/// @DnDParent : 2A9786CF
	/// @DnDArgument : "script" "scr_load_game"
	/// @DnDSaveInfo : "script" "scr_load_game"
	script_execute(scr_load_game);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 79B996F7
	/// @DnDParent : 2A9786CF
	/// @DnDArgument : "room" "map"
	/// @DnDSaveInfo : "room" "map"
	room_goto(map);}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 511F3266
/// @DnDArgument : "expr" "state"
var l511F3266_0 = state;switch(l511F3266_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 78577250
	/// @DnDParent : 511F3266
	/// @DnDArgument : "const" "gm.LEVEL"
	case gm.LEVEL:	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 600C1947
	/// @DnDParent : 511F3266
	/// @DnDArgument : "const" "gm.SELECT"
	case gm.SELECT:	break;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6539461D
/// @DnDArgument : "expr" "room"
var l6539461D_0 = room;switch(l6539461D_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7F764A22
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "lvl_0"
	case lvl_0:	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5E67AD2D
		/// @DnDParent : 7F764A22
		/// @DnDArgument : "code" "var _cam_x = o_camera.x ;$(13_10)var _cam_y = o_camera.y ;$(13_10)layer_x("buildings2", _cam_x * 0.65);$(13_10)layer_y("buildings2", _cam_y *.99);// Change the background layer name to whatever you use in the room editor$(13_10)layer_x("buildings1", _cam_x * 0.8);$(13_10)layer_y("buildings1", _cam_y * 0.99);$(13_10)layer_x("sky", _cam_x);$(13_10)layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect"
		var _cam_x = o_camera.x ;
		var _cam_y = o_camera.y ;
		layer_x("buildings2", _cam_x * 0.65);
		layer_y("buildings2", _cam_y *.99);// Change the background layer name to whatever you use in the room editor
		layer_x("buildings1", _cam_x * 0.8);
		layer_y("buildings1", _cam_y * 0.99);
		layer_x("sky", _cam_x);
		layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 38C6EAE4
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "lvl_01"
	case lvl_01:	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 25C24A51
		/// @DnDParent : 38C6EAE4
		/// @DnDArgument : "code" "var _cam_x = o_camera.x ;$(13_10)var _cam_y = o_camera.y ;$(13_10)layer_x("buildings2", _cam_x * 0.65);$(13_10)layer_y("buildings2", _cam_y *.99 -250);// Change the background layer name to whatever you use in the room editor$(13_10)layer_x("buildings1", _cam_x * 0.8);$(13_10)layer_y("buildings1", _cam_y * 0.99 - 280);$(13_10)layer_x("sky", _cam_x);$(13_10)layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect$(13_10)layer_x("clouds1", _cam_x);$(13_10)//layer_y("clouds1", _cam_y);$(13_10)layer_x("clouds2", _cam_x);$(13_10)//layer_y("clouds2", _cam_y)$(13_10)layer_x("clouds3", _cam_x);$(13_10)//layer_y("clouds3", _cam_y)"
		var _cam_x = o_camera.x ;
		var _cam_y = o_camera.y ;
		layer_x("buildings2", _cam_x * 0.65);
		layer_y("buildings2", _cam_y *.99 -250);// Change the background layer name to whatever you use in the room editor
		layer_x("buildings1", _cam_x * 0.8);
		layer_y("buildings1", _cam_y * 0.99 - 280);
		layer_x("sky", _cam_x);
		layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect
		layer_x("clouds1", _cam_x);
		//layer_y("clouds1", _cam_y);
		layer_x("clouds2", _cam_x);
		//layer_y("clouds2", _cam_y)
		layer_x("clouds3", _cam_x);
		//layer_y("clouds3", _cam_y)	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2051C63F
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "ship_room"
	case ship_room:	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 403B5F5A
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "code" "var _cam_x = o_camera.x ;$(13_10)var _cam_y = o_camera.y ;$(13_10)layer_x("Backgrounds_1", _cam_x * .99 + current_time*.01);$(13_10)layer_y("Backgrounds_1", _cam_y *.99);$(13_10)layer_x("Backgrounds_2", _cam_x * .90 + current_time*.04);$(13_10)layer_y("Backgrounds_2", _cam_y *.90);$(13_10)layer_x("Backgrounds_3", _cam_x * .85 + current_time*.09);$(13_10)layer_y("Backgrounds_3", _cam_y *.85);$(13_10)layer_x("Backgrounds_4", _cam_x * .80 + current_time*.1);$(13_10)layer_y("Backgrounds_4", _cam_y *.80);$(13_10)layer_x("Backgrounds_5", _cam_x * .75 + current_time*.15);$(13_10)layer_y("Backgrounds_5", _cam_y *.75);$(13_10)layer_x("Backgrounds_6", _cam_x * .70 + current_time*.2);$(13_10)layer_y("Backgrounds_6", _cam_y *.70);$(13_10)layer_x("Backgrounds_7", _cam_x * .65 + current_time*.3);$(13_10)layer_y("Backgrounds_7", _cam_y *.65);"
		var _cam_x = o_camera.x ;
		var _cam_y = o_camera.y ;
		layer_x("Backgrounds_1", _cam_x * .99 + current_time*.01);
		layer_y("Backgrounds_1", _cam_y *.99);
		layer_x("Backgrounds_2", _cam_x * .90 + current_time*.04);
		layer_y("Backgrounds_2", _cam_y *.90);
		layer_x("Backgrounds_3", _cam_x * .85 + current_time*.09);
		layer_y("Backgrounds_3", _cam_y *.85);
		layer_x("Backgrounds_4", _cam_x * .80 + current_time*.1);
		layer_y("Backgrounds_4", _cam_y *.80);
		layer_x("Backgrounds_5", _cam_x * .75 + current_time*.15);
		layer_y("Backgrounds_5", _cam_y *.75);
		layer_x("Backgrounds_6", _cam_x * .70 + current_time*.2);
		layer_y("Backgrounds_6", _cam_y *.70);
		layer_x("Backgrounds_7", _cam_x * .65 + current_time*.3);
		layer_y("Backgrounds_7", _cam_y *.65);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5890DE25
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "boss_0"
	case boss_0:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34931790
		/// @DnDParent : 5890DE25
		/// @DnDArgument : "expr" "o_B_gunclaw"
		/// @DnDArgument : "var" "le_boss"
		le_boss = o_B_gunclaw;	break;}