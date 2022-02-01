module IterativeLQR

using LinearAlgebra 
using Symbolics 
using Scratch 
using Parameters 
using JLD2

include("objective.jl")
include("dynamics.jl")
include("constraints.jl")
include("data.jl")
include("solver.jl")
include("rollout.jl")
include("augmented_lagrangian.jl")
include("derivatives.jl")
include("backward_pass.jl")
include("forward_pass.jl")
include("solve.jl")

# objective 
export Cost

# constraints 
export Constraint

# dynamics 
export Dynamics

# solver 
export rollout, 
    step!,
    solver, Options,
    initialize_controls!, initialize_states!, 
    solve!,
    get_trajectory

end # module
