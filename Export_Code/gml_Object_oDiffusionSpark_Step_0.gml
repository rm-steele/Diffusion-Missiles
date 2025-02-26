lifetime--
if (lifetime <= 0)
    instance_destroy()
rot += (0.125 + lifetime / 2880)
radius += 1.5
if (rot > (2 * pi))
    rot -= (2 * pi)
y = originY + sin(rot) * radius
x = originX + cos(rot) * radius
