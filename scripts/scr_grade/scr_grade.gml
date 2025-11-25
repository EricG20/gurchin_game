/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 450FC276
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_grade"
function scr_grade() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FE8B748
	/// @DnDParent : 450FC276
	/// @DnDArgument : "expr" "gr.DUNNO"
	/// @DnDArgument : "var" "grade"
	grade = gr.DUNNO;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 129CE575
	/// @DnDParent : 450FC276
	/// @DnDArgument : "expr" "room"
	var l129CE575_0 = room;
	switch(l129CE575_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4C115D88
		/// @DnDParent : 129CE575
		/// @DnDArgument : "const" "lvl_0"
		case lvl_0:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5987F425
			/// @DnDParent : 4C115D88
			/// @DnDArgument : "expr" "gr.C"
			/// @DnDArgument : "var" "grade"
			grade = gr.C;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3060AD3C
			/// @DnDParent : 4C115D88
			/// @DnDArgument : "var" "scor"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "600"
			if(scor >= 600)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 656A89AB
				/// @DnDParent : 3060AD3C
				/// @DnDArgument : "expr" "gr.B"
				/// @DnDArgument : "var" "grade"
				grade = gr.B;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3A0FF840
				/// @DnDParent : 3060AD3C
				/// @DnDArgument : "var" "scor"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "1000"
				if(scor >= 1000)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7B71BB9B
					/// @DnDParent : 3A0FF840
					/// @DnDArgument : "expr" "gr.A"
					/// @DnDArgument : "var" "grade"
					grade = gr.A;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5051400B
					/// @DnDParent : 3A0FF840
					/// @DnDArgument : "var" "scor"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "2100"
					if(scor >= 2100)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 06F06420
						/// @DnDParent : 5051400B
						/// @DnDArgument : "expr" "gr.S"
						/// @DnDArgument : "var" "grade"
						grade = gr.S;
					}
				}
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 03BEBFAA
		/// @DnDParent : 129CE575
		/// @DnDArgument : "const" "boss_0"
		case boss_0:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5637DE15
			/// @DnDParent : 03BEBFAA
			/// @DnDArgument : "expr" "gr.C"
			/// @DnDArgument : "var" "grade"
			grade = gr.C;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A07F7B0
			/// @DnDParent : 03BEBFAA
			/// @DnDArgument : "var" "scor"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "-250"
			if(scor >= -250)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0F9FB12C
				/// @DnDParent : 7A07F7B0
				/// @DnDArgument : "expr" "gr.C"
				/// @DnDArgument : "var" "grade"
				grade = gr.C;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1630D883
				/// @DnDParent : 7A07F7B0
				/// @DnDArgument : "var" "scor"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "-200"
				if(scor >= -200)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 41AFB03A
					/// @DnDParent : 1630D883
					/// @DnDArgument : "expr" "gr.B"
					/// @DnDArgument : "var" "grade"
					grade = gr.B;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0E9DBA14
					/// @DnDParent : 1630D883
					/// @DnDArgument : "var" "scor"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "-100"
					if(scor >= -100)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2A136449
						/// @DnDParent : 0E9DBA14
						/// @DnDArgument : "expr" "gr.A"
						/// @DnDArgument : "var" "grade"
						grade = gr.A;
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 31B246B8
						/// @DnDParent : 0E9DBA14
						/// @DnDArgument : "var" "scor"
						/// @DnDArgument : "op" "4"
						if(scor >= 0)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 56C15BF5
							/// @DnDParent : 31B246B8
							/// @DnDArgument : "expr" "gr.S"
							/// @DnDArgument : "var" "grade"
							grade = gr.S;
						}
					}
				}
			}
			break;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 3B6DC99D
	/// @DnDParent : 450FC276
	/// @DnDArgument : "value" "grade"
	return grade;
}