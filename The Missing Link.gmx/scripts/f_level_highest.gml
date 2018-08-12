/// f_level_highest();

// Returns the highest level available for the user to start
var count = array_height_2d(o_main.level);
for (var i = 0; i < count; i++) {
    if (o_main.level[i, Level.Unlocked] == false) return i - 1;
}

return count - 1;
