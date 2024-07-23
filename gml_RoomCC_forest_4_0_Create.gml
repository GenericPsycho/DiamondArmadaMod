if ((!global.pizzadelivery) && global.pizzasdelivered < 5 && global.panic == false)
{
    if (!global.failcutscene)
    {
        if (global.pizzasdelivered <= 0)
            scene_info = [[gml_Script_cutscene_set_sprite, 1107, 3215, 0.35, -1], [gml_Script_cutscene_gustavo_start], [gml_Script_cutscene_wait, 30], [gml_Script_cutscene_set_sprite, 1107, 3206, 0.35, -1], [gml_Script_cutscene_wait, 10], [gml_Script_cutscene_move_player, 587, (obj_gustavo.x - 48), 6, 16], [gml_Script_cutscene_set_sprite, 587, 3192, 0.35, 1], [gml_Script_cutscene_set_sprite, 1107, 3207, 0.35, -1], [gml_Script_cutscene_gustavo_end]]
        else
            scene_info = [[gml_Script_cutscene_set_sprite, 1107, 3206, 0.35, -1]]
    }
    else
        scene_info = [[gml_Script_cutscene_gustavofail_start], [gml_Script_cutscene_wait, 20], [gml_Script_cutscene_set_sprite, 1107, 3210, 0.35, -1], [gml_Script_cutscene_waitfor_sprite, 1107], [gml_Script_cutscene_set_sprite, 1107, 3211, 0.35, -1], [gml_Script_cutscene_wait, 50], [gml_Script_cutscene_set_sprite, 1107, 3212, 0.35, -1], [gml_Script_cutscene_set_sprite, 587, 3196, 0.35, 1], [gml_Script_cutscene_waitfor_sprite, 1107], [gml_Script_cutscene_set_sprite, 1107, 3213, 0.35, -1], [gml_Script_cutscene_set_hsp, 1107, -12], [gml_Script_cutscene_set_sprite, 587, 3202, 0.35, 1], [gml_Script_cutscene_waitfor_sprite, 587], [gml_Script_cutscene_set_sprite, 587, 3203, 0.35, 1], [gml_Script_cutscene_check_collision, 1107, 587], [gml_Script_cutscene_set_hsp, 1107, 0], [gml_Script_cutscene_gustavofail_end, 100], [gml_Script_cutscene_move_actor, 1107, obj_gustavo.xstart, obj_gustavo.ystart, 0.05], [gml_Script_cutscene_set_sprite, 1107, 3206, 0.35, -1]]
}
else
    scene_info = [[gml_Script_cutscene_wait, 2]]
