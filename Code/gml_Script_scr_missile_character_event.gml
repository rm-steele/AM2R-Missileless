if active
{
    if (global.btanks == 0)
        event_inherited()
    else
    {
        itemtype = 1
        popup_text("Beam Tank Acquired")
        event_inherited()
    }
    global.btanks += 1
}
