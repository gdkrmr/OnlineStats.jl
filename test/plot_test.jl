module PlotTest

using OnlineStats, StatsBase, Plots, FactCheck

facts("Plotting") do
    context("traceplot") do
        n, p = 1_000_000, 5
        x = randn(n, p)
        β = vcat(1:p) - p/2
        y = x*β + randn(n)
        o = OnlineStats.SGModel(p)

        Plots.gadfly!()
        OnlineStats.traceplot!(o, 1000, x, y)
    end
end
end #module
