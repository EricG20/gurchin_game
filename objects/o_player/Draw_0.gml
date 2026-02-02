/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 686AF8DF
image_speed = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22C59357
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DIE"
if(!(state == ps.DIE)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22CD7D84
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "mygurn.object_index"
	/// @DnDArgument : "value" "o_bat"
	if(mygurn.object_index == o_bat){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F333C3D
		/// @DnDParent : 22CD7D84
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "value" "ps.WALK"
		if(state == ps.WALK){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 18124A02
			/// @DnDParent : 4F333C3D
			/// @DnDArgument : "x" "2*facing"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "-facing"
			/// @DnDArgument : "sprite" "s_player_walk_hand"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDArgument : "col" "$FF999999"
			/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
			draw_sprite_ext(s_player_walk_hand, image_index, x + 2*facing, y + 0, -facing, 1, 0, $FF999999 & $ffffff, 1);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 73EB486F
		/// @DnDParent : 22CD7D84
		else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 1D6F4C04
			/// @DnDParent : 73EB486F
			/// @DnDArgument : "x" "2*facing"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "-facing"
			/// @DnDArgument : "sprite" "s_player_walk_hand"
			/// @DnDArgument : "col" "$FF999999"
			/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
			draw_sprite_ext(s_player_walk_hand, 0, x + 2*facing, y + 0, -facing, 1, 0, $FF999999 & $ffffff, 1);}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 50E61E01
	/// @DnDParent : 22C59357
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
	/// @DnDParent : 22C59357
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
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x+x-(hsp*hair_weight)"
	/// @DnDArgument : "y" "hair_height+head_offset_y+y-(vsp*2)-(sign(vsp)*squashstretch*20*hair_weight)-walk_bob_height"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.7/walk_lift_magnitude"
	/// @DnDArgument : "yscale" "1+squashstretch*.7/walk_lift_magnitude"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "hair_sprite"
	draw_sprite_ext(hair_sprite, 0, facing*head_offset_x+x-(hsp*hair_weight), hair_height+head_offset_y+y-(vsp*2)-(sign(vsp)*squashstretch*20*hair_weight)-walk_bob_height, facing-(squashstretch*facing)*.7/walk_lift_magnitude, 1+squashstretch*.7/walk_lift_magnitude, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5C89838D
	/// @DnDDisabled : 1
	/// @DnDParent : 22C59357
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
	/// @DnDParent : 22C59357
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
	/// @DnDParent : 22C59357
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
			/// @DnDArgument : "xscale" "facing-(squashstretch*facing)"
			/// @DnDArgument : "yscale" "1+squashstretch"
			/// @DnDArgument : "alpha" "sin(iframes/2)+1"
			/// @DnDArgument : "sprite" "idle_sprite"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDArgument : "col" "suit_color"
			draw_sprite_ext(idle_sprite, image_index, x + 0, y + 0, facing-(squashstretch*facing), 1+squashstretch, 0, suit_color & $ffffff, sin(iframes/2)+1);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 75D9C4D5
			/// @DnDParent : 1AC9DB34
			/// @DnDArgument : "value" "idle_sprite"
			/// @DnDArgument : "instvar" "10"
			sprite_index = idle_sprite;
		
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
				/// @DnDArgument : "y" "-(sign(vsp)*squashstretch*30)"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "s_player_walk_hand"
				/// @DnDArgument : "col" "$00FFFFFF"
				/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
				draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + -(sign(vsp)*squashstretch*30), facing, 1, 0, $00FFFFFF & $ffffff, 1);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7708DD1C
			/// @DnDParent : 1AC9DB34
			/// @DnDArgument : "var" "mygurn.object_index"
			/// @DnDArgument : "value" "o_goozi"
			if(mygurn.object_index == o_goozi){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 4070E203
				/// @DnDParent : 7708DD1C
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-(sign(vsp)*squashstretch*30)"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "s_player_walk_hand"
				/// @DnDArgument : "col" "$00FFFFFF"
				/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
				draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + -(sign(vsp)*squashstretch*30), facing, 1, 0, $00FFFFFF & $ffffff, 1);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78984CA1
			/// @DnDParent : 1AC9DB34
			/// @DnDArgument : "var" "mygurn.object_index"
			/// @DnDArgument : "value" "o_bubbler"
			if(mygurn.object_index == o_bubbler){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 013B0DAB
				/// @DnDParent : 78984CA1
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-(sign(vsp)*squashstretch*30)"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "s_player_walk_hand"
				/// @DnDArgument : "col" "$00FFFFFF"
				/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
				draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + -(sign(vsp)*squashstretch*30), facing, 1, 0, $00FFFFFF & $ffffff, 1);}	break;
	
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
			/// @DnDArgument : "y" "-walk_bob_height*walk_lift_magnitude"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "facing-(squashstretch*facing)"
			/// @DnDArgument : "yscale" "1+squashstretch"
			/// @DnDArgument : "alpha" "sin(iframes/2)+1"
			/// @DnDArgument : "sprite" "walk_sprite"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDArgument : "col" "suit_color"
			draw_sprite_ext(walk_sprite, image_index, x + 0, y + -walk_bob_height*walk_lift_magnitude, facing-(squashstretch*facing), 1+squashstretch, 0, suit_color & $ffffff, sin(iframes/2)+1);
		
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
			/// @DnDArgument : "value" "walk_sprite"
			/// @DnDArgument : "instvar" "10"
			sprite_index = walk_sprite;
		
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
				draw_sprite_ext(s_player_walk_hand, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42633378
			/// @DnDParent : 25740D4A
			/// @DnDArgument : "var" "mygurn.object_index"
			/// @DnDArgument : "value" "o_goozi"
			if(mygurn.object_index == o_goozi){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 2AFE8185
				/// @DnDParent : 42633378
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "s_player_walk_hand"
				/// @DnDArgument : "frame" "image_index"
				/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
				draw_sprite_ext(s_player_walk_hand, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 71501E40
			/// @DnDParent : 25740D4A
			/// @DnDArgument : "var" "mygurn.object_index"
			/// @DnDArgument : "value" "o_bubbler"
			if(mygurn.object_index == o_bubbler){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 1DD7353A
				/// @DnDParent : 71501E40
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
			/// @DnDArgument : "y" "(-vsp)-walk_bob_height"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.5"
			/// @DnDArgument : "yscale" "1+squashstretch*.5"
			/// @DnDArgument : "alpha" "sin(iframes/2)+1"
			/// @DnDArgument : "sprite" "walk_sprite"
			/// @DnDArgument : "frame" "2"
			/// @DnDArgument : "col" "suit_color"
			draw_sprite_ext(walk_sprite, 2, x + 0, y + (-vsp)-walk_bob_height, facing-(squashstretch*facing)*.5, 1+squashstretch*.5, 0, suit_color & $ffffff, sin(iframes/2)+1);
		
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
				draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E4BEF78
			/// @DnDParent : 63D23000
			/// @DnDArgument : "var" "mygurn.object_index"
			/// @DnDArgument : "value" "o_bubbler"
			if(mygurn.object_index == o_bubbler){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 678B7E48
				/// @DnDParent : 3E4BEF78
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "sprite" "s_player_walk_hand"
				/// @DnDSaveInfo : "sprite" "s_player_walk_hand"
				draw_sprite_ext(s_player_walk_hand, 0, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61F83FED
			/// @DnDParent : 63D23000
			/// @DnDArgument : "var" "mygurn.object_index"
			/// @DnDArgument : "value" "o_goozi"
			if(mygurn.object_index == o_goozi){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 787B42A8
				/// @DnDParent : 61F83FED
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
			/// @DnDArgument : "alpha" "sin(iframes/2)+1"
			/// @DnDArgument : "sprite" "sprite_index"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDArgument : "col" "suit_color"
			draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, suit_color & $ffffff, sin(iframes/2)+1);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6BAE620C
			/// @DnDParent : 33D77092
			/// @DnDArgument : "value" "knockback_sprite"
			/// @DnDArgument : "instvar" "10"
			sprite_index = knockback_sprite;	break;}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00C4C47E
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "ulooking"
	/// @DnDArgument : "value" "point_direction(x,y-46,o_cursor.x,o_cursor.y)"
	var ulooking = point_direction(x,y-46,o_cursor.x,o_cursor.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E6F1602
	/// @DnDParent : 22C59357
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
	/// @DnDHash : 3B9A4D06
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x+(10*facing)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-ear_height-walk_bob_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "-facing-(squashstretch*facing)*.1"
	/// @DnDArgument : "yscale" "1+squashstretch*.1"
	/// @DnDArgument : "rot" "(vsp*facing)*1.4+(sign(vsp+.1)*squashstretch*30)*facing - ear_bobbing*facing"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "ear_sprite"
	/// @DnDArgument : "frame" "dir_index"
	/// @DnDArgument : "col" "$FFE5E5B8"
	draw_sprite_ext(ear_sprite, dir_index, x + facing*head_offset_x+(10*facing), y + head_height+head_offset_y-vsp-(squashstretch*10)-ear_height-walk_bob_height, -facing-(squashstretch*facing)*.1, 1+squashstretch*.1, image_angle + (vsp*facing)*1.4+(sign(vsp+.1)*squashstretch*30)*facing - ear_bobbing*facing, $FFE5E5B8 & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5C2F10E8
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.1"
	/// @DnDArgument : "yscale" "1+squashstretch*.1"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "head_sprite"
	/// @DnDArgument : "frame" "dir_index"
	draw_sprite_ext(head_sprite, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing-(squashstretch*facing)*.1, 1+squashstretch*.1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6426D307
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x-(15*facing)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-ear_height-walk_bob_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.1"
	/// @DnDArgument : "yscale" "1+squashstretch*.1"
	/// @DnDArgument : "rot" "(-vsp*facing)*1.4 -(sign(vsp+.1)*squashstretch*30)*facing + ear_bobbing*facing"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "ear_sprite"
	/// @DnDArgument : "frame" "dir_index"
	draw_sprite_ext(ear_sprite, dir_index, x + facing*head_offset_x-(15*facing), y + head_height+head_offset_y-vsp-(squashstretch*10)-ear_height-walk_bob_height, facing-(squashstretch*facing)*.1, 1+squashstretch*.1, image_angle + (-vsp*facing)*1.4 -(sign(vsp+.1)*squashstretch*30)*facing + ear_bobbing*facing, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1DF2705D
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.05"
	/// @DnDArgument : "yscale" "1+squashstretch*.05 - clamp(blink_length, 0, .9)"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "eyes_sprite"
	/// @DnDArgument : "frame" "dir_index"
	draw_sprite_ext(eyes_sprite, dir_index, x + facing*head_offset_x, y + eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing-(squashstretch*facing)*.05, 1+squashstretch*.05 - clamp(blink_length, 0, .9), 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 555DF118
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "global.game_speed"
	/// @DnDArgument : "op" "2"
	if(global.game_speed > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BFD04C2
		/// @DnDParent : 555DF118
		/// @DnDArgument : "var" "random_range(0,1)"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" ".005"
		if(random_range(0,1) <= .005){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 767F0FA2
			/// @DnDParent : 7BFD04C2
			/// @DnDArgument : "expr" "random_range(1.2,5)"
			/// @DnDArgument : "var" "blink_length"
			blink_length = random_range(1.2,5);}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DAB7756
	/// @DnDParent : 22C59357
	/// @DnDArgument : "expr" "blink_length*power(.8, global.game_speed)"
	/// @DnDArgument : "var" "blink_length"
	blink_length = blink_length*power(.8, global.game_speed);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6990FA62
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x+x-hsp"
	/// @DnDArgument : "y" "head_height+head_offset_y+y-vsp-(sign(vsp)*squashstretch*40)+hair_offset_y"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)"
	/// @DnDArgument : "yscale" "1+squashstretch"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "antenna_sprite"
	draw_sprite_ext(antenna_sprite, 0, facing*head_offset_x+x-hsp, head_height+head_offset_y+y-vsp-(sign(vsp)*squashstretch*40)+hair_offset_y, facing-(squashstretch*facing), 1+squashstretch, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6D8E40D3
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*head_offset_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.05"
	/// @DnDArgument : "yscale" "1+squashstretch*.05"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "bangs_sprite"
	/// @DnDArgument : "frame" "dir_index"
	draw_sprite_ext(bangs_sprite, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing-(squashstretch*facing)*.05, 1+squashstretch*.05, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0ACF99EE
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "max_hp"
	if(hp <= max_hp){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33F203A2
		/// @DnDParent : 0ACF99EE
		/// @DnDArgument : "var" "hp"
		/// @DnDArgument : "value" "max_hp"
		if(hp == max_hp){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 3C3F0E53
			/// @DnDParent : 33F203A2
			/// @DnDArgument : "x" "facing*head_offset_x"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "facing"
			/// @DnDArgument : "alpha" "sin(iframes/2)+1"
			/// @DnDArgument : "sprite" "smile_sprite"
			/// @DnDArgument : "frame" "dir_index"
			draw_sprite_ext(smile_sprite, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1A5277B4
		/// @DnDParent : 0ACF99EE
		else{	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 139EEC77
			/// @DnDParent : 1A5277B4
			/// @DnDArgument : "var" "hp"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "max_hp*.4"
			if(hp > max_hp*.4){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 46FFC2DF
				/// @DnDParent : 139EEC77
				/// @DnDArgument : "x" "facing*head_offset_x"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "alpha" "sin(iframes/2)+1"
				/// @DnDArgument : "sprite" "straightface_sprite"
				/// @DnDArgument : "frame" "dir_index"
				draw_sprite_ext(straightface_sprite, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6F5270D5
			/// @DnDParent : 1A5277B4
			else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 0A29902F
				/// @DnDParent : 6F5270D5
				/// @DnDArgument : "x" "facing*head_offset_x"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing"
				/// @DnDArgument : "alpha" "sin(iframes/2)+1"
				/// @DnDArgument : "sprite" "frown_sprite"
				/// @DnDArgument : "frame" "dir_index"
				draw_sprite_ext(frown_sprite, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);}}}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2AD05E73
	/// @DnDDisabled : 1
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-90"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""aim: ""
	/// @DnDArgument : "var" "ulooking"


	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 57056625
	/// @DnDDisabled : 1
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-75"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""vsp: ""
	/// @DnDArgument : "var" "vsp"


	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0BCF51F2
	/// @DnDParent : 22C59357
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
	/// @DnDParent : 22C59357
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
	/// @DnDParent : 22C59357
	/// @DnDArgument : "x" "facing*-14"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-48"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "facing"
	/// @DnDArgument : "rot" "angee"
	/// @DnDArgument : "sprite" "s_boosters"
	/// @DnDSaveInfo : "sprite" "s_boosters"}