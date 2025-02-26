if (!instance_exists(oCharacter))
{
    instance_destroy()
    exit
}
if (oCharacter.diffcharge == 0)
    instance_destroy()
else
{
    x = oCharacter.x + oCharacter.aspr2x
    y = oCharacter.y + oCharacter.aspr2y
    if (oCharacter.aimdirection == 0)
        x += 2
    if (oCharacter.aimdirection == 1)
        x -= 2
    if (oCharacter.aimdirection == 2)
    {
        x += 3
        y -= 3
    }
    if (oCharacter.aimdirection == 3)
    {
        x -= 3
        y -= 3
    }
    if (oCharacter.aimdirection == 4)
    {
        x += 3
        y += 3
    }
    if (oCharacter.aimdirection == 5)
    {
        x -= 3
        y += 3
    }
    if (oCharacter.aimdirection == 6)
        y -= 2
    if (oCharacter.aimdirection == 7)
        y += 2
    if (oCharacter.diffcharge >= 1)
        sprite_index = sDMissileChargeReady
    image_speed = 0.5
}
