MAX_TOTEMCHEESE = 2
active = false
trigger = 1
cheeseID = array_create(MAX_TOTEMCHEESE, -4)
machslidebuffer = 0
machslidecount = 0
machslidecounted = false
depth = -5
snd = fmod_event_create_instance("event:/sfx/enemies/tribaldance")
fmod_event_instance_set_3d_attributes(snd, x, y)
