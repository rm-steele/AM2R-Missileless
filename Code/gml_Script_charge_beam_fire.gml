var tempangle;
if (nofire == 0 && turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0)
{
    if (state == STANDING || state == RUNNING || state == DUCKING || (state == JUMPING && vjump == 1) || (state == GRABBEDQUEEN && image_index == 2))
    {
        tempangle = 0
        if (aimdirection == 0)
        {
            shoot_beam(0)
            tempangle = 0
        }
        if (aimdirection == 1)
        {
            shoot_beam(180)
            tempangle = 180
        }
        if (aimdirection == 2)
        {
            shoot_beam(45)
            tempangle = 45
        }
        if (aimdirection == 3)
        {
            shoot_beam(135)
            tempangle = 135
        }
        if (aimdirection == 4)
        {
            shoot_beam(315)
            tempangle = 315
        }
        if (aimdirection == 5)
        {
            shoot_beam(225)
            tempangle = 225
        }
        if (aimdirection == 6)
        {
            shoot_beam(90)
            tempangle = 90
        }
        if (aimdirection == 7)
        {
            shoot_beam(270)
            tempangle = 270
        }
        repeat global.btanks
            shoot_beam(((tempangle + (random(30) - 15)) % 360))
    }
    if (state == GRIP && ((facing == RIGHT && aimdirection != 0) || (facing == LEFT && aimdirection != 1)))
    {
        tempangle = 0
        if (aimdirection == 0)
        {
            shoot_beam(0)
            tempangle = 0
        }
        if (aimdirection == 1)
        {
            shoot_beam(180)
            tempangle = 180
        }
        if (aimdirection == 2)
        {
            shoot_beam(45)
            tempangle = 45
        }
        if (aimdirection == 3)
        {
            shoot_beam(135)
            tempangle = 135
        }
        if (aimdirection == 4)
        {
            shoot_beam(315)
            tempangle = 315
        }
        if (aimdirection == 5)
        {
            shoot_beam(225)
            tempangle = 225
        }
        if (aimdirection == 6)
        {
            shoot_beam(90)
            tempangle = 90
        }
        if (aimdirection == 7)
        {
            shoot_beam(270)
            tempangle = 270
        }
        repeat global.btanks
            shoot_beam(((tempangle + (random(30) - 15)) % 360))
    }
}
