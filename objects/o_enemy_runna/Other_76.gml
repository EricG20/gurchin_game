/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30F10EB2
/// @DnDArgument : "code" "if (layer_instance_get_instance(event_data[?"element_id"]) == id){$(13_10)if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)		$(13_10)		$(13_10)		case "plat":$(13_10)		if (on_ground){$(13_10)			audio_play_sound(sfx_footstep, 10, false,1.2,0,random_range(1.3, 1.5) + abs(hsp)/50);$(13_10)			instance_create_layer(x,y,"Instances",e_freedust,$(13_10)			$(13_10)			{$(13_10)				hspeed:-hsp*.1$(13_10)				});$(13_10)		}$(13_10)		break;$(13_10)    }$(13_10)}$(13_10)}"
if (layer_instance_get_instance(event_data[?"element_id"]) == id){
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
		
		
		case "plat":
		if (on_ground){
			audio_play_sound(sfx_footstep, 10, false,1.2,0,random_range(1.3, 1.5) + abs(hsp)/50);
			instance_create_layer(x,y,"Instances",e_freedust,
			
			{
				hspeed:-hsp*.1
				});
		}
		break;
    }
}
}