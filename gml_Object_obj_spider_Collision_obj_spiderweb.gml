if ((!other.active) && active && other.id == webID)
{
    other.active = true
    active = false
    create_particle(other.x, other.y, (9 << 0), 0)
}
