if (global.newgame == 1)
    start_new_game()
else
    load_game(((working_directory + "missileless/save") + string((global.saveslot + 1))))
