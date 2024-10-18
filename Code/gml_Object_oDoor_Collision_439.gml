if (open == 0)
{
    if (lock == 0 || lock == 1)
    {
        event_user(1)
        with (other.id)
        {
            if (!wbeam)
            {
                event_user(0)
                instance_destroy()
            }
        }
    }
    else if ((lock == 2 && other.chargebeam) || (lock == 2 && global.event[250] == 1 && global.gamemode > 2 && global.cbeam == 0))
    {
        event_user(1)
        with (other.id)
        {
            if (!wbeam)
            {
                event_user(0)
                instance_destroy()
            }
        }
    }
    else
    {
        with (other.id)
        {
            if (!wbeam)
            {
                event_user(1)
                instance_destroy()
            }
        }
    }
}
