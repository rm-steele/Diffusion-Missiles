expl = instance_create(round(x), round(y), oMissileExpl)
if (smissile == 0)
{
    expl.image_xscale = 0.6
    expl.image_yscale = 0.6
    expl.damage = 5
    expl.smissile = 0
    PlaySoundMono(sndMissileExpl)
    light = instance_create(x, y, oFadeLight32)
    light.fadespeed = 0.1
    light.alarm[0] = 10
}
if smissile
{
    quake = instance_create(0, 0, oQuake)
    quake.delay = 0
    quake.duration = 10
    quake.intensity = 2
    expl.damage = 25
    expl.smissile = 1
    sfx_stop(sndFlyby)
    light = instance_create(x, y, oFadeLight64)
    light.fadespeed = 0.1
    light.alarm[0] = 10
    ctrl_vibrate(0, 0, 20)
    if dmissile
    {
        expl.sprite_index = sDMissileExpl
        expl.image_speed = 0.5
        instance_create(x, y, oDiffusionSpark)
        spark2 = instance_create(x, y, oDiffusionSpark)
        spark3 = instance_create(x, y, oDiffusionSpark)
        spark4 = instance_create(x, y, oDiffusionSpark)
        spark2.rot += 1.5707963267948966
        spark3.rot += pi
        spark4.rot += 4.71238898038469
        PlaySoundMono(sndDiffusionMissileExpl)
    }
    else
        PlaySoundMono(sndSMissileExpl)
}
if inwater
{
    repeat (4 + floor(random(4)))
    {
        bubble = instance_create(x, y, oLBubble)
        if instance_exists(bubble)
        {
            bubble.hspeed = 2 - random(4)
            bubble.vspeed = -0.1 - random(1)
        }
    }
}
trail.speed = speed
trail.alarm[0] = 2
with (flame)
    instance_destroy()
instance_destroy()
