#!/usr/bin/env julia

module MeGame

type Game
    ## An object to represent the game.
    actors::Array{Actor, 1}
end

function gameloop(game::Game)
    ## The main game loop.
    ## @param game The Game object.
end

end
