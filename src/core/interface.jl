"""
Abstract Graph type

Guarantees:
    vertices are integers in 1:nv(g)
    edges are pair of vertices
    sorted adjacency list member (Vector{Vector{Int}})

Functions to implement:
    basic constructors (e.g. MyGraph(n), MyGraph())
    nv(g)
    ne(g)
    out_neighbors(g, v)
    add_edge!(g, e)
    rem_edge!(g, e)
    add_vertex!(g)
    rem_vertex!(g, v)
    copy(g)
    graph(g)
    digraph(g)

Reccomended Overrides:
    out_adjlist(g)
    has_edge(g, e)
    ==(g, h)
"""
abstract AbstractGraph

"""
Abstract Directed Graph type

Guarantees:
    vertices are integers in 1:nv(g)
    edges are pair of vertices
    sorted forward and backward adjacency list members (Vector{Vector{Int}})

Functions to implement:
    basic constructors (e.g. MyGraph(n), MyGraph())
    nv(g)
    ne(g)
    in_neighbors(g, v)
    out_neighbors(g, v)
    add_edge!(g, e)
    rem_edge!(g, e)
    add_vertex!(g)
    rem_vertex!(g, v)
    copy(g)
    graph(g)
    digraph(g)

Reccomended Overrides:
    in_adjlist(g)
    out_adjlist(g)
    has_edge(g, e)
    ==(g, h)
"""
abstract AbstractDiGraph

#TODO eventually remove graph/digraph methods (used only in a few functions)

"""
Union of `AbstractGraph` and `AbstractDiGraph`
"""
typealias AbstractSimpleGraph Union{AbstractGraph, AbstractDiGraph}

typealias AGraph AbstractGraph
typealias ADiGraph AbstractDiGraph
typealias ASimpleGraph AbstractSimpleGraph

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
    add_edge!(g, e::Edge)
    add_edge!(g, u, v)

Add to `g` the edge `e` (from `u` to `v`).
Will return false if add fails (e.g., if vertices are not in the graph or the edge
is already present) and true otherwise.
"""
add_edge!(g::ASimpleGraph, e::Edge) = nothing


"""
    rem_edge!(g, e::Edge)
    rem_edge!(g, u, v)

Remove the edge from `u` to `v`.

Returns false if edge removal fails (e.g., if the edge does not exist) and true otherwise.
"""
rem_edge!(g::ASimpleGraph, e::Edge) = nothing


"""
    add_vertex!(g)

Add a new vertex to the graph `g`.
"""
add_vertex!(g::ASimpleGraph) = nothing


"""
    rem_vertex!(g, v)

Remove the vertex `v` from graph `g`.
It may change the index of other vertices (usually of the last one).
"""
rem_vertex!(g::ASimpleGraph, i::Int) = nothing


"""
    in_neighbors(g, v::Int)

Returns a list of all neighbors connected to vertex `v` by an incoming edge.

NOTE: it may return a reference, not a copy. Do not modify result.
"""
in_neighbors(g::ADiGraph, v::Int) = nothing

"""
    out_neighbors(g::ASimpleGraph, v::Int)

Returns a list of all neighbors connected to vertex `v` by an outgoing edge.

NOTE: it may return a reference, not a copy. Do not modify result.
"""
out_neighbors(g::ASimpleGraph, v::Int) = nothing


graph(g::ASimpleGraph) = nothing
digraph(g::ASimpleGraph) = nothing
copy(g::ASimpleGraph) = nothing
