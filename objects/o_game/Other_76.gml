/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BEF3862
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "s_grid"
/// @DnDArgument : "var" "blub"


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 09B20185
/// @DnDDisabled : 1
/// @DnDArgument : "script" "scr_grade"
/// @DnDSaveInfo : "script" "scr_grade"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7C49E21F
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "grade"
/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 17D0FF72
/// @DnDDisabled : 1
/// @DnDParent : 7C49E21F
/// @DnDArgument : "const" "gr.C"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B70CCBA
/// @DnDDisabled : 1
/// @DnDParent : 17D0FF72
/// @DnDArgument : "expr" "s_gradeC"
/// @DnDArgument : "var" "blub"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 78326DA1
/// @DnDDisabled : 1
/// @DnDParent : 7C49E21F
/// @DnDArgument : "const" "gr.B"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40B050A8
/// @DnDDisabled : 1
/// @DnDParent : 78326DA1
/// @DnDArgument : "expr" "s_gradeB"
/// @DnDArgument : "var" "blub"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 643EC3D5
/// @DnDDisabled : 1
/// @DnDParent : 7C49E21F
/// @DnDArgument : "const" "gr.A"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F3683A0
/// @DnDDisabled : 1
/// @DnDParent : 643EC3D5
/// @DnDArgument : "expr" "s_gradeA"
/// @DnDArgument : "var" "blub"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 73D34337
/// @DnDDisabled : 1
/// @DnDParent : 7C49E21F
/// @DnDArgument : "const" "gr.S"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C2ACACA
/// @DnDDisabled : 1
/// @DnDParent : 73D34337
/// @DnDArgument : "expr" "s_gradeS"
/// @DnDArgument : "var" "blub"

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3AEB1A5B
/// @DnDArgument : "code" "if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)		case "start_boss_0":$(13_10)			instance_create_layer(sethisx,sethisy,"Instances",o_player);$(13_10)			instance_create_layer(1408,1056,"Instances",o_B_gunclaw);$(13_10)			layer_sequence_destroy(cutscene)$(13_10)		case "grade":$(13_10)            instance_create_layer(x,y,"Instances",e_card,$(13_10)			{$(13_10)				sprite_index:blub$(13_10)				});$(13_10)				if lvlscor < scor{$(13_10)			ds_map_replace(level_data,selected_level,grade);$(13_10)			ds_map_replace(level_data,selected_level+"score",scor);$(13_10)			}$(13_10)        break;$(13_10)		case "fade_out_music":$(13_10)			if (pylon_wave_number%3 == 0){scr_fadeout_song(4000);$(13_10)				pylon_incr=-400}$(13_10)		break;$(13_10)		case "play_chill_music":$(13_10)			if (pylon_wave_number%3 == 0){$(13_10)				curr_song = choose(intermission_1, intermission_2, intermission_3, intermission_4);$(13_10)			$(13_10)			// im fat$(13_10)			audio_play_sound(curr_song, 0, 1, 1.0, undefined, 1.0);$(13_10)			}$(13_10)		break;$(13_10)		case "provide_da_points":$(13_10)			scr_grade_point_reward();$(13_10)		break;$(13_10)		$(13_10)    }$(13_10)}"
if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
		case "start_boss_0":
			instance_create_layer(sethisx,sethisy,"Instances",o_player);
			instance_create_layer(1408,1056,"Instances",o_B_gunclaw);
			layer_sequence_destroy(cutscene)
		case "grade":
            instance_create_layer(x,y,"Instances",e_card,
			{
				sprite_index:blub
				});
				if lvlscor < scor{
			ds_map_replace(level_data,selected_level,grade);
			ds_map_replace(level_data,selected_level+"score",scor);
			}
        break;
		case "fade_out_music":
			if (pylon_wave_number%3 == 0){scr_fadeout_song(4000);
				pylon_incr=-400}
		break;
		case "play_chill_music":
			if (pylon_wave_number%3 == 0){
				curr_song = choose(intermission_1, intermission_2, intermission_3, intermission_4);
			
			// im fat
			audio_play_sound(curr_song, 0, 1, 1.0, undefined, 1.0);
			}
		break;
		case "provide_da_points":
			scr_grade_point_reward();
		break;
		
    }
}