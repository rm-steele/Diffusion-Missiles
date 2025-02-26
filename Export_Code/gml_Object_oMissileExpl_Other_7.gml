if (sprite_index == sDMissileExpl)
{
    repeat (8)
    {
        spark = instance_create((x + (floor(random(34) - 17))), (y + (floor(random(34) - 17))), oFXAnimSpark)
        spark.gravity_direction = 270
        spark.gravity = 0.2
        spark.sprite_index = sIBeamFX
        spark.image_speed = 0.3
        spark.image_index = 0
        spark.additive = 1
    }
}
instance_destroy()
