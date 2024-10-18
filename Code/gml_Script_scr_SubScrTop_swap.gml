if (global.ctanks > 0 && global.ptanks > 0)
    return 102;
else if (global.ctanks > 0)
    return 289;
else if (global.ptanks > 0)
    return 290;
else
    return 288;
