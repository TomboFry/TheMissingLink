/// f_inventory_slot_free(inv);

// Returns the index of the next free slot
// Returns -1 if no slots are available.

var inv = argument0;

var free_slot = 0;

for (var j = 0; j < inv.rows; j++) {
    for (var i = 0; i < inv.cols; i++) {
        if (inv.inventory[# j, i] == noone) return free_slot;
        free_slot++;
    }
}

if (free_slot == f_inventory_size_total(inv)) return -1;
