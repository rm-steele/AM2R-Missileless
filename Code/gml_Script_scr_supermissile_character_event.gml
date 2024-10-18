if active
{
    if (global.ctanks == 0)
        event_inherited()
    else
    {
        itemtype = 1
        popup_text("Charge Tank acquired")
        event_inherited()
    }
    global.ctanks += 1
}
