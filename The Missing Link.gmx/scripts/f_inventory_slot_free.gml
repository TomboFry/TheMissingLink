/// f_inventory_slot_free(inv, is_weapon);

// Returns the index of the next free slot
// Returns -1 if no slots are available.

var inv = argument0;
var is_weapon = argument1;

var free_slot = (1 - is_weapon) * inv.cols;

for (var j = (1 - is_weapon); j < inv.rows; j++) {
    for (var i = 0; i < inv.cols; i++) {
        show_debug_message(string(i) + ',' + string(j));
        if (inv.inventory[# i, j] == noone) return free_slot;
        free_slot++;
    }
}

if (free_slot == f_inventory_size_total(inv)) return -1;
