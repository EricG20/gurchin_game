/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A6B7C8D
/// @DnDArgument : "var" "dx"
/// @DnDArgument : "value" "o_game.local_player.reticle.x"
var dx = o_game.local_player.reticle.x;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A5B6C7D
/// @DnDArgument : "var" "dy"
/// @DnDArgument : "value" "o_game.local_player.reticle.y"
var dy = o_game.local_player.reticle.y;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 329CD31B
/// @DnDArgument : "var" "angle"
/// @DnDArgument : "value" "point_direction(x,y, dx, dy)"
var angle = point_direction(x,y, dx, dy);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7442CF07
/// @DnDArgument : "var" "slice_angle"
/// @DnDArgument : "value" "360/n"
var slice_angle = 360/n;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7683C441
/// @DnDArgument : "var" "hover_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "floor(angle/slice_angle)"
if(!(hover_index == floor(angle/slice_angle))){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2870B705
	/// @DnDParent : 7683C441
	/// @DnDArgument : "soundid" "uimove"
	/// @DnDArgument : "pitch" "1.1"
	/// @DnDSaveInfo : "soundid" "uimove"
	audio_play_sound(uimove, 0, 0, 1.0, undefined, 1.1);}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79EFB2D6
/// @DnDArgument : "expr" "floor(angle/slice_angle)"
/// @DnDArgument : "var" "hover_index"
hover_index = floor(angle/slice_angle);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 9A0B1C2D
/// @DnDArgument : "expr" "InputReleased(INPUT_VERB.SPECIAL, o_game.local_player.player_id)"
if(InputReleased(INPUT_VERB.SPECIAL, o_game.local_player.player_id)){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0B1C2D3E
	/// @DnDParent : 9A0B1C2D
	/// @DnDArgument : "code" "var chosen_ability = selected_options[hover_index];$(13_10)show_debug_message("Robot Special Chose Option: " + chosen_ability);$(13_10)$(13_10)// Apply bonus to local player$(13_10)with(o_game.local_player) {$(13_10)    switch(chosen_ability) {$(13_10)        case "Fire Rate Up": $(13_10)            permanent_firerate_bonus += .15;$(13_10)        break;$(13_10)        case "Reload Speed Up": $(13_10)            reload_bonus += .15;$(13_10)        break;$(13_10)        case "Movement Speed Up": $(13_10)            movementspeed_bonus += .15;$(13_10)        break;$(13_10)        case "Dash Recharge Up": $(13_10)            booster_recharge_bonus += .5;$(13_10)        break;$(13_10)        case "Ammo Up": $(13_10)            ammo_bonus += .5;$(13_10)        break;$(13_10)		case "Pulse Wave":$(13_10)			upgrade_pulse_wave = true;$(13_10)		break;$(13_10)		case "Off-hand Reload Up":$(13_10)			upgrade_offhand_reload = true;$(13_10)		break;$(13_10)		case "Switch Fire Rate Boost":$(13_10)			upgrade_switch_firerate = true;$(13_10)		break;$(13_10)    }$(13_10)    // Increment local upgrade level$(13_10)    robot_upgrade_level += 1;$(13_10)}"
	var chosen_ability = selected_options[hover_index];
	show_debug_message("Robot Special Chose Option: " + chosen_ability);
	
	// Apply bonus to local player
	with(o_game.local_player) {
	    switch(chosen_ability) {
	        case "Fire Rate Up": 
	            permanent_firerate_bonus += .15;
	        break;
	        case "Reload Speed Up": 
	            reload_bonus += .15;
	        break;
	        case "Movement Speed Up": 
	            movementspeed_bonus += .15;
	        break;
	        case "Dash Recharge Up": 
	            booster_recharge_bonus += .5;
	        break;
	        case "Ammo Up": 
	            ammo_bonus += .5;
	        break;
			case "Pulse Wave":
				upgrade_pulse_wave = true;
			break;
			case "Off-hand Reload Up":
				upgrade_offhand_reload = true;
			break;
			case "Switch Fire Rate Boost":
				upgrade_switch_firerate = true;
			break;
	    }
	    // Increment local upgrade level
	    robot_upgrade_level += 1;
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1C2D3E4F
	/// @DnDParent : 9A0B1C2D
	/// @DnDArgument : "soundid" "uinotif"
	/// @DnDArgument : "gain" ".7"
	/// @DnDArgument : "pitch" "1.5"
	/// @DnDSaveInfo : "soundid" "uinotif"
	audio_play_sound(uinotif, 0, 0, .7, undefined, 1.5);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D3E4F5A
	/// @DnDParent : 9A0B1C2D
	instance_destroy();}