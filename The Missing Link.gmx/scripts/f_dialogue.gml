/// f_dialogue(type, text, ?character, ?options);

// Queues a dialogue box up

var tmp = ds_map_create();
tmp[? DialogueItem.Type] = argument[0];
tmp[? DialogueItem.Text] = argument[1];

if (argument_count >= 3) {
    tmp[? DialogueItem.Character] = argument[2];
} else {
    tmp[? DialogueItem.Character] = -1;
}

if (argument_count >= 4 && argument[0] == DialogueType.Question) {
    tmp[? DialogueItem.Options] = argument[3];
}

ds_queue_enqueue(o_main.dialogue, tmp);

