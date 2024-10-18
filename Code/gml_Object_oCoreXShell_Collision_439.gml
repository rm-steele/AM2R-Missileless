var force;
force = 0
if ((!canbehit) || state == 0)
{
    with (other.id)
    {
        event_user(1)
        if (!pbeam)
            instance_destroy()
    }
}
else
{
    with (other.id)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
    if (other.chargebeam == 0)
    {
        myhealth[image_index] -= 0.5
        force = 1
        flashing = (invulnerability * 0.66666667)
    }
    else
    {
        myhealth[image_index] -= 1
        force = 2
        flashing = (invulnerability * 1.5)
    }
    if (myhealth[image_index] <= 0)
        image_index++
    if place_meeting(x, y, oCharacter)
        force = (-force)
    hspeed = lengthdir_x((-force), point_direction(x, y, other.x, other.y))
    vspeed = lengthdir_y((-force), point_direction(x, y, other.x, other.y))
    fxtimer = 0
    canbehit = 0
    if (myhealth[2] > 0)
        sfx_play(sndCoreXHit)
    if (global.waterlevel != 0)
    {
        repeat (8 + floor(random(4)))
        {
            bubble = instance_create(x, y, oLBubble)
            if instance_exists(bubble)
            {
                bubble.hspeed = random_range(-2.5, 2.5)
                bubble.vspeed = (-random(0.4))
            }
        }
    }
    canSpawnX = 1
    alarm[1] = 30
}
