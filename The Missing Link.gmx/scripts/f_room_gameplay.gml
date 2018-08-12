/// f_room_gameplay()

// For those times when you need to shut your player up.

var count = array_height_2d(o_main.level);

if (room == r_powercore) return true;

for (var i = 0; i < count; i++) {
    var level_room = o_main.level[i, Level.Room];
    if (room == level_room) return true;
}

return false;

