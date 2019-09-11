

# Estimation of PI
using Random
total = Int(1e6);
x = rand(MersenneTwister(0), Float64, total, 2);
ct = count((x[:,1].-0.5).^2 + (x[:,2].-0.5).^2 .< 0.25)
est = 4 * ct / total
error = π - est
