if (global.levelcomplete && (!global.streetcutscene))
{
    currentroom = room
    scene_info = [[function() //gml_Script_anon_gml_RoomCC_hub_noisettehall_3_Create_99_gml_RoomCC_hub_noisettehall_3_Create
    {
        with (obj_player)
        {
            state = states.normal
            x = backtohubstartx
            y = backtohubstarty
        }
        global.levelcomplete = false
        global.streetcutscene = true
        global.levelcompletename = -4
        quick_ini_write_real(get_savefile_ini(), "cutscene", "street", true)
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
    scene_info = [[gml_Script_cutscene_wait, 15]]
