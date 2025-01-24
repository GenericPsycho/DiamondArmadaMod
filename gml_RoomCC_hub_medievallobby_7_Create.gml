if global.levelcomplete
{
    with (obj_player)
    {
        x = backtohubstartx
        y = backtohubstarty
        image_blend = c_white
    }
}
if (global.levelcompletename != "CHATEAU")
{
    if (global.levelcomplete && (!global.medievalcutscene))
    {
        global.levelcomplete = false
        with (obj_player1)
        {
            other.backx = backtohubstartx
            other.backy = backtohubstarty
        }
        scene_info = [[gml_Script_cutscene_medieval_start], [gml_Script_cutscene_waitfor_sprite, 602], [gml_Script_cutscene_medieval_start2], [gml_Script_cutscene_set_player_visible, false], [gml_Script_cutscene_player_float, true], [gml_Script_cutscene_player_pos_lerp, 1173, 997, 0.03], [gml_Script_cutscene_wait, 40], [gml_Script_cutscene_medieval_middle], [gml_Script_cutscene_player_pos_lerp, backx, backy, 0.03], [gml_Script_cutscene_set_player_pos, backx, backy], [gml_Script_cutscene_set_player_visible, true], [gml_Script_cutscene_player_float, false], [gml_Script_cutscene_medieval_end], [gml_Script_cutscene_save_game]]
    }
    else if global.levelcomplete
    {
        global.levelcomplete = false
        scene_info = [[gml_Script_cutscene_save_game]]
    }
    else
        scene_info = [[gml_Script_cutscene_wait, 20]]
}
else if (global.levelcomplete && (!global.chateaucutscene))
{
    global.levelcomplete = false
    global.chateaucutscene = true
    currentroom = room
    scene_info = [[gml_Script_cutscene_entrance_start], [gml_Script_cutscene_waitfor_sprite, 602], [gml_Script_cutscene_player_idleanim], [gml_Script_cutscene_change_room, 638], [gml_Script_cutscene_set_player_visible, false], [gml_Script_cutscene_set_player_pos, 1888, 369], [gml_Script_cutscene_wait, 100], [gml_Script_cutscene_change_room, currentroom], [gml_Script_cutscene_set_player_visible, true], [function() //gml_Script_anon_gml_RoomCC_hub_medievallobby_7_Create_1660_gml_RoomCC_hub_medievallobby_7_Create
    {
        with (obj_player)
        {
            state = states.normal
            x = backtohubstartx
            y = backtohubstarty
        }
        global.levelcomplete = false
        global.chateaucutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "chateau", true)
        cutscene_end_action()
    }
], [gml_Script_cutscene_save_game]]
}
else if global.levelcomplete
{
    global.levelcomplete = false
    scene_info = [[gml_Script_cutscene_save_game]]
}
else
    scene_info = [[gml_Script_cutscene_wait, 20]]
