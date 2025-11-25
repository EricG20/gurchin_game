/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B2EC2F6
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 185C4A27
	/// @DnDParent : 7B2EC2F6
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1D004AD2
/// @DnDArgument : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5F73EA2D
/// @DnDArgument : "expr" "state"
var l5F73EA2D_0 = state;
switch(l5F73EA2D_0)
{
	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 125E56D3
	/// @DnDParent : 5F73EA2D
	default:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 073FE0B3
		/// @DnDInput : 2
		/// @DnDParent : 125E56D3
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "var_1" "image_index"
		cooldown += -1;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 02BA379C
		/// @DnDParent : 125E56D3
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2700B1FA
		/// @DnDParent : 125E56D3
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AD19438
		/// @DnDParent : 125E56D3
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57EA1ABC
			/// @DnDParent : 1AD19438
			/// @DnDArgument : "var" "distance_to_object(o_player)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "500"
			if(distance_to_object(o_player) < 500)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1265BAFB
				/// @DnDInput : 2
				/// @DnDParent : 57EA1ABC
				/// @DnDArgument : "expr" "es.CHARGE"
				/// @DnDArgument : "expr_1" "-(sign(x-o_player.x))"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "facing"
				state = es.CHARGE;
				facing = -(sign(x-o_player.x));
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4F910ADA
	/// @DnDParent : 5F73EA2D
	/// @DnDArgument : "const" "es.CHARGE"
	case es.CHARGE:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 291BDF2F
		/// @DnDInput : 2
		/// @DnDParent : 4F910ADA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "charge_hold"
		/// @DnDArgument : "var_1" "image_index"
		charge_hold += 1;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7ED60810
		/// @DnDParent : 4F910ADA
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 10E2B838
		/// @DnDParent : 4F910ADA
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 081D5FE6
		/// @DnDParent : 4F910ADA
		/// @DnDArgument : "var" "charge_hold"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "35"
		if(charge_hold >= 35)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D5EDC0F
			/// @DnDInput : 2
			/// @DnDParent : 081D5FE6
			/// @DnDArgument : "expr" "es.ATTACK"
			/// @DnDArgument : "expr_1" "60"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "charge_hold"
			state = es.ATTACK;
			charge_hold = 60;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 25ACBB17
	/// @DnDParent : 5F73EA2D
	/// @DnDArgument : "const" "es.ATTACK"
	case es.ATTACK:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5853F586
		/// @DnDParent : 25ACBB17
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "image_index"
		image_index = 2;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3A6FDE17
		/// @DnDParent : 25ACBB17
		/// @DnDArgument : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5CC1A9F3
		/// @DnDParent : 25ACBB17
		/// @DnDArgument : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A83F422
		/// @DnDParent : 25ACBB17
		/// @DnDArgument : "var" "charge_hold"
		/// @DnDArgument : "op" "2"
		if(charge_hold > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 393ECBC4
			/// @DnDInput : 2
			/// @DnDParent : 5A83F422
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "facing*9"
			/// @DnDArgument : "var" "charge_hold"
			/// @DnDArgument : "var_1" "hsp"
			charge_hold += -1;
			hsp = facing*9;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E28B89B
			/// @DnDParent : 5A83F422
			/// @DnDArgument : "var" "charge_hold mod 6"
			if(charge_hold mod 6 == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 20722E3B
				/// @DnDParent : 7E28B89B
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "doost"
				/// @DnDArgument : "objectid" "e_dust"
				/// @DnDArgument : "layer" ""Effects""
				doost = instance_create_layer(x + 0, y + 0, "Effects", e_dust);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 191610B0
				/// @DnDParent : 7E28B89B
				/// @DnDArgument : "expr" "facing"
				/// @DnDArgument : "var" "doost.facing"
				doost.facing = facing;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 12B57413
		/// @DnDParent : 25ACBB17
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 756B5507
			/// @DnDInput : 2
			/// @DnDParent : 12B57413
			/// @DnDArgument : "expr" "es.IDLE"
			/// @DnDArgument : "expr_1" "120"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "cooldown"
			state = es.IDLE;
			cooldown = 120;
		}
		break;
}