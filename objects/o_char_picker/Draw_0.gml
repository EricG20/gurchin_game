/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 590F0D4A
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2B38981A
/// @DnDDisabled : 1
/// @DnDArgument : "x" "300"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Proceed with -" + InputVerbGetBindingName(INPUT_VERB.JUMP) + "- btw""


/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 4D11AD41
/// @DnDDisabled : 1
/// @DnDArgument : "assignee" "char_name"
/// @DnDArgument : "var" "char_list"
/// @DnDArgument : "index" "char_in_question"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F7C9C23
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "char_name"
/// @DnDArgument : "var" "char_text"


/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 639F0880
/// @DnDDisabled : 1
/// @DnDArgument : "assignee" "hair_name"
/// @DnDArgument : "var" "hair_styles"
/// @DnDArgument : "index" "hair_style_in_question"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21ECD840
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "hair_name"
/// @DnDArgument : "var" "hair_text"


/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 375D42FC
/// @DnDDisabled : 1
/// @DnDArgument : "assignee" "the_color"
/// @DnDArgument : "var" "colors"
/// @DnDArgument : "index" "suit_color_in_question"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F64F53C
/// @DnDDisabled : 1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "select_state.CHARACTER"
/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2056ED32
/// @DnDDisabled : 1
/// @DnDParent : 6F64F53C
/// @DnDArgument : "expr" "char_in_question == 0"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 214B44E9
/// @DnDDisabled : 1
/// @DnDParent : 2056ED32
/// @DnDArgument : "expr" ""<- " + char_text "
/// @DnDArgument : "var" "char_text"

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73A133E2
/// @DnDDisabled : 1
/// @DnDParent : 6F64F53C
/// @DnDArgument : "expr" "char_in_question == ds_list_size(char_list)-1"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 01204D07
/// @DnDDisabled : 1
/// @DnDParent : 73A133E2
/// @DnDArgument : "expr" "char_text  + " ->""
/// @DnDArgument : "var" "char_text"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C7826D7
/// @DnDDisabled : 1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "select_state.HAIR"
/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 63A0EFD3
/// @DnDDisabled : 1
/// @DnDParent : 7C7826D7
/// @DnDArgument : "expr" "hair_style_in_question == 0"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F3DF11C
/// @DnDDisabled : 1
/// @DnDParent : 63A0EFD3
/// @DnDArgument : "expr" ""<- " + hair_text "
/// @DnDArgument : "var" "hair_text"

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 43BDFD25
/// @DnDDisabled : 1
/// @DnDParent : 7C7826D7
/// @DnDArgument : "expr" "hair_style_in_question == ds_list_size(hair_styles)-1"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D9604B7
/// @DnDDisabled : 1
/// @DnDParent : 43BDFD25
/// @DnDArgument : "expr" "hair_text  + " ->""
/// @DnDArgument : "var" "hair_text"

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 18F09DC7
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "char_text"


/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3EED47F6
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "hair_text"


/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1EF432C3
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "280"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "s_player"
/// @DnDArgument : "col" "the_color"
/// @DnDSaveInfo : "sprite" "s_player"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 652A6992
/// @DnDDisabled : 1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "select_state.COLOR"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 712D4759
/// @DnDDisabled : 1
/// @DnDParent : 652A6992
/// @DnDArgument : "var" "suit_color_in_question"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1A0769C4
/// @DnDDisabled : 1
/// @DnDParent : 712D4759
/// @DnDArgument : "x" "-40"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "260"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""<- ""

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3799A355
/// @DnDDisabled : 1
/// @DnDParent : 652A6992
/// @DnDArgument : "var" "suit_color_in_question"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ds_list_size(colors)-1"
/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5B39224C
/// @DnDDisabled : 1
/// @DnDParent : 3799A355
/// @DnDArgument : "x" "40"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "260"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "" ->""

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62BB7A3B
/// @DnDDisabled : 1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "select_state.MISSION"
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6D3995F3
/// @DnDDisabled : 1
/// @DnDParent : 62BB7A3B
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "400"
/// @DnDArgument : "caption" ""This is the part where you'd pick a different mission. But I didn’t make any different ones!\n And honestly? I don't know if I should until I've got multiplayer working! But maybe I should just\n make it so its possible to choose anyway, but god damn I just wanna get this update out. Fuck! This game-dev shit is hard! OH WELL!!! \n Guess I’ll just nut up and get to work anyway right? Thats what I do! Thats what I’ve always done! \n This is the first update I pushed without any help from Alex! SHIT MAN I FELT IT. Drawing takes sooooooo long bruh. I was always grateful for his help but \n now I’m sure of how much he was doing. FUUUUUUUUCK! Also I didn’t mean \n to make Zelinka look like such a bad bitch, I was actually ready to make her look like a weirdo, but I couldn't help it! I saw some alt asian chick with that haircut who was \nSO FREAKIN’ GORGEOUS!! It would have been a crime for my artistic sensibilities to not incorporate that\n into SOMETHING! Well its all good cause I did it anyway. I GUESS ILL JUST MAKE SOME OTHER CHARACTER LOOK LIKE A FUCKING WEIRDO! \nGUESS ILL HUNKER DOWN AND DRAW THEM FOR 8-12 HOURS TOO AAAAAAAAAAAAH\n ARE YOU READING THIS DRAGOS? 5 NIGGA??? THAT'S FUCKING INSANE! \nYOU’RE WEAPON IS SO FUCKING BUSTED NOW?! COULDN’T YOU HAVE BEEN NORMAL AND PICKED LIKE 3 OR SOMETHING?""