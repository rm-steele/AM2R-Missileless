if (oBeam.chargebeam >= 1)
{
    if (oMOmega.myhealth > 0)
    {
        if (oMOmega.flashing == 0)
        {
            with (oMOmega)
            {
                dmg = 10
                flashtime = 30
                eyes_close = 15
            }
            if (other.smissile == 1)
            {
                with (oMOmega)
                {
                    dmg = 50
                    flashtime = 60
                    eyes_close = 30
                }
            }
            with (oMOmega)
                event_user(0)
            with (other.id)
                event_user(0)
            with (other.id)
                instance_destroy()
        }
        else
        {
            with (other.id)
                event_user(1)
        }
    }
}
else
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
