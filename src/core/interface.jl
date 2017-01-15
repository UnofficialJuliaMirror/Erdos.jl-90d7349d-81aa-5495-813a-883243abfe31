"""
Abstract (undirected) graph type

Guarantees:
    vertices are integers in 1:nv(g)

Functions to implement:
    basic constructors (e.g. MyGraph(n), MyGraph())
    nv(g)
    ne(g)
    out_neighbors(g, v)
    in_neighbors(g, v) #digraph
    edge(g, u, v)
    add_edge!(g, u, v)
    rem_edge!(g, u, v)
    add_vertex!(g)
    pop_vertex!(g)
    graphtype(g)
    digraphtype(g)
    edgetype(g)

Reccomended Overrides:
    in_adjlist(g) #digraph
    out_adjlist(g)
    has_edge(g, u, v)
    ==(g, h)
    out_edges(g, u)
    in_edges(g, u) # digraph
    rem_edge!(g, e)
    graph(dg)
    digraph(g)
    reverse!(g) #digraph
    unsafe_add_edge!(g, u, v)
    rebuild!(g)
    rem_vertex!(g, v)
"""
abstract AGraph

"""
Abstract directed graph type
"""
abstract ADiGraph

"""
Union of `AGraph` and `ADiGraph`
"""
typealias ASimpleGraph Union{AGraph, ADiGraph}

####### Required interface for concrete types ########################

"""
    nv(g)

The number of vertices in `g`.
"""
nv(g::ASimpleGraph) = nothing

"""
    ne(g)

The number of edges in `g`.

Time Complexity: O(1)
"""
ne(g::ASimpleGraph) = nothing

"""
    add_edge!(g, e)

Add to `g` the edge `e`.

    add_edge!(g, u, v)

Add to `g` an edge from `u` to `v`.

Will return false if add fails (e.g., if vertices are not in the graph or the edge
is already present) and true otherwise.
"""
add_edge!(g::ASimpleGraph, u, v) = nothing


"""
    rem_edge!(g, e)

Remove the edge `e`.

    rem_edge!(g, u, v)

Remove the edge from `u` to `v`.

Returns false if edge removal fails (e.g., if the edge does not exist) and true otherwise.
"""
rem_edge!(g::ASimpleGraph, u, v) = nothing


"""
    add_vertex!(g)

Add a new vertex to the graph `g`.
"""
add_vertex!(g::ASimpleGraph) = nothing

# length() has to be appliable to the result
"""
    in_neighbors(g, v)

Returns an iterable to all neighbors connected to vertex `v` by an incoming edge.

NOTE: it may return a reference, not a copy. Do not modify result.
"""
in_neighbors(g::ADiGraph, v) = nothing

# length() has to be appliable to the result
"""
    out_neighbors(g::ASimpleGraph, v)

Returns an iterable to all neighbors connected to vertex `v` by an outgoing edge.

NOTE: it may return a reference, not a copy. Do not modify result.
"""
out_neighbors(g::ASimpleGraph, v) = nothing

"""
    edge(g, u, v)

Returns an edge from 'u' to 'v'. The edge doesn't necessarily exists
in `g`.
"""
edge(g::ASimpleGraph, u, v) = nothing

"""
    edgetype(g)

Returns the type of edges of graph `g`.
"""
edgetype(g::ASimpleGraph) = nothing


graphtype(g::ADiGraph) = nothing
digraphtype(g::AGraph) = nothing


abstract AEdge

"""
    src(e)

Returns the source of an edge.
"""
src(e::AEdge) = nothing

"""
    dst(e)

Returns the destination of an edge.
"""
dst(e::AEdge) = nothing

"""
    reverse(e::Edge)

Swap `e.src` and `e.dst`.
"""
reverse(e::AEdge) = nothing

"""
    pop_vertex!(g)

Remove the last vertex of `g`. Equivalent to rem_vertex!(g, nv(g)).
"""
pop_vertex!(g::ASimpleGraph) = nothing
