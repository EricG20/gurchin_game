/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C5BEB34
/// @DnDArgument : "code" "if (layer_instance_get_instance(event_data[?"element_id"]) == id){$(13_10)if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)		case "player_step_dust":$(13_10)            instance_create_layer(x,y,"Instances",e_freedust,$(13_10)			{$(13_10)				hspeed:-hsp*.1$(13_10)				});$(13_10)			if tick{$(13_10)				scr_afterimage();$(13_10)			}$(13_10)        break;$(13_10)		$(13_10)		case "step_sound":$(13_10)			audio_play_sound(sfx_footstep, 10, false,1,0,random_range(.9, 1.1) + abs(hsp)/50);$(13_10)		break;$(13_10)    }$(13_10)}$(13_10)}"
if (layer_instance_get_instance(event_data[?"element_id"]) == id){
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
		case "player_step_dust":
            instance_create_layer(x,y,"Instances",e_freedust,
			{
				hspeed:-hsp*.1
				});
			if tick{
				scr_afterimage();
			}
        break;
		
		case "step_sound":
			audio_play_sound(sfx_footstep, 10, false,1,0,random_range(.9, 1.1) + abs(hsp)/50);
		break;
    }
}
}