/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E037D14
/// @DnDArgument : "code" "if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)        case "spawn_jerk":$(13_10)            instance_create_layer(x,y,"Instances",o_enemy_jerk);$(13_10)			global.the_gate.flagz++;$(13_10)        break;$(13_10)		case "spawn_dasher":$(13_10)            instance_create_layer(x,y,"Instances",o_enemy_dasher);$(13_10)			global.the_gate.flagz++;$(13_10)        break;$(13_10)		case "spawn_cydrag":$(13_10)            instance_create_layer(x,y,"Instances",o_enemy_cydrag);$(13_10)			global.the_gate.flagz++;$(13_10)        break;$(13_10)		case "spawn_blugunna":$(13_10)            instance_create_layer(x,y,"Instances",o_enemy_blugunna);$(13_10)			global.the_gate.flagz++;$(13_10)        break$(13_10)		case "spawn_bigwalker":$(13_10)            instance_create_layer(x,y,"Instances",o_boss_bigwalker);$(13_10)			global.the_gate.flagz++;$(13_10)        break;$(13_10)		case "camera_follow":$(13_10)			o_camera.follow_tracker = true;$(13_10)		break;$(13_10)		case "camera_stop_follow":$(13_10)			o_camera.follow_tracker = false;$(13_10)		break;$(13_10)		$(13_10)    }$(13_10)}"
if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "spawn_jerk":
            instance_create_layer(x,y,"Instances",o_enemy_jerk);
			global.the_gate.flagz++;
        break;
		case "spawn_dasher":
            instance_create_layer(x,y,"Instances",o_enemy_dasher);
			global.the_gate.flagz++;
        break;
		case "spawn_cydrag":
            instance_create_layer(x,y,"Instances",o_enemy_cydrag);
			global.the_gate.flagz++;
        break;
		case "spawn_blugunna":
            instance_create_layer(x,y,"Instances",o_enemy_blugunna);
			global.the_gate.flagz++;
        break
		case "spawn_bigwalker":
            instance_create_layer(x,y,"Instances",o_boss_bigwalker);
			global.the_gate.flagz++;
        break;
		case "camera_follow":
			o_camera.follow_tracker = true;
		break;
		case "camera_stop_follow":
			o_camera.follow_tracker = false;
		break;
		
    }
}