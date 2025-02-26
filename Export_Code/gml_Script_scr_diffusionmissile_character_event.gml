if active
{
    event_inherited()
    if (global.difficulty < 2)
        global.maxsmissiles += 2
    if (global.difficulty == 2)
        global.maxsmissiles += 1
    global.smissiles = global.maxsmissiles
    global.stanks += 1
    global.diffusionmissiles = 1
}
