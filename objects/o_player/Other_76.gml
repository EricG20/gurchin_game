/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C5BEB34
/// @DnDArgument : "code" "if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)		case "player_step_dust":$(13_10)            instance_create_layer(x,y,"Instances",e_freedust,$(13_10)			{$(13_10)				hspeed:-hsp*.1$(13_10)				});$(13_10)			if tick{$(13_10)				instance_create_layer(x,y,"Effects",e_dust)$(13_10)			}$(13_10)        break;$(13_10)		$(13_10)    }$(13_10)}"
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
				instance_create_layer(x,y,"Effects",e_dust)
			}
        break;
		
    }
}