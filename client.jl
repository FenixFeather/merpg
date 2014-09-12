#!/usr/bin/env julia
include("actors.jl")
include("map.jl")
using InputStuff

using InputStuff
using JSON

function main()
    the_map = Map([Cell(Actor[]) for x in 1:3, y in 1:3])
    shepard = Human("Shepard", [1,1], Part[])
    display = [" " for x in 1:10, y in 1:10]
    
    while true
        move_dict = [
                     "up"=>[-1,0],
                     "down"=>[1,0],
                     "right"=>[0,1],
                     "left"=>[0,-1]
                     ]
        display[shepard.position...] = "s"
        println(display)
        display[shepard.position...] = " "
        bla = input("> ")
        move!(shepard, the_map, move_dict[bla])
        println(JSON.json(the_map))
    end

    
    
end

main()
