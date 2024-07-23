if instance_exists(obj_noiseboss)
{
    var dir = point_direction(x, y, obj_noiseboss.x, obj_noiseboss.y)
    hsp = lengthdir_x(16, dir)
    vsp = lengthdir_y(16, dir)
    state = states.normal
}
else
    dir = point_direction(x, y, obj_player.x, obj_player.y)
hsp = lengthdir_x(16, dir)
vsp = lengthdir_y(16, dir)
state = states.normal
