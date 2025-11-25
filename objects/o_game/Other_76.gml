/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BEF3862
/// @DnDArgument : "expr" "s_grid"
/// @DnDArgument : "var" "blub"
blub = s_grid;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 09B20185
/// @DnDArgument : "script" "scr_grade"
/// @DnDSaveInfo : "script" "scr_grade"
script_execute(scr_grade);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7C49E21F
/// @DnDArgument : "expr" "grade"
var l7C49E21F_0 = grade;
switch(l7C49E21F_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 17D0FF72
	/// @DnDParent : 7C49E21F
	/// @DnDArgument : "const" "gr.C"
	case gr.C:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B70CCBA
		/// @DnDParent : 17D0FF72
		/// @DnDArgument : "expr" "s_gradeC"
		/// @DnDArgument : "var" "blub"
		blub = s_gradeC;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 78326DA1
	/// @DnDParent : 7C49E21F
	/// @DnDArgument : "const" "gr.B"
	case gr.B:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40B050A8
		/// @DnDParent : 78326DA1
		/// @DnDArgument : "expr" "s_gradeB"
		/// @DnDArgument : "var" "blub"
		blub = s_gradeB;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 643EC3D5
	/// @DnDParent : 7C49E21F
	/// @DnDArgument : "const" "gr.A"
	case gr.A:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F3683A0
		/// @DnDParent : 643EC3D5
		/// @DnDArgument : "expr" "s_gradeA"
		/// @DnDArgument : "var" "blub"
		blub = s_gradeA;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 73D34337
	/// @DnDParent : 7C49E21F
	/// @DnDArgument : "const" "gr.S"
	case gr.S:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C2ACACA
		/// @DnDParent : 73D34337
		/// @DnDArgument : "expr" "s_gradeS"
		/// @DnDArgument : "var" "blub"
		blub = s_gradeS;
		break;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3AEB1A5B
/// @DnDArgument : "code" "if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)		case "start_boss_0":$(13_10)			instance_create_layer(sethisx,sethisy,"Instances",o_player);$(13_10)			instance_create_layer(1408,1056,"Instances",o_B_gunclaw);$(13_10)			layer_sequence_destroy(cutscene)$(13_10)		case "grade":$(13_10)            instance_create_layer(x,y,"Instances",e_card,$(13_10)			{$(13_10)				sprite_index:blub$(13_10)				});$(13_10)				if lvlscor < scor{$(13_10)			ds_map_replace(level_data,selected_level,grade);$(13_10)			ds_map_replace(level_data,selected_level+"score",scor);$(13_10)			}$(13_10)        break;$(13_10)		$(13_10)    }$(13_10)}"
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
		
    }
}