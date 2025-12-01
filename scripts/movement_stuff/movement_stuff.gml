/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 430C202A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "movement_stuff"
function movement_stuff() {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72E42ED5
	/// @DnDParent : 430C202A
	/// @DnDArgument : "var" "global.game_speed"
	/// @DnDArgument : "not" "1"
	if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 13B4DA78
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "expr" "object_index"
		var l13B4DA78_0 = object_index;switch(l13B4DA78_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0A39A24B
			/// @DnDParent : 13B4DA78
			/// @DnDArgument : "const" "o_enemy_walkah"
			case o_enemy_walkah:	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 0C50FC0C
				/// @DnDParent : 0A39A24B
				/// @DnDArgument : "expr" "on_ground"
				if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 14C721D1
					/// @DnDParent : 0C50FC0C
					/// @DnDArgument : "expr" "hsp*power(.8,global.game_speed)"
					/// @DnDArgument : "var" "hsp"
					hsp = hsp*power(.8,global.game_speed);}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 1EFF5679
			/// @DnDParent : 13B4DA78
			/// @DnDArgument : "const" "o_player"
			case o_player:	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 56B92F70
				/// @DnDParent : 1EFF5679
				/// @DnDArgument : "expr" "tick"
				/// @DnDArgument : "not" "1"
				if(!(tick)){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 22B09505
					/// @DnDParent : 56B92F70
					/// @DnDArgument : "expr" "left"
					/// @DnDArgument : "not" "1"
					if(!(left)){	/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 4C17F234
						/// @DnDParent : 22B09505
						/// @DnDArgument : "expr" "right"
						/// @DnDArgument : "not" "1"
						if(!(right)){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 3B3C64F9
							/// @DnDParent : 4C17F234
							/// @DnDArgument : "expr" "hsp* power(0.6, global.game_speed)"
							/// @DnDArgument : "var" "hsp"
							hsp = hsp* power(0.6, global.game_speed);}}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 677223C9
			/// @DnDParent : 13B4DA78
			/// @DnDArgument : "const" "o_mount"
			case o_mount:	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 22E01DB8
				/// @DnDParent : 677223C9
				/// @DnDArgument : "expr" "tick"
				/// @DnDArgument : "not" "1"
				if(!(tick)){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 268A6447
					/// @DnDParent : 22E01DB8
					/// @DnDArgument : "expr" "left"
					/// @DnDArgument : "not" "1"
					if(!(left)){	/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 3BFD344D
						/// @DnDParent : 268A6447
						/// @DnDArgument : "expr" "right"
						/// @DnDArgument : "not" "1"
						if(!(right)){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 13632B8F
							/// @DnDParent : 3BFD344D
							/// @DnDArgument : "expr" "hsp*power(0.6,global.game_speed)"
							/// @DnDArgument : "var" "hsp"
							hsp = hsp*power(0.6,global.game_speed);}}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 25EACD53
			/// @DnDParent : 13B4DA78
			/// @DnDArgument : "const" "mo_bike"
			case mo_bike:	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 5E0443BB
				/// @DnDParent : 25EACD53
				/// @DnDArgument : "expr" "tick"
				/// @DnDArgument : "not" "1"
				if(!(tick)){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 0537DE05
					/// @DnDParent : 5E0443BB
					/// @DnDArgument : "expr" "left"
					/// @DnDArgument : "not" "1"
					if(!(left)){	/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 7E2497F0
						/// @DnDParent : 0537DE05
						/// @DnDArgument : "expr" "right"
						/// @DnDArgument : "not" "1"
						if(!(right)){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 795C8D98
							/// @DnDParent : 7E2497F0
							/// @DnDArgument : "expr" "hsp*power(.97, global.game_speed)"
							/// @DnDArgument : "var" "hsp"
							hsp = hsp*power(.97, global.game_speed);}}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 011719D1
			/// @DnDParent : 13B4DA78
			default:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4CC17881
				/// @DnDParent : 011719D1
				/// @DnDArgument : "expr" "hsp*power(.8,global.game_speed)"
				/// @DnDArgument : "var" "hsp"
				hsp = hsp*power(.8,global.game_speed);	break;}
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5BE86870
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "code" "if place_meeting(x+hsp*global.game_speed,y,o_solid)$(13_10){$(13_10)    yplus = 0;$(13_10)    while (place_meeting(x+hsp*global.game_speed,y-yplus,o_solid) && yplus <= abs(1*hsp*global.game_speed)) yplus += 1;$(13_10)    if place_meeting(x+hsp*global.game_speed,y-yplus,o_solid)$(13_10)    {$(13_10)        while (!place_meeting(x+sign(hsp),y,o_solid)) x+=sign(hsp);$(13_10)        hsp = 0;$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)        y -= yplus;$(13_10)    }$(13_10)}$(13_10)x += hsp*global.game_speed;$(13_10)$(13_10)// Downward slopes$(13_10)if !place_meeting(x,y,o_solid) && vsp*global.game_speed >= 0 && place_meeting(x,y+2+abs(hsp*global.game_speed),o_solid)$(13_10){while(!place_meeting(x,y+1,o_solid)) {y += 1;}}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)    //Vertical Collision and Gravity$(13_10)    if (!on_ground)$(13_10)    {$(13_10)        //vsp += global.grav;$(13_10)    }$(13_10)$(13_10)    //Vertical Collision$(13_10)    if (place_meeting(x, y+vsp, o_solid))$(13_10)    {$(13_10)   $(13_10)        //vsp = 0;$(13_10)   $(13_10)    }$(13_10)$(13_10)$(13_10)"
		if place_meeting(x+hsp*global.game_speed,y,o_solid)
		{
		    yplus = 0;
		    while (place_meeting(x+hsp*global.game_speed,y-yplus,o_solid) && yplus <= abs(1*hsp*global.game_speed)) yplus += 1;
		    if place_meeting(x+hsp*global.game_speed,y-yplus,o_solid)
		    {
		        while (!place_meeting(x+sign(hsp),y,o_solid)) x+=sign(hsp);
		        hsp = 0;
		    }
		    else
		    {
		        y -= yplus;
		    }
		}
		x += hsp*global.game_speed;
		
		// Downward slopes
		if !place_meeting(x,y,o_solid) && vsp*global.game_speed >= 0 && place_meeting(x,y+2+abs(hsp*global.game_speed),o_solid)
		{while(!place_meeting(x,y+1,o_solid)) {y += 1;}}
		
		
		
		
		    //Vertical Collision and Gravity
		    if (!on_ground)
		    {
		        //vsp += global.grav;
		    }
		
		    //Vertical Collision
		    if (place_meeting(x, y+vsp, o_solid))
		    {
		   
		        //vsp = 0;
		   
		    }
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A1BF79D
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "vsp*global.game_speed"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solid"
		/// @DnDSaveInfo : "object" "o_solid"
		var l2A1BF79D_0 = instance_place(x + 0, y + vsp*global.game_speed, [o_solid]);if ((l2A1BF79D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D15CBDB
			/// @DnDParent : 2A1BF79D
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			var collide = false;
		
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 38AE713C
			/// @DnDParent : 2A1BF79D
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			while ((collide == false)) {
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 65C1B8BF
				/// @DnDParent : 38AE713C
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "sign(vsp)*global.game_speed"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "o_solid"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "object" "o_solid"
				var l65C1B8BF_0 = instance_place(x + 0, y + sign(vsp)*global.game_speed, [o_solid]);if (!(l65C1B8BF_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7E4A546D
					/// @DnDParent : 65C1B8BF
					/// @DnDArgument : "expr" "sign(vsp)*global.game_speed"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "y"
					y += sign(vsp)*global.game_speed;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 39030579
				/// @DnDParent : 38AE713C
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6F6B9030
					/// @DnDParent : 39030579
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "collide"
					collide = true;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4D2550BA
					/// @DnDParent : 39030579
					/// @DnDArgument : "var" "vsp"
					vsp = 0;}
			}}
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 7E423C0F
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "expr" "object_index"
		var l7E423C0F_0 = object_index;switch(l7E423C0F_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 47ED3EBF
			/// @DnDParent : 7E423C0F
			default:	/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 62922723
				/// @DnDParent : 47ED3EBF
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "vsp*global.game_speed"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "target" "blarg"
				/// @DnDArgument : "object" "o_onewayplats"
				/// @DnDSaveInfo : "object" "o_onewayplats"
				var l62922723_0 = instance_place(x + 0, y + vsp*global.game_speed, [o_onewayplats]);
				blarg = l62922723_0;if ((l62922723_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0FD2E5EE
					/// @DnDParent : 62922723
					/// @DnDArgument : "var" "bbox_bottom"
					/// @DnDArgument : "op" "1"
					/// @DnDArgument : "value" "blarg.bbox_top+2"
					if(bbox_bottom < blarg.bbox_top+2){	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 097D1CF0
						/// @DnDParent : 0FD2E5EE
						/// @DnDArgument : "var" "vsp*global.game_speed"
						/// @DnDArgument : "op" "2"
						if(vsp*global.game_speed > 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5814AB88
							/// @DnDParent : 097D1CF0
							/// @DnDArgument : "var" "collide"
							/// @DnDArgument : "value" "false"
							var collide = false;
						
							/// @DnDAction : YoYo Games.Loops.While_Loop
							/// @DnDVersion : 1
							/// @DnDHash : 1631E422
							/// @DnDParent : 097D1CF0
							/// @DnDArgument : "var" "collide"
							/// @DnDArgument : "value" "false"
							while ((collide == false)) {
								/// @DnDAction : YoYo Games.Collisions.If_Object_At
								/// @DnDVersion : 1.1
								/// @DnDHash : 1F54D9E3
								/// @DnDParent : 1631E422
								/// @DnDArgument : "x_relative" "1"
								/// @DnDArgument : "y" "sign(vsp)*global.game_speed"
								/// @DnDArgument : "y_relative" "1"
								/// @DnDArgument : "object" "o_onewayplats"
								/// @DnDArgument : "not" "1"
								/// @DnDSaveInfo : "object" "o_onewayplats"
								var l1F54D9E3_0 = instance_place(x + 0, y + sign(vsp)*global.game_speed, [o_onewayplats]);if (!(l1F54D9E3_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 2BDC012A
									/// @DnDParent : 1F54D9E3
									/// @DnDArgument : "expr" "sign(vsp)*global.game_speed"
									/// @DnDArgument : "expr_relative" "1"
									/// @DnDArgument : "var" "y"
									y += sign(vsp)*global.game_speed;}
							
								/// @DnDAction : YoYo Games.Common.Else
								/// @DnDVersion : 1
								/// @DnDHash : 03C0E5B9
								/// @DnDParent : 1631E422
								else{	/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 1C5CC354
									/// @DnDParent : 03C0E5B9
									/// @DnDArgument : "expr" "true"
									/// @DnDArgument : "var" "collide"
									collide = true;
								
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 1A310C9B
									/// @DnDParent : 03C0E5B9
									/// @DnDArgument : "var" "vsp"
									vsp = 0;}
							}}}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 6F481906
			/// @DnDParent : 7E423C0F
			/// @DnDArgument : "const" "o_boss_bigwalker"
			case o_boss_bigwalker:	/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 0F246BEB
				/// @DnDParent : 6F481906
				break;	break;}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 068259BA
		/// @DnDDisabled : 1
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "x" "hsp"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solid"
		/// @DnDSaveInfo : "object" "o_solid"
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55BED1A6
		/// @DnDDisabled : 1
		/// @DnDParent : 068259BA
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		
		
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 52E959A6
		/// @DnDDisabled : 1
		/// @DnDParent : 068259BA
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 617AE359
		/// @DnDDisabled : 1
		/// @DnDParent : 52E959A6
		/// @DnDArgument : "x" "sign(hsp)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solid"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_solid"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41A6DEDD
		/// @DnDDisabled : 1
		/// @DnDParent : 617AE359
		/// @DnDArgument : "expr" "sign(hsp)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2AFD933A
		/// @DnDDisabled : 1
		/// @DnDParent : 52E959A6
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45D7390F
		/// @DnDDisabled : 1
		/// @DnDParent : 2AFD933A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "collide"
		
		
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1257AA60
		/// @DnDDisabled : 1
		/// @DnDParent : 2AFD933A
		/// @DnDArgument : "var" "hsp"
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12C40019
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "expr" "vsp*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += vsp*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5A286C32
		/// @DnDParent : 72E42ED5
		/// @DnDArgument : "expr" "on_ground"
		/// @DnDArgument : "not" "1"
		if(!(on_ground)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01859A2A
			/// @DnDParent : 5A286C32
			/// @DnDArgument : "expr" "global.grav*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "vsp"
			vsp += global.grav*global.game_speed;}}}