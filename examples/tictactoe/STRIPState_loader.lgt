:- initialization((
    logtalk_load([ stripstate(loader)
                 , bedsit(loader)
                 , random(loader)
                 ]),
    bedsit::init([ grid(board, [ [1, 2, 3]
                                  , [4, 5, 6]
                                  , [7, 8, 9]
                                  ])
                    , player_turn(game, human(x))
                    , current_player(game, human(x))
                    , current_player(game, computer(o, hard))
                    ]),
    logtalk_load('STRIPState_tictactoe'),
    define_events(after, bedsit, do(_), _, unicode_terminal),
    os::time_stamp(TS),
    Int is round(TS),
    fast_random::randomize(Int)
             )).
