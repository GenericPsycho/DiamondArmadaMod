pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER OF THE WEST"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(function() //gml_Script_anon_gml_Room_badland_4_Create_245_gml_Room_badland_4_Create
    {
        touchedtriggers = 0
    }
, function() //gml_Script_anon_gml_Room_badland_4_Create_286_gml_Room_badland_4_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //gml_Script_anon_gml_Room_badland_4_Create_401_gml_Room_badland_4_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //gml_Script_anon_gml_Room_badland_4_Create_484_gml_Room_badland_4_Create
    {
        if secret_check_trigger(2)
            secret_open_portal(2)
    }
)
}
