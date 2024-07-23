state = states.normal
snd = fmod_event_create_instance("event:/sfx/ending/towercollapse")
credits = [[-4, lang_get_value_newline("credits_game")], [-4, string_replace_all(lang_get_value_newline("credits_music"), "%", "\"")], [-4, string_replace_all(lang_get_value_newline("credits_sfx"), "%", "\"")], [-4, string_replace_all(lang_get_value_newline("credits_mort"), "%", "\"")], [-4, string_replace_all(lang_get_value_newline("credits_playtester1"), "%", "\"")], [-4, string_replace_all(lang_get_value_newline("credits_playtester2"), "%", "\"")], [-4, string_replace_all(lang_get_value_newline("credits_playtester3"), "%", "\"")], [-4, string_replace_all(lang_get_value_newline("credits_playtester4"), "%", "\"")], [0, -4], [1, -4], [2, -4], [3, -4], [4, -4], [5, -4], [6, -4], [7, -4], [9, -4], [10, -4], [11, -4], [12, -4], [-4, lang_get_value_newline("credits_fmod")]]
var i = 0
while (i < array_length(credits))
{
    if (credits[i][0] == 7)
    {
        if (!global.johnresurrection)
            credits[i][0] = 8
        break
    }
    else
        i++
}
if ((!obj_player1.ispeppino) || global.swapmode)
    credits = []
bgalpha = 3
credits_pos = 0
draw_set_font(lang_get_font("creditsfont"))
draw_set_halign(fa_left)
draw_set_valign(fa_top)
skiptext = scr_compile_icon_text(lang_get_value("menu_skip"))
showtext = false
fade = 0
whitefade = 0
image_speed = 0.35
puffbuffer = 0
introbuffer = 0
spawn_arr = [obj_smallletters, obj_factorycreateeffect, obj_johnghost, obj_ghosthazard, obj_loophallway, 4351, obj_pizzaheadstomp, obj_camera, obj_hurtstars, obj_gustavograbbable, obj_horseydown, obj_pizzafaceboss_p2OLD, obj_pizzice, 2864, obj_destroyablegolf, obj_spawner_goblinraid, 1693, 1223, obj_explosive_goblinraid, 2090, obj_bucketpickup, 4126, obj_hpeffect, obj_ghostcollectibles, obj_tuberight, 2531, 1263, obj_titlecard, 3184, obj_electricwall, obj_weenieOLD, obj_horseydown, obj_peppermanGIANTbowlingball, 1254, 2580, 4555, obj_ufoexterior, obj_buckettrigger, obj_pizzagoblinbomb]
var _noise = (!obj_player1.ispeppino)
if global.swapmode
    _noise = true
if _noise
    spawn_arr = [1486]
with (instance_create(0, 0, obj_introprop))
{
    sprite_index = spr_towerending_bg
    depth = -3
}
with (instance_create(0, 0, obj_introprop))
{
    sprite_index = spr_towerending
    depth = -7
}
if (!_noise)
{
    with (instance_create(0, 0, obj_introprop))
    {
        sprite_index = spr_towerending_bosses
        depth = -8
    }
    with (instance_create(145, 345, obj_introprop))
    {
        sprite_index = spr_towerending_mrstick
        depth = -8
    }
    with (instance_create(369, 409, obj_introprop))
    {
        sprite_index = spr_towerending_gustavo
        depth = -8
    }
    with (instance_create(484, 386, obj_introprop))
    {
        sprite_index = spr_towerending_brick
        depth = -8
    }
    with (instance_create(288, 408, obj_introprop))
    {
        sprite_index = spr_towerending_peppino
        depth = -9
    }
}
else
{
    with (instance_create(0, 0, obj_introprop))
    {
        sprite_index = spr_towerendingN
        depth = -8
    }
    with (instance_create(278, 384, obj_introprop))
    {
        sprite_index = spr_towerending_noise
        depth = -9
    }
    with (instance_create(490, 373, obj_introprop))
    {
        sprite_index = spr_towerending_noisey
        depth = -9
    }
    if global.swapmode
    {
        with (obj_player1)
        {
            if ispeppino
                swap_player(false)
        }
        with (instance_create(0, 0, obj_introprop))
        {
            sprite_index = spr_towerending_swapmode
            depth = -9
        }
    }
}
towerID = instance_create(468, 188, obj_introprop)
with (towerID)
{
    hitY = y - 100
    depth = -5
    sprite_index = spr_towerending_tower
}
with (obj_player)
    state = states.titlescreen
depth = -10
