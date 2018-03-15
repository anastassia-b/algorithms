require '01_undirected_graph'
require 'set'
require 'byebug'

def prims_algorithm(vertices)
  tree = []
  visited = Set.new
  fringe = Hash.new

  vertex = vertices.first

  until visited.length == vertices.length
    visited.add(vertex)
    vertex.edges.each do |edge|
      other_vertex = edge.other_vertex(vertex)
      old_edge = fringe[other_vertex]
      if visited.include?(other_vertex)
        next
      else
        fringe[edge.other_vertex(vertex)] = edge unless old_edge
        if old_edge && edge.cost < old_edge.cost
          fringe[edge.other_vertex(vertex)] = edge
        end
      end

    end

    min_vertex, min_edge  = fringe.min_by do |vertex, edge|
      edge.cost
    end

    tree.push(min_edge) if min_edge
    fringe.delete(min_vertex)

    vertex = min_vertex
  end

  tree
end
