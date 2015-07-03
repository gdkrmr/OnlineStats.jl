module TopPCATest

# using OnlineStats, FactCheck, MultivariateStats
using FactCheck
include("../src/OnlineStats.jl")

facts("TopPCA") do
    n = rand(1000:10_000)
    x = randn(n, 10)
    xtx = x'x
    o = OnlineStats.TopPCA(10, 5)
    o = OnlineStats.TopPCA(xtx, 5)
end # facts

end # module
