/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 686AF8DF
image_speed = 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 50E61E01
/// @DnDArgument : "expr" "tick"
if(tick){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41EBA538
	/// @DnDParent : 50E61E01
	/// @DnDArgument : "var" "angee"
	/// @DnDArgument : "value" "point_direction(x,y,xprevious,yprevious) -90"
	var angee = point_direction(x,y,xprevious,yprevious) -90;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 24437D21
	/// @DnDParent : 50E61E01
	/// @DnDArgument : "init" "i = 9"
	/// @DnDArgument : "cond" "i < 12"
	for(i = 9; i < 12; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6376D58C
		/// @DnDParent : 24437D21
		/// @DnDArgument : "xpos" "(facing*12)-(boostxdir*i)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-48-(boostydir*i*2)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "erm"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_boosttrail"
		/// @DnDArgument : "layer" ""Instances_Back""
		/// @DnDSaveInfo : "objectid" "e_boosttrail"
		var erm = instance_create_layer(x + (facing*12)-(boostxdir*i), y + -48-(boostydir*i*2), "Instances_Back", e_boosttrail);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 4FF7A9A8
		/// @DnDApplyTo : erm
		/// @DnDParent : 24437D21
		/// @DnDArgument : "value" "angee"
		/// @DnDArgument : "instvar" "12"
		with(erm) {
		image_angle = angee;
		}}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 28142033
/// @DnDArgument : "expr" "tick"
/// @DnDArgument : "not" "1"
if(!(tick)){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C287A01
	/// @DnDParent : 28142033
	/// @DnDArgument : "var" "angee"
	/// @DnDArgument : "value" "-20*facing"
	var angee = -20*facing;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0A25DC27
/// @DnDArgument : "x" "facing*head_offset_x+x-hsp"
/// @DnDArgument : "y" "-39+head_offset_y+y-vsp+hair_offset_y"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "alpha" "sin(iframes/2)+1"
/// @DnDArgument : "sprite" "s_player_hair"
/// @DnDSaveInfo : "sprite" "s_player_hair"
draw_sprite_ext(s_player_hair, 0, facing*head_offset_x+x-hsp, -39+head_offset_y+y-vsp+hair_offset_y, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5C89838D
/// @DnDDisabled : 1
/// @DnDArgument : "x" "facing*12"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-48"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "rot" "angee"
/// @DnDArgument : "sprite" "s_boosters"
/// @DnDArgument : "col" "$FF7F7F7F"
/// @DnDSaveInfo : "sprite" "s_boosters"


/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 1CA89CBE
/// @DnDArgument : "var" "mygurn"
/// @DnDArgument : "not" "1"
if(mygurn != undefined){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 230CE78D
	/// @DnDParent : 1CA89CBE
	/// @DnDArgument : "obj" "mygurn"
	var l230CE78D_0 = false;l230CE78D_0 = instance_exists(mygurn);if(l230CE78D_0){	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 618CE620
		/// @DnDParent : 230CE78D
		/// @DnDArgument : "expr" "mygurn.object_index"
		var l618CE620_0 = mygurn.object_index;switch(l618CE620_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 27D0B830
			/// @DnDParent : 618CE620
			/// @DnDArgument : "const" "o_gun"
			case o_gun:	/// @DnDAction : YoYo Games.Switch.Switch
				/// @DnDVersion : 1
				/// @DnDHash : 38A61E38
				/// @DnDParent : 27D0B830
				/// @DnDArgument : "expr" "mygurn.anim"
				var l38A61E38_0 = mygurn.anim;switch(l38A61E38_0){	/// @DnDAction : YoYo Games.Switch.Case
					/// @DnDVersion : 1
					/// @DnDHash : 49622408
					/// @DnDParent : 38A61E38
					/// @DnDArgument : "const" "stance.SHOT"
					case stance.SHOT:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
						/// @DnDVersion : 1
						/// @DnDHash : 792F2AB4
						/// @DnDParent : 49622408
						/// @DnDArgument : "x" "o_player.facing*mygurn.kickbackx+mygurn.shakex+mygurn.x"
						/// @DnDArgument : "y" "mygurn.shakey+mygurn.kickbacky+mygurn.y"
						/// @DnDArgument : "yscale" "facing"
						/// @DnDArgument : "rot" "mygurn.androtate*facing+mygurn.image_angle"
						/// @DnDArgument : "sprite" "s_player_piztol_armanim_back"
						/// @DnDArgument : "frame" "mygurn.image_index"
						/// @DnDSaveInfo : "sprite" "s_player_piztol_armanim_back"
						draw_sprite_ext(s_player_piztol_armanim_back, mygurn.image_index, o_player.facing*mygurn.kickbackx+mygurn.shakex+mygurn.x, mygurn.shakey+mygurn.kickbacky+mygurn.y, 1, facing, mygurn.androtate*facing+mygurn.image_angle, $FFFFFF & $ffffff, 1);	break;
				
					/// @DnDAction : YoYo Games.Switch.Case
					/// @DnDVersion : 1
					/// @DnDHash : 0A599074
					/// @DnDParent : 38A61E38
					/// @DnDArgument : "const" "stance.GUARDING"
					case stance.GUARDING:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
						/// @DnDVersion : 1
						/// @DnDHash : 6118A5B9
						/// @DnDParent : 0A599074
						/// @DnDArgument : "x" "o_player.facing*mygurn.kickbackx+mygurn.shakex+mygurn.x"
						/// @DnDArgument : "y" "mygurn.shakey+mygurn.kickbacky+mygurn.y"
						/// @DnDArgument : "yscale" "facing"
						/// @DnDArgument : "rot" "mygurn.androtate*facing+mygurn.image_angle"
						/// @DnDArgument : "sprite" "s_player_piztol_armanim_back"
						/// @DnDSaveInfo : "sprite" "s_player_piztol_armanim_back"
						draw_sprite_ext(s_player_piztol_armanim_back, 0, o_player.facing*mygurn.kickbackx+mygurn.shakex+mygurn.x, mygurn.shakey+mygurn.kickbacky+mygurn.y, 1, facing, mygurn.androtate*facing+mygurn.image_angle, $FFFFFF & $ffffff, 1);	break;}	break;}}}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 647AD4A3
/// @DnDArgument : "expr" "state"
var l647AD4A3_0 = state;switch(l647AD4A3_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1AC9DB34
	/// @DnDParent : 647AD4A3
	/// @DnDArgument : "const" "ps.IDLE"
	case ps.IDLE:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6683B1D0
		/// @DnDParent : 1AC9DB34
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "alpha" "sin(iframes/2)+1"
		/// @DnDArgument : "sprite" "s_player"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_player"
		draw_sprite_ext(s_player, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 75D9C4D5
		/// @DnDParent : 1AC9DB34
		/// @DnDArgument : "value" "s_player"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 328DBDA2
		/// @DnDParent : 1AC9DB34
		/// @DnDArgument : "var" "mygurn.object_index"
		/// @DnDArgument : "value" "o_gon"
		if(mygurn.object_index == o_gon){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 5493FBD0
			/// @DnDParent : 328DBDA2
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "facing"
			/// @DnDArgument : "sprite" "s_player_walk_hand"
			/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
			draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 25740D4A
	/// @DnDParent : 647AD4A3
	/// @DnDArgument : "const" "ps.WALK"
	case ps.WALK:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 088B06AE
		/// @DnDParent : 25740D4A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "alpha" "sin(iframes/2)+1"
		/// @DnDArgument : "sprite" "s_player_walk"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_player_walk"
		draw_sprite_ext(s_player_walk, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1B39D531
		/// @DnDParent : 25740D4A
		/// @DnDArgument : "speed" "hsp/5*facing"
		image_speed = hsp/5*facing;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 76913FBB
		/// @DnDParent : 25740D4A
		/// @DnDArgument : "value" "s_player_walk"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_walk;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50251CF3
		/// @DnDParent : 25740D4A
		/// @DnDArgument : "var" "mygurn.object_index"
		/// @DnDArgument : "value" "o_gon"
		if(mygurn.object_index == o_gon){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 3F59BE81
			/// @DnDParent : 50251CF3
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "facing"
			/// @DnDArgument : "sprite" "s_player_walk_hand"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
			draw_sprite_ext(s_player_walk_hand, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 549D597E
	/// @DnDParent : 647AD4A3
	/// @DnDArgument : "const" "ps.WIN"
	case ps.WIN:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 78643A0D
		/// @DnDParent : 549D597E
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "s_player_win"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_player_win"
		draw_sprite_ext(s_player_win, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 29145B2C
		/// @DnDParent : 549D597E
		/// @DnDArgument : "value" "s_player_win"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_win;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2CD2CF5A
	/// @DnDParent : 647AD4A3
	/// @DnDArgument : "const" "ps.DIE"
	case ps.DIE:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7FAC9D47
		/// @DnDParent : 2CD2CF5A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "s_player_dead"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_player_dead"
		draw_sprite_ext(s_player_dead, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3D5B2FB3
		/// @DnDParent : 2CD2CF5A
		/// @DnDArgument : "value" "s_player_dead"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_dead;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 63D23000
	/// @DnDParent : 647AD4A3
	/// @DnDArgument : "const" "ps.AIR"
	case ps.AIR:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5571985E
		/// @DnDParent : 63D23000
		/// @DnDArgument : "value" "s_player_air"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_air;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45D822BE
		/// @DnDInput : 2
		/// @DnDParent : 63D23000
		/// @DnDArgument : "expr_1" "-5"
		/// @DnDArgument : "var" "head_offset_x"
		/// @DnDArgument : "var_1" "head_offset_y"
		head_offset_x = 0;
		head_offset_y = -5;
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4EA42098
		/// @DnDParent : 63D23000
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "alpha" "sin(iframes/2)+1"
		/// @DnDArgument : "sprite" "s_player_walk"
		/// @DnDArgument : "frame" "2"
		/// @DnDSaveInfo : "sprite" "s_player_walk"
		draw_sprite_ext(s_player_walk, 2, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C541135
		/// @DnDParent : 63D23000
		/// @DnDArgument : "var" "mygurn.object_index"
		/// @DnDArgument : "value" "o_gon"
		if(mygurn.object_index == o_gon){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 3E5B1704
			/// @DnDParent : 0C541135
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "facing"
			/// @DnDArgument : "sprite" "s_player_walk_hand"
			/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
			draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 33D77092
	/// @DnDParent : 647AD4A3
	/// @DnDArgument : "const" "ps.HIT"
	case ps.HIT:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 127113C8
		/// @DnDParent : 33D77092
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 6BAE620C
		/// @DnDParent : 33D77092
		/// @DnDArgument : "value" "s_player_knockback"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_knockback;	break;}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 00C4C47E
/// @DnDArgument : "var" "ulooking"
/// @DnDArgument : "value" "point_direction(x,y-46,mouse_x,mouse_y)"
var ulooking = point_direction(x,y-46,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E6F1602
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 232E8CB3
	/// @DnDParent : 7E6F1602
	/// @DnDArgument : "var" "dir_index"
	dir_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5B9A00A6
	/// @DnDParent : 7E6F1602
	/// @DnDArgument : "expr" "ulooking >= 185 && ulooking <= 345"
	if(ulooking >= 185 && ulooking <= 345){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 642843AC
		/// @DnDParent : 5B9A00A6
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "dir_index"
		dir_index = 2;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3BF5EFA5
	/// @DnDParent : 7E6F1602
	/// @DnDArgument : "expr" "ulooking >=25 && ulooking <= 150"
	if(ulooking >=25 && ulooking <= 150){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78C2BAF8
		/// @DnDParent : 3BF5EFA5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "dir_index"
		dir_index = 1;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 32A51D4A
	/// @DnDParent : 7E6F1602
	/// @DnDArgument : "expr" "ulooking >= 25 && ulooking <= 150"
	/// @DnDArgument : "not" "1"
	if(!(ulooking >= 25 && ulooking <= 150)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 09EB415C
		/// @DnDParent : 32A51D4A
		/// @DnDArgument : "expr" "ulooking >=185 && ulooking <= 345"
		/// @DnDArgument : "not" "1"
		if(!(ulooking >=185 && ulooking <= 345)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60BDE435
			/// @DnDParent : 09EB415C
			/// @DnDArgument : "var" "dir_index"
			dir_index = 0;}}}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5C2F10E8
/// @DnDArgument : "x" "facing*head_offset_x"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-39+head_offset_y"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "alpha" "sin(iframes/2)+1"
/// @DnDArgument : "sprite" "s_player_head"
/// @DnDArgument : "frame" "dir_index"
/// @DnDSaveInfo : "sprite" "s_player_head"
draw_sprite_ext(s_player_head, dir_index, x + facing*head_offset_x, y + -39+head_offset_y, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2AD05E73
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-90"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""aim: ""
/// @DnDArgument : "var" "ulooking"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 57056625
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""vsp: ""
/// @DnDArgument : "var" "vsp"


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0BCF51F2
/// @DnDArgument : "expr" "tick"
if(tick){	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 332D7B07
	/// @DnDParent : 0BCF51F2
	/// @DnDArgument : "init" "i = 9"
	/// @DnDArgument : "cond" "i < 12"
	for(i = 9; i < 12; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 42EA298E
		/// @DnDParent : 332D7B07
		/// @DnDArgument : "xpos" "(facing*-14)-(boostxdir*i)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-48-(boostydir*i*2)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "erm"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_boosttrail"
		/// @DnDArgument : "layer" ""Instances_Back""
		/// @DnDSaveInfo : "objectid" "e_boosttrail"
		var erm = instance_create_layer(x + (facing*-14)-(boostxdir*i), y + -48-(boostydir*i*2), "Instances_Back", e_boosttrail);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 74F7A435
		/// @DnDApplyTo : erm
		/// @DnDParent : 332D7B07
		/// @DnDArgument : "value" "angee"
		/// @DnDArgument : "instvar" "12"
		with(erm) {
		image_angle = angee;
		}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1680040B
/// @DnDArgument : "var" "global.game_speed"
if(global.game_speed == 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2FF4585C
	/// @DnDParent : 1680040B
	/// @DnDArgument : "speed" "0"
	image_speed = 0;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 623A71EC
/// @DnDDisabled : 1
/// @DnDArgument : "x" "facing*-14"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-48"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "rot" "angee"
/// @DnDArgument : "sprite" "s_boosters"
/// @DnDSaveInfo : "sprite" "s_boosters"