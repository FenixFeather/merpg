#!/usr/bin/env julia

abstract Actor

type Part
    name::String
    hp::Integer
end

type Human <: Actor
    name::String
    position::Array{Integer, 1}
    parts::Array{Part, 1}
end
