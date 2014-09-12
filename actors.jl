#!/usr/bin/env julia

include("actors/types.jl")
include("map.jl")

function move!(actor::Actor, map::Map, move_vector::Array{Int, 1})
    result = actor.position + move_vector
    
    if any([result[ii] < 1 || result[ii] > size(map.cells)[ii] for ii in 1:length(result)])
        return actor.position
    end

    actor.position = result

    push!(map.cells[actor.position...].actors, actor)
    
    return result
end
