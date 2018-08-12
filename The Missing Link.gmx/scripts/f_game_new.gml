/// f_game_new();

// Reset all necessary variables
for (var i = 0; i < array_height_2d(o_main.level); i++) {
    level[i, Level.Unlocked] = false;
    level[i, Level.Completed] = false;
}

level[0, Level.Unlocked] = true;

intro_dialogue_done = false;

if (instance_exists(o_player)) {
    with (o_player) instance_destroy();
}

