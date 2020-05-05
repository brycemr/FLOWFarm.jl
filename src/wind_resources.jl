abstract type AbstractWindResourceModel end

"""
    DiscritizedWindResource(wind_directions, wind_speeds, wind_probabilities, measurement_heights, air_density, ti_model, wind_shear_model)

    Struct defining a wind resource

# Arguments
- `wind_directions::Array{Float}(Nstates)`: an array of wind directions corresponding to each wind farm state
- `wind_speeds::Array{Float}(Nstates)`: an array of wind speeds corresponding to each wind farm state
- `wind_probabilities::Array{Float}(Nstates)`: an array of probabilities corresponding to each wind farm state
- `measurement_heights::Array{Float}(Nstates)`: an array of measurement heights corresponding to each wind farm state
- `air_density::Float`: the air density
- `ambient_ti::Array{Float}`: an array of the ambient turbulence intensity for each wind direction
- `wind_shear_model::Array{AbstractWindShearModel}(1)`: contains a struct defining the desired turbulence intensity model
"""
struct DiscretizedWindResource{AF, TF, ASM} <: AbstractWindResourceModel
    
    wind_directions::AF
    wind_speeds::AF
    wind_probabilities::AF
    measurement_heights::AF
    air_density::TF
    ambient_tis::AF
    wind_shear_model::ASM

end