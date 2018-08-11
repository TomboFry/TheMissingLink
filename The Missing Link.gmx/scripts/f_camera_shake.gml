/// f_camera_shake(player, amount);

var player = argument0;
var amount = argument1;

var camera = player.camera;
camera.shake = clamp(camera.shake + amount, 0, 2);
