/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F7E9605
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDDisabled : 1
/// @DnDArgument : "funcName" "network_scripts"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E6B2A1
/// @DnDArgument : "code" "function send_spawn_packet(_socket, _player_id) {$(13_10)    var buff = buffer_create(8, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, 1); // packet type: 1 = spawn player$(13_10)    buffer_write(buff, buffer_u32, _player_id);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_player_appearance(_socket, _char, _suit, _hair) {$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, 2);      // packet type: 2 = appearance$(13_10)    buffer_write(buff, buffer_string, _char);$(13_10)    buffer_write(buff, buffer_u32, _suit);$(13_10)    buffer_write(buff, buffer_string, _hair);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_movement_packet(_socket, _x, _y) {$(13_10)	$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_MOVEMENT);$(13_10)    buffer_write(buff, buffer_f32, _x);$(13_10)    buffer_write(buff, buffer_f32, _y);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_input_packet(_socket, inputs){$(13_10)	var buff = buffer_create(256, buffer_grow, 1);$(13_10)$(13_10)	buffer_write(buff, buffer_u8, PACKET_INPUT);$(13_10)$(13_10)	var keys = global.input_keys;$(13_10)$(13_10)	for (var i = 0; i < array_length(keys); i++) {$(13_10)		var key = keys[i];$(13_10)		buffer_write(buff, buffer_u8, inputs[$ key]);$(13_10)	}$(13_10)$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function send_velocity_packet(_socket, _hsp, _vsp){$(13_10)		$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_VELOCITY);$(13_10)    buffer_write(buff, buffer_f32, _hsp);$(13_10)    buffer_write(buff, buffer_f32, _vsp);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_aim_packet(_socket, _aimx, _aimy, _nav){$(13_10)		$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_AIM);$(13_10)    buffer_write(buff, buffer_f32, _aimx);$(13_10)    buffer_write(buff, buffer_f32, _aimy);$(13_10)	buffer_write(buff, buffer_f32, _nav);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_bullet_packet(_socket, _projectile){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_BULLET);$(13_10)    buffer_write(buff, buffer_u32, _projectile.bullet_number);$(13_10)    buffer_write(buff, buffer_f32, _projectile.hsp);$(13_10)	buffer_write(buff, buffer_f32, _projectile.vsp);$(13_10)	buffer_write(buff, buffer_bool, _projectile.homing); $(13_10)	buffer_write(buff, buffer_f32, _projectile.x);$(13_10)	buffer_write(buff, buffer_f32, _projectile.y);$(13_10)	buffer_write(buff, buffer_u16, _projectile.object_index);$(13_10)	buffer_write(buff, buffer_u16, _projectile.sprite_index);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function fix_ammo_count(_socket){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_AMMO);$(13_10)	buffer_write(buff, buffer_f32, mygurn.ammo);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function they_pressed_the_swap_button(_socket){$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_SWAP);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_enemyspawn_packet(_socket, _enemy){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_ENEMYSPAWN);$(13_10)	buffer_write(buff, buffer_f32, _enemy.x);$(13_10)	buffer_write(buff, buffer_f32, _enemy.y);$(13_10)	buffer_write(buff, buffer_u16, _enemy.object_index);$(13_10)	buffer_write(buff, buffer_f32, _enemy.hp);$(13_10)	buffer_write(buff, buffer_u32, _enemy.enemy_num);$(13_10)	buffer_write(buff, buffer_u8, _enemy.state);$(13_10)	buffer_write(buff, buffer_f32, _enemy.cooldown);$(13_10)	buffer_write(buff, buffer_s8, _enemy.facing);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_enemyfix_packet(_socket, _enemy){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_ENEMY_CORRECTION);$(13_10)	buffer_write(buff, buffer_f32, _enemy.x);$(13_10)	buffer_write(buff, buffer_f32, _enemy.y);$(13_10)	buffer_write(buff, buffer_f32, _enemy.hsp);$(13_10)	buffer_write(buff, buffer_f32, _enemy.vsp);$(13_10)	buffer_write(buff, buffer_u16, _enemy.object_index);$(13_10)	buffer_write(buff, buffer_f32, _enemy.hp);$(13_10)	buffer_write(buff, buffer_u32, _enemy.enemy_num);$(13_10)	buffer_write(buff, buffer_u8, _enemy.state);$(13_10)	buffer_write(buff, buffer_f32, _enemy.cooldown);$(13_10)	buffer_write(buff, buffer_s8, _enemy.facing);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_game_packet(_socket){$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_GAME_LOGIC);$(13_10)	buffer_write(buff, buffer_f32, pylon_incr);$(13_10)	buffer_write(buff, buffer_u32, pylon_enemies);$(13_10)	buffer_write(buff, buffer_u32, pylon_enemy_count);$(13_10)	buffer_write(buff, buffer_bool, in_wave);$(13_10)	buffer_write(buff, buffer_f32, combo_bar);$(13_10)	buffer_write(buff, buffer_u32, combo_num);$(13_10)	buffer_write(buff, buffer_f32, flub);$(13_10)	buffer_write(buff, buffer_f64, scor);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_flub_packet(_socket, _flub){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_FLUB);$(13_10)	buffer_write(buff, buffer_f32, _flub.flubbington);$(13_10)	buffer_write(buff, buffer_f32, _flub.hsp);$(13_10)	buffer_write(buff, buffer_f32, _flub.vsp);$(13_10)	buffer_write(buff, buffer_bool, _flub.will_combine);$(13_10)	buffer_write(buff, buffer_f32, _flub.x);$(13_10)	buffer_write(buff, buffer_f32, _flub.y);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_pickup_packet(_socket, _pickup){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_WEAPON_DROP);$(13_10)	buffer_write(buff, buffer_f32, _pickup.weapon_index);$(13_10)	buffer_write(buff, buffer_f32, _pickup.x);$(13_10)	buffer_write(buff, buffer_f32, _pickup.y);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_buff_packet(_socket){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_BUFF);$(13_10)	buffer_write(buff, buffer_string, buff_to_be);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}"
function send_spawn_packet(_socket, _player_id) {
    var buff = buffer_create(8, buffer_grow, 1);

    buffer_write(buff, buffer_u8, 1); // packet type: 1 = spawn player
    buffer_write(buff, buffer_u32, _player_id);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_player_appearance(_socket, _char, _suit, _hair) {
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, 2);      // packet type: 2 = appearance
    buffer_write(buff, buffer_string, _char);
    buffer_write(buff, buffer_u32, _suit);
    buffer_write(buff, buffer_string, _hair);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_movement_packet(_socket, _x, _y) {
	
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_MOVEMENT);
    buffer_write(buff, buffer_f32, _x);
    buffer_write(buff, buffer_f32, _y);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_input_packet(_socket, inputs){
	var buff = buffer_create(256, buffer_grow, 1);

	buffer_write(buff, buffer_u8, PACKET_INPUT);

	var keys = global.input_keys;

	for (var i = 0; i < array_length(keys); i++) {
		var key = keys[i];
		buffer_write(buff, buffer_u8, inputs[$ key]);
	}

	network_send_packet(_socket, buff, buffer_tell(buff));
	buffer_delete(buff);

}

function send_velocity_packet(_socket, _hsp, _vsp){
		
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_VELOCITY);
    buffer_write(buff, buffer_f32, _hsp);
    buffer_write(buff, buffer_f32, _vsp);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_aim_packet(_socket, _aimx, _aimy, _nav){
		
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_AIM);
    buffer_write(buff, buffer_f32, _aimx);
    buffer_write(buff, buffer_f32, _aimy);
	buffer_write(buff, buffer_f32, _nav);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_bullet_packet(_socket, _projectile){
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_BULLET);
    buffer_write(buff, buffer_u32, _projectile.bullet_number);
    buffer_write(buff, buffer_f32, _projectile.hsp);
	buffer_write(buff, buffer_f32, _projectile.vsp);
	buffer_write(buff, buffer_bool, _projectile.homing); 
	buffer_write(buff, buffer_f32, _projectile.x);
	buffer_write(buff, buffer_f32, _projectile.y);
	buffer_write(buff, buffer_u16, _projectile.object_index);
	buffer_write(buff, buffer_u16, _projectile.sprite_index);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function fix_ammo_count(_socket){
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_AMMO);
	buffer_write(buff, buffer_f32, mygurn.ammo);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function they_pressed_the_swap_button(_socket){
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_SWAP);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_enemyspawn_packet(_socket, _enemy){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_ENEMYSPAWN);
	buffer_write(buff, buffer_f32, _enemy.x);
	buffer_write(buff, buffer_f32, _enemy.y);
	buffer_write(buff, buffer_u16, _enemy.object_index);
	buffer_write(buff, buffer_f32, _enemy.hp);
	buffer_write(buff, buffer_u32, _enemy.enemy_num);
	buffer_write(buff, buffer_u8, _enemy.state);
	buffer_write(buff, buffer_f32, _enemy.cooldown);
	buffer_write(buff, buffer_s8, _enemy.facing);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_enemyfix_packet(_socket, _enemy){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_ENEMY_CORRECTION);
	buffer_write(buff, buffer_f32, _enemy.x);
	buffer_write(buff, buffer_f32, _enemy.y);
	buffer_write(buff, buffer_f32, _enemy.hsp);
	buffer_write(buff, buffer_f32, _enemy.vsp);
	buffer_write(buff, buffer_u16, _enemy.object_index);
	buffer_write(buff, buffer_f32, _enemy.hp);
	buffer_write(buff, buffer_u32, _enemy.enemy_num);
	buffer_write(buff, buffer_u8, _enemy.state);
	buffer_write(buff, buffer_f32, _enemy.cooldown);
	buffer_write(buff, buffer_s8, _enemy.facing);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_game_packet(_socket){
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_GAME_LOGIC);
	buffer_write(buff, buffer_f32, pylon_incr);
	buffer_write(buff, buffer_u32, pylon_enemies);
	buffer_write(buff, buffer_u32, pylon_enemy_count);
	buffer_write(buff, buffer_bool, in_wave);
	buffer_write(buff, buffer_f32, combo_bar);
	buffer_write(buff, buffer_u32, combo_num);
	buffer_write(buff, buffer_f32, flub);
	buffer_write(buff, buffer_f64, scor);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_flub_packet(_socket, _flub){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_FLUB);
	buffer_write(buff, buffer_f32, _flub.flubbington);
	buffer_write(buff, buffer_f32, _flub.hsp);
	buffer_write(buff, buffer_f32, _flub.vsp);
	buffer_write(buff, buffer_bool, _flub.will_combine);
	buffer_write(buff, buffer_f32, _flub.x);
	buffer_write(buff, buffer_f32, _flub.y);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_pickup_packet(_socket, _pickup){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_WEAPON_DROP);
	buffer_write(buff, buffer_f32, _pickup.weapon_index);
	buffer_write(buff, buffer_f32, _pickup.x);
	buffer_write(buff, buffer_f32, _pickup.y);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_buff_packet(_socket){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_BUFF);
	buffer_write(buff, buffer_string, buff_to_be);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}