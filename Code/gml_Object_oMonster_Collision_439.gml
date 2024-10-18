if (state >= 2)
{
    if other.ibeam
    {
        if (state != 5)
            invulntimer = 5
        state = 5
        statetime = 0
        PlaySoundMono(sndFreezeHit)
        with (other.id)
        {
            event_user(0)
            instance_destroy()
        }
    }
    if (state == 5 && other.chargebeam >= 1 && invulntimer <= 0)
    {
        with (other.id)
            event_user(0)
        hp -= 3
        invulntimer = 5
        event_user(0)
    }
    else
    {
        with (other.id)
        {
            event_user(1)
            instance_destroy()
        }
    }
}
