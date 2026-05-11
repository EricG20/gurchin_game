/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 686AF8DF
image_speed = 1;

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2B1F6971
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B45A8C1
/// @DnDArgument : "var" "control_type"
/// @DnDArgument : "value" "cr.NET"
if(control_type == cr.NET){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 79B005FD
	/// @DnDParent : 1B45A8C1
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "40"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Player ""
	/// @DnDArgument : "var" "player_id+1"
	draw_text(x + 0, y + 40, string("Player ") + string(player_id+1));}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 13115AE2
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 44A5774C
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-240"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""ID: ""
/// @DnDArgument : "var" "player_id"


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55294857
/// @DnDArgument : "expr" "persistent"
if(persistent){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 13CFE906
	/// @DnDDisabled : 1
	/// @DnDParent : 55294857
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-90"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "s_mini_player"
	/// @DnDSaveInfo : "sprite" "s_mini_player"}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 589C4B5F
/// @DnDArgument : "expr" "special_line_flag"
if(special_line_flag){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 65B346B1
	/// @DnDParent : 589C4B5F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.5+sin(current_time/1000)*.2"
	/// @DnDArgument : "yscale" "1.5-sin(current_time/1000)*.2"
	/// @DnDArgument : "alpha" ".5+(sin(current_time/800))*.2"
	/// @DnDArgument : "sprite" "s_charged_aura"
	/// @DnDArgument : "frame" "scr_anim_index(20, 4)"
	/// @DnDArgument : "col" "suit_color"
	/// @DnDSaveInfo : "sprite" "s_charged_aura"
	draw_sprite_ext(s_charged_aura, scr_anim_index(20, 4), x + 0, y + 0, 1.5+sin(current_time/1000)*.2, 1.5-sin(current_time/1000)*.2, 0, suit_color & $ffffff, .5+(sin(current_time/800))*.2);}

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 7A669ECB
/// @DnDArgument : "assignee" "my_weapon_invo"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "weapon_invo"
var my_weapon_invo = ds_list_size(weapon_invo);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 7A554C3D
/// @DnDArgument : "cond" "i < my_weapon_invo"
for(i = 0; i < my_weapon_invo; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 7CAC765C
	/// @DnDParent : 7A554C3D
	/// @DnDArgument : "assignee" "blah"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "weapon_invo"
	/// @DnDArgument : "index" "i"
	var blah = ds_list_find_value(weapon_invo, i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 268E343B
	/// @DnDParent : 7A554C3D
	/// @DnDArgument : "var" "blah"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "o_emptyhanded"
	if(!(blah == o_emptyhanded)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7237E653
		/// @DnDParent : 268E343B
		/// @DnDArgument : "x" "(-10*i - 13)*facing"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-38-walk_bob_height*walk_lift_magnitude"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "rot" "45*facing"
		/// @DnDArgument : "sprite" "object_get_sprite(blah)"
		/// @DnDArgument : "col" "$FF999999"
		draw_sprite_ext(object_get_sprite(blah), 0, x + (-10*i - 13)*facing, y + -38-walk_bob_height*walk_lift_magnitude, facing, 1, 45*facing, $FF999999 & $ffffff, 1);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22C59357
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DIE"
if(!(state == ps.DIE)){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 59262E80
	/// @DnDParent : 22C59357
	/// @DnDArgument : "obj" "mygurn"
	var l59262E80_0 = false;l59262E80_0 = instance_exists(mygurn);if(l59262E80_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22CD7D84
		/// @DnDParent : 59262E80
		/// @DnDArgument : "var" "mygurn.show_back_hand"
		/// @DnDArgument : "value" "true"
		if(mygurn.show_back_hand == true){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F333C3D
			/// @DnDParent : 22CD7D84
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "ps.WALK"
			if(state == ps.WALK){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 27DA28E4
				/// @DnDParent : 4F333C3D
				/// @DnDArgument : "expr" "mygurn.overrides_back_hand_sprite"
				if(mygurn.overrides_back_hand_sprite){	/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 77C65105
					/// @DnDParent : 27DA28E4
					/// @DnDArgument : "var" "armed_angle"
					/// @DnDArgument : "value" "0"
					var armed_angle = 0;
				
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 5EE10856
					/// @DnDParent : 27DA28E4
					/// @DnDArgument : "expr" "mygurn.back_sprite_follows_cursor"
					if(mygurn.back_sprite_follows_cursor){	/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 447FDD4A
						/// @DnDParent : 5EE10856
						/// @DnDArgument : "var" "armed_angle"
						/// @DnDArgument : "value" "mygurn.androtate*facing+mygurn.image_angle"
						var armed_angle = mygurn.androtate*facing+mygurn.image_angle;}
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 2E7B61CD
					/// @DnDParent : 27DA28E4
					/// @DnDArgument : "x" "2*facing+(mygurn.kickbackx+mygurn.shakex)"
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "(mygurn.shakey+mygurn.kickbacky)-49+(head_offset_y)/2"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "yscale" "facing"
					/// @DnDArgument : "rot" "armed_angle"
					/// @DnDArgument : "sprite" "mygurn.back_sprite_override"
					/// @DnDArgument : "col" "$FF999999"
					draw_sprite_ext(mygurn.back_sprite_override, 0, x + 2*facing+(mygurn.kickbackx+mygurn.shakex), y + (mygurn.shakey+mygurn.kickbacky)-49+(head_offset_y)/2, 1, facing, armed_angle, $FF999999 & $ffffff, 1);}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 6D0CC16E
				/// @DnDParent : 4F333C3D
				else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 18124A02
					/// @DnDParent : 6D0CC16E
					/// @DnDArgument : "x" "2*facing"
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "xscale" "-facing"
					/// @DnDArgument : "sprite" "spr_hand_walk"
					/// @DnDArgument : "frame" "image_index"
					/// @DnDArgument : "col" "$FF999999"
					draw_sprite_ext(spr_hand_walk, image_index, x + 2*facing, y + 0, -facing, 1, 0, $FF999999 & $ffffff, 1);}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 73EB486F
			/// @DnDParent : 22CD7D84
			else{	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 5FC02CE3
				/// @DnDParent : 73EB486F
				/// @DnDArgument : "expr" "mygurn.overrides_back_hand_sprite"
				if(mygurn.overrides_back_hand_sprite){	/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 55AC65F1
					/// @DnDParent : 5FC02CE3
					/// @DnDArgument : "var" "armed_angle"
					/// @DnDArgument : "value" "0"
					var armed_angle = 0;
				
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 3841FD7D
					/// @DnDParent : 5FC02CE3
					/// @DnDArgument : "expr" "mygurn.back_sprite_follows_cursor"
					if(mygurn.back_sprite_follows_cursor){	/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2333BD55
						/// @DnDParent : 3841FD7D
						/// @DnDArgument : "var" "armed_angle"
						/// @DnDArgument : "value" "mygurn.androtate*facing+mygurn.image_angle"
						var armed_angle = mygurn.androtate*facing+mygurn.image_angle;}
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 0C30DF70
					/// @DnDParent : 5FC02CE3
					/// @DnDArgument : "x" "2*facing+(mygurn.kickbackx+mygurn.shakex)"
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "(mygurn.shakey+mygurn.kickbacky)-49+(head_offset_y)/2"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "yscale" "facing"
					/// @DnDArgument : "rot" "armed_angle"
					/// @DnDArgument : "sprite" "mygurn.back_sprite_override"
					/// @DnDArgument : "col" "$FF999999"
					draw_sprite_ext(mygurn.back_sprite_override, 0, x + 2*facing+(mygurn.kickbackx+mygurn.shakex), y + (mygurn.shakey+mygurn.kickbacky)-49+(head_offset_y)/2, 1, facing, armed_angle, $FF999999 & $ffffff, 1);}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 6FEE139C
				/// @DnDParent : 73EB486F
				else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 5FE77DDC
					/// @DnDParent : 6FEE139C
					/// @DnDArgument : "x" "2*facing"
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "xscale" "-facing"
					/// @DnDArgument : "sprite" "spr_hand"
					/// @DnDArgument : "col" "$FF999999"
					draw_sprite_ext(spr_hand, 0, x + 2*facing, y + 0, -facing, 1, 0, $FF999999 & $ffffff, 1);}}}}

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
		/// @DnDArgument : "const" "ps.THINK"
		case ps.THINK:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
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
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 47857281
			/// @DnDParent : 1AC9DB34
			/// @DnDArgument : "obj" "mygurn"
			var l47857281_0 = false;l47857281_0 = instance_exists(mygurn);if(l47857281_0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 328DBDA2
				/// @DnDParent : 47857281
				/// @DnDArgument : "var" "mygurn.show_front_hand"
				/// @DnDArgument : "value" "true"
				if(mygurn.show_front_hand == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 5493FBD0
					/// @DnDParent : 328DBDA2
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-(sign(vsp)*squashstretch*30)"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "xscale" "facing"
					/// @DnDArgument : "sprite" "spr_hand"
					/// @DnDArgument : "col" "$00FFFFFF"
					draw_sprite_ext(spr_hand, 0, x + 0, y + -(sign(vsp)*squashstretch*30), facing, 1, 0, $00FFFFFF & $ffffff, 1);}}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3F58225F
		/// @DnDParent : 647AD4A3
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 5AE22CAD
			/// @DnDParent : 3F58225F
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
			/// @DnDHash : 785E8CD6
			/// @DnDParent : 3F58225F
			/// @DnDArgument : "value" "idle_sprite"
			/// @DnDArgument : "instvar" "10"
			sprite_index = idle_sprite;
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 00963400
			/// @DnDParent : 3F58225F
			/// @DnDArgument : "obj" "mygurn"
			var l00963400_0 = false;l00963400_0 = instance_exists(mygurn);if(l00963400_0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7CB1C43E
				/// @DnDParent : 00963400
				/// @DnDArgument : "var" "mygurn.show_front_hand"
				/// @DnDArgument : "value" "true"
				if(mygurn.show_front_hand == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 0F3A6C86
					/// @DnDParent : 7CB1C43E
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-(sign(vsp)*squashstretch*30)"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "xscale" "facing"
					/// @DnDArgument : "sprite" "spr_hand"
					/// @DnDArgument : "col" "$00FFFFFF"
					draw_sprite_ext(spr_hand, 0, x + 0, y + -(sign(vsp)*squashstretch*30), facing, 1, 0, $00FFFFFF & $ffffff, 1);}}	break;
	
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
			/// @DnDArgument : "sprite" "sprite_index"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDArgument : "col" "suit_color"
			draw_sprite_ext(sprite_index, image_index, x + 0, y + -walk_bob_height*walk_lift_magnitude, facing-(squashstretch*facing), 1+squashstretch, 0, suit_color & $ffffff, sin(iframes/2)+1);
		
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
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1DBAC322
			/// @DnDParent : 25740D4A
			/// @DnDArgument : "expr" "sliding"
			if(sliding){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 1ACB2409
				/// @DnDParent : 1DBAC322
				/// @DnDArgument : "value" "slide_sprite"
				/// @DnDArgument : "instvar" "10"
				sprite_index = slide_sprite;}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 65F397A5
			/// @DnDParent : 25740D4A
			/// @DnDArgument : "obj" "mygurn"
			var l65F397A5_0 = false;l65F397A5_0 = instance_exists(mygurn);if(l65F397A5_0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 50251CF3
				/// @DnDParent : 65F397A5
				/// @DnDArgument : "var" "mygurn.show_front_hand"
				/// @DnDArgument : "value" "true"
				if(mygurn.show_front_hand == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 3F59BE81
					/// @DnDParent : 50251CF3
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "xscale" "facing"
					/// @DnDArgument : "sprite" "spr_hand_walk"
					/// @DnDArgument : "frame" "image_index"
					draw_sprite_ext(spr_hand_walk, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}}	break;
	
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
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 1519CB82
			/// @DnDParent : 63D23000
			/// @DnDArgument : "obj" "mygurn"
			var l1519CB82_0 = false;l1519CB82_0 = instance_exists(mygurn);if(l1519CB82_0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0C541135
				/// @DnDParent : 1519CB82
				/// @DnDArgument : "var" "mygurn.show_front_hand"
				/// @DnDArgument : "value" "true"
				if(mygurn.show_front_hand == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 3E5B1704
					/// @DnDParent : 0C541135
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "xscale" "facing"
					/// @DnDArgument : "sprite" "spr_hand"
					draw_sprite_ext(spr_hand, 0, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);}}	break;
	
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
	/// @DnDArgument : "value" "point_direction(x,y-46,reticle.x,reticle.y)"
	var ulooking = point_direction(x,y-46,reticle.x,reticle.y);

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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BF37605
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "speak_timer"
	/// @DnDArgument : "op" "3"
	if(speak_timer <= 0){	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 6BCE3299
		/// @DnDParent : 1BF37605
		/// @DnDArgument : "expr" "state"
		var l6BCE3299_0 = state;switch(l6BCE3299_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 73AE7693
			/// @DnDParent : 6BCE3299
			default:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 1DF2705D
				/// @DnDParent : 73AE7693
				/// @DnDArgument : "x" "facing*head_offset_x"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.05"
				/// @DnDArgument : "yscale" "1+squashstretch*.05 - clamp(blink_length, 0, .9)"
				/// @DnDArgument : "alpha" "sin(iframes/2)+1"
				/// @DnDArgument : "sprite" "eyes_sprite"
				/// @DnDArgument : "frame" "dir_index"
				draw_sprite_ext(eyes_sprite, dir_index, x + facing*head_offset_x, y + eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing-(squashstretch*facing)*.05, 1+squashstretch*.05 - clamp(blink_length, 0, .9), 0, $FFFFFF & $ffffff, sin(iframes/2)+1);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 295862E8
			/// @DnDParent : 6BCE3299
			/// @DnDArgument : "const" "ps.THINK"
			case ps.THINK:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 2EEBDF58
				/// @DnDParent : 295862E8
				/// @DnDArgument : "x" "facing*head_offset_x"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.05"
				/// @DnDArgument : "yscale" "1+squashstretch*.05 - clamp(blink_length, 0, .9)"
				/// @DnDArgument : "alpha" "sin(iframes/2)+1"
				/// @DnDArgument : "sprite" "ponder_eyes_sprite"
				/// @DnDArgument : "frame" "dir_index"
				draw_sprite_ext(ponder_eyes_sprite, dir_index, x + facing*head_offset_x, y + eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing-(squashstretch*facing)*.05, 1+squashstretch*.05 - clamp(blink_length, 0, .9), 0, $FFFFFF & $ffffff, sin(iframes/2)+1);	break;}}

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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35DFCA91
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "speak_timer"
	/// @DnDArgument : "op" "2"
	if(speak_timer > 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0443B254
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "var" "talking"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "script" "msg_dynamic"
		/// @DnDArgument : "arg" "dialogue_content"
		/// @DnDSaveInfo : "script" "msg_dynamic"
		var talking = script_execute(msg_dynamic, dialogue_content);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 506D54B1
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "x" "facing*head_offset_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing-(squashstretch*facing)*.05"
		/// @DnDArgument : "yscale" "1+squashstretch*.05 - clamp(blink_length, 0, .9)"
		/// @DnDArgument : "alpha" "sin(iframes/2)+1"
		/// @DnDArgument : "sprite" "eyes_expression"
		/// @DnDArgument : "frame" "dir_index"
		draw_sprite_ext(eyes_expression, dir_index, x + facing*head_offset_x, y + eye_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing-(squashstretch*facing)*.05, 1+squashstretch*.05 - clamp(blink_length, 0, .9), 0, $FFFFFF & $ffffff, sin(iframes/2)+1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 431B01DB
		/// @DnDDisabled : 1
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "var" "mouth_transformation"
		/// @DnDArgument : "value" "1"
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6214B1DF
		/// @DnDDisabled : 1
		/// @DnDParent : 431B01DB
		/// @DnDArgument : "var" "mouth_displacement"
		/// @DnDArgument : "value" "0"
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E7B1D1D
		/// @DnDDisabled : 1
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "var" "mouth_transformation"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "1"
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 449DB815
		/// @DnDDisabled : 1
		/// @DnDParent : 1E7B1D1D
		/// @DnDArgument : "var" "mouth_displacement"
		/// @DnDArgument : "value" "mouth_transformation"
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 5AB8C3BD
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "x" "facing*head_offset_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "yscale" "mouth_transformation"
		/// @DnDArgument : "alpha" "sin(iframes/2)+1"
		/// @DnDArgument : "sprite" "mouth_expression"
		/// @DnDArgument : "frame" "dir_index"
		draw_sprite_ext(mouth_expression, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing, mouth_transformation, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 73609B42
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "expr" "talking"
		/// @DnDArgument : "not" "1"
		if(!(talking)){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 13C778BA
			/// @DnDParent : 73609B42
			/// @DnDArgument : "script" "scr_zorb_voices"
			/// @DnDArgument : "arg" ""speak""
			/// @DnDSaveInfo : "script" "scr_zorb_voices"
			script_execute(scr_zorb_voices, "speak");
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E36C8E9
			/// @DnDParent : 73609B42
			/// @DnDArgument : "expr" "lerp(mouth_transformation, 1, power(.01, global.game_speed))"
			/// @DnDArgument : "var" "mouth_transformation"
			mouth_transformation = lerp(mouth_transformation, 1, power(.01, global.game_speed));}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 30FFB926
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "expr" "talking"
		if(talking){	/// @DnDAction : YoYo Games.Common.If_Undefined
			/// @DnDVersion : 1
			/// @DnDHash : 137ADE51
			/// @DnDParent : 30FFB926
			/// @DnDArgument : "var" "ds_map_find_value(expressions, mouth_key)"
			/// @DnDArgument : "not" "1"
			if(ds_map_find_value(expressions, mouth_key) != undefined){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E72F0FD
				/// @DnDParent : 137ADE51
				/// @DnDArgument : "expr" "ds_map_find_value(expressions, mouth_key)"
				/// @DnDArgument : "var" "mouth_expression"
				mouth_expression = ds_map_find_value(expressions, mouth_key);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7468F18F
				/// @DnDParent : 137ADE51
				/// @DnDArgument : "expr" "lerp(mouth_transformation, 1, power(.9, global.game_speed))"
				/// @DnDArgument : "var" "mouth_transformation"
				mouth_transformation = lerp(mouth_transformation, 1, power(.9, global.game_speed));}}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B7B6776
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speak_timer"
		speak_timer += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49AD4CBD
		/// @DnDParent : 35DFCA91
		/// @DnDArgument : "var" "speak_timer"
		/// @DnDArgument : "op" "3"
		if(speak_timer <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 42067F42
			/// @DnDParent : 49AD4CBD
			/// @DnDArgument : "script" "msg_stop"
			/// @DnDSaveInfo : "script" "msg_stop"
			script_execute(msg_stop);}}

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
	/// @DnDArgument : "y" "head_height+head_offset_y+y-vsp-(sign(vsp)*squashstretch*40)+hair_offset_y*hair_weight"
	/// @DnDArgument : "xscale" "facing-(squashstretch*facing)"
	/// @DnDArgument : "yscale" "1+squashstretch"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "antenna_sprite"
	draw_sprite_ext(antenna_sprite, 0, facing*head_offset_x+x-hsp, head_height+head_offset_y+y-vsp-(sign(vsp)*squashstretch*40)+hair_offset_y*hair_weight, facing-(squashstretch*facing), 1+squashstretch, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

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
	/// @DnDHash : 7E6F88C8
	/// @DnDParent : 22C59357
	/// @DnDArgument : "var" "speak_timer"
	/// @DnDArgument : "op" "3"
	if(speak_timer <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0ACF99EE
		/// @DnDParent : 7E6F88C8
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
					draw_sprite_ext(frown_sprite, dir_index, x + facing*head_offset_x, y + head_height+head_offset_y-vsp-(squashstretch*10)-walk_bob_height, facing, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);}}}}

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