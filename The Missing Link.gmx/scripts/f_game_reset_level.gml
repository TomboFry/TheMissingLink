/// f_game_reset_level();

with (o_player_start) {
    x = xstart;
    y = ystart;
}

with (o_player) {
    is_dead = false;
    hp = 100;
    can_play = true;
    camera.dead_alpha = 0;
    x = o_player_start.x;
    y = o_player_start.y;
}

