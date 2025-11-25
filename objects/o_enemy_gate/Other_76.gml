/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AC379F2
/// @DnDArgument : "code" "if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"$(13_10){$(13_10)    switch (event_data[? "message"])$(13_10)    {$(13_10)        case "pause":$(13_10)            layer_sequence_pause(mop);$(13_10)        break;$(13_10)		case "win_level":$(13_10)            instance_create_layer(x,y,"Instances",e_card,$(13_10)			{$(13_10)				sprite_index:s_wincard$(13_10)				});$(13_10)			o_player.state = ps.WIN$(13_10)			layer_sequence_destroy(mop);$(13_10)        break;$(13_10)		$(13_10)    }$(13_10)}"
if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "pause":
            layer_sequence_pause(mop);
        break;
		case "win_level":
            instance_create_layer(x,y,"Instances",e_card,
			{
				sprite_index:s_wincard
				});
			o_player.state = ps.WIN
			layer_sequence_destroy(mop);
        break;
		
    }
}