if (room == rm_editor)
    return;
if (global.timeattack == true)
    instance_destroy()
if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
if (global.snickchallenge == true)
    instance_destroy()
