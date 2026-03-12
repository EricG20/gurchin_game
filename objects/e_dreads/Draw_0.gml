/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08F291DD
/// @DnDArgument : "code" "if (VISystemExists(system)) {$(13_10)	// Draw all objects of the system$(13_10)	system.Draw(false);$(13_10)	if (keyboard_check(ord("C"))) system.Draw(true);$(13_10)}"
if (VISystemExists(system)) {
	// Draw all objects of the system
	system.Draw(false);
	if (keyboard_check(ord("C"))) system.Draw(true);
}