#!/usr/bin/env julia

include("actors/types.jl")
type Cell
    actors::Array{Actor, 1}
end

type Map
    cells::Array{Cell, 2}
end


