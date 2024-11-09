if (chargebeam >= 1 || global.lavastate == 0 || (global.event[250] == 1 && global.gamemode > 2 && global.cbeam == 0))
{
    with (other.id)
    {
        check_linkid()
        event_user(0)
    }
}
if (wbeam == 0)
{
    event_user(0)
    instance_destroy()
}
