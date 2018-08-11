/// f_inventory_index_colrow(inv, col, row);

// Returns a slot index based on the current row and column

var inv = argument0;
var col = argument1;
var row = argument2;

return col + (row * inv.cols);
