function scr_initinput(argument0) //gml_Script_scr_initinput
{
    if (argument0 == undefined)
        argument0 = true
    tdp_input_init()
    global.spr_gamepadbuttons = spr_gamepadbuttons_style1
    global.spr_joystick = spr_joystick_style1
    if argument0
        ini_open("saveData.ini")
    tdp_input_add(new tdp_input_key("menu_reset_binds", [new tdp_input_action((0 << 0), 112)]))
    tdp_input_add(new tdp_input_key("menu_reset_bindsC", [new tdp_input_action((1 << 0), 32777)]))
    tdp_input_ini_read("menu_up", [tdp_action((0 << 0), 38)])
    tdp_input_ini_read("menu_down", [tdp_action((0 << 0), 40)])
    tdp_input_ini_read("menu_left", [tdp_action((0 << 0), 37)])
    tdp_input_ini_read("menu_right", [tdp_action((0 << 0), 39)])
    tdp_input_ini_read("menu_start", [tdp_action((0 << 0), 27)])
    tdp_input_ini_read("menu_select", [tdp_action((0 << 0), 90), tdp_action((0 << 0), 32)])
    tdp_input_ini_read("menu_back", [tdp_action((0 << 0), 88), tdp_action((0 << 0), 27)])
    tdp_input_ini_read("menu_delete", [tdp_action((0 << 0), 67)])
    tdp_input_ini_read("menu_quit", [tdp_action((0 << 0), 88)])
    var _select = 32769
    var _back = 32770
    tdp_input_ini_read("menu_upC", [tdp_action((2 << 0), 32786, -1), tdp_action((1 << 0), 32781)])
    tdp_input_ini_read("menu_downC", [tdp_action((2 << 0), 32786, 1), tdp_action((1 << 0), 32782)])
    tdp_input_ini_read("menu_leftC", [tdp_action((2 << 0), 32785, -1), tdp_action((1 << 0), 32783)])
    tdp_input_ini_read("menu_rightC", [tdp_action((2 << 0), 32785, 1), tdp_action((1 << 0), 32784)])
    tdp_input_ini_read("menu_startC", [tdp_action((1 << 0), 32778)])
    tdp_input_ini_read("menu_selectC", [tdp_action((1 << 0), _select)])
    tdp_input_ini_read("menu_backC", [tdp_action((1 << 0), _back)])
    tdp_input_ini_read("menu_deleteC", [tdp_action((1 << 0), 32772)])
    tdp_input_ini_read("menu_quitC", [tdp_action((1 << 0), 32771)])
    tdp_input_ini_read("player_up", [tdp_action((0 << 0), 38)])
    tdp_input_ini_read("player_right", [tdp_action((0 << 0), 39)])
    tdp_input_ini_read("player_left", [tdp_action((0 << 0), 37)])
    tdp_input_ini_read("player_down", [tdp_action((0 << 0), 40)])
    tdp_input_ini_read("player_jump", [tdp_action((0 << 0), 90)])
    tdp_input_ini_read("player_slap", [tdp_action((0 << 0), 88)])
    tdp_input_ini_read("player_taunt", [tdp_action((0 << 0), 67)])
    tdp_input_ini_read("player_shoot", [tdp_action((0 << 0), 65)])
    tdp_input_ini_read("player_attack", [tdp_action((0 << 0), 16)])
    tdp_input_ini_read("player_groundpound", [])
    tdp_input_ini_read("player_superjump", [])
    tdp_input_ini_read("player_upC", [tdp_action((2 << 0), 32786, -1), tdp_action((1 << 0), 32781)])
    tdp_input_ini_read("player_downC", [tdp_action((2 << 0), 32786, 1), tdp_action((1 << 0), 32782)])
    tdp_input_ini_read("player_leftC", [tdp_action((2 << 0), 32785, -1), tdp_action((1 << 0), 32783)])
    tdp_input_ini_read("player_rightC", [tdp_action((2 << 0), 32785, 1), tdp_action((1 << 0), 32784)])
    tdp_input_ini_read("player_jumpC", [tdp_action((1 << 0), 32769)])
    tdp_input_ini_read("player_slapC", [tdp_action((1 << 0), 32771)])
    tdp_input_ini_read("player_tauntC", [tdp_action((1 << 0), 32772)])
    tdp_input_ini_read("player_shootC", [tdp_action((1 << 0), 32770)])
    tdp_input_ini_read("player_attackC", [tdp_action((1 << 0), 32776), tdp_action((1 << 0), 32774)])
    tdp_input_ini_read("player_groundpoundC", [])
    tdp_input_ini_read("player_superjumpC", [])
    global.key_up = ini_read_string("ControlsKeys", "up", 38)
    global.key_right = ini_read_string("ControlsKeys", "right", 39)
    global.key_left = ini_read_string("ControlsKeys", "left", 37)
    global.key_down = ini_read_string("ControlsKeys", "down", 40)
    global.key_jump = ini_read_string("ControlsKeys", "jump", 90)
    global.key_slap = ini_read_string("ControlsKeys", "slap", 88)
    global.key_taunt = ini_read_string("ControlsKeys", "taunt", 67)
    global.key_shoot = ini_read_string("ControlsKeys", "shoot", 65)
    global.key_attack = ini_read_string("ControlsKeys", "attack", 16)
    global.key_start = ini_read_string("ControlsKeys", "start", 27)
    global.key_chainsaw = ini_read_string("ControlsKeys", "chainsaw", 86)
    global.key_upC = ini_read_string("ControllerButton", "up", 32781)
    global.key_rightC = ini_read_string("ControllerButton", "right", 32784)
    global.key_leftC = ini_read_string("ControllerButton", "left", 32783)
    global.key_downC = ini_read_string("ControllerButton", "down", 32782)
    global.key_jumpC = ini_read_string("ControllerButton", "jump", 32769)
    global.key_slapC = ini_read_string("ControllerButton", "slap", 32771)
    global.key_tauntC = ini_read_string("ControllerButton", "taunt", 32772)
    global.key_shootC = ini_read_string("ControllerButton", "shoot", 32770)
    global.key_attackC = ini_read_string("ControllerButton", "attack", 32776)
    global.key_startC = ini_read_string("ControllerButton", "start", 32778)
    global.key_chainsawC = ini_read_string("ControllerButton", "chainsaw", 32773)
    global.key_superjumpC = ini_read_string("ControllerButton", "superjump", -4)
    global.key_groundpoundC = ini_read_string("ControllerButton", "groundpound", -4)
    var dz = 0.4
    var dzv = 0.1
    var dzh = 0.1
    var dzp = 0.15
    var dzs = 0.85
    var dzc = 0.65
    global.input_controller_deadzone = ini_read_real("InputConfig", "deadzone", dz)
    global.input_controller_deadzone_vertical = ini_read_real("InputConfig", "deadzone_vert", dzv)
    global.input_controller_deadzone_horizontal = ini_read_real("InputConfig", "deadzone_horiz", dzh)
    global.input_controller_deadzone_press = ini_read_real("InputConfig", "deadzonepress", dzp)
    global.gamepad_deadzone_superjump = ini_read_real("InputConfig", "deadzonesuperjump", dzs)
    global.gamepad_deadzone_crouch = ini_read_real("InputConfig", "deadzonecrouch", dzc)
    global.gamepad_superjump = ini_read_real("InputConfig", "superjump", 1)
    global.gamepad_groundpound = ini_read_real("InputConfig", "groundpound", 1)
    global.keyboard_superjump = ini_read_real("InputConfig", "kb_superjump", 1)
    global.keyboard_groundpound = ini_read_real("InputConfig", "kb_groundpound", 1)
    if argument0
        ini_close()
}

