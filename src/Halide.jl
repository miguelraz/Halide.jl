module Halide

# Write your package code here.
using Artifacts
halide = artifact"Halide"
root = joinpath(halide, readdir(halide)[1])

# 4 binaries
get_host_target() = run(` $(joinpath(root, "bin", "get_host_target"))`)
featurization_to_sample() = run(` $(joinpath(root, "bin", "featurization_to_sample"))`)
retrain_cost_model() = run(` $(joinpath(root, "bin", "retrain_cost_model"))`)
weightsdir_to_weightsfile() = run(` $(joinpath(root, "bin", "weightsdir_to_weightsfile"))`)

# 5 shared libs
libroot = joinpath(root, "lib")
libautoschedule_adams2019 = nothing ### ?
libautoschedule_mullapudi2016 = nothing ### ?
libautoschedule_li2018 = nothing ### ?
libHalide =  nothing ### libHalid.so

end
