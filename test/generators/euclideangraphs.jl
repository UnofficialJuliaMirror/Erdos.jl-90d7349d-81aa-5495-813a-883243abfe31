@testset "$TEST $G" begin

N = 10
d = 2
points = rand(d, N)
g, weights = euclidean_graph(points)
@test nv(g) == N
@test ne(g) == N*(N-1) ÷ 2
@test maximum(x->x[2], weights) <= sqrt(d)
@test minimum(x->x[2], weights) >= 0
@test maximum(points) <= 1
@test minimum(points) >= 0.

g, weights = euclidean_graph(points, bc=:periodic)
@test maximum(x->x[2], weights) <= sqrt(d/2)
@test minimum(x->x[2], weights) >= 0.

@test_throws ErrorException euclidean_graph(points, L=0.01,  bc=:periodic)
@test_throws ErrorException euclidean_graph(points, bc=:ciao)

end # testset
