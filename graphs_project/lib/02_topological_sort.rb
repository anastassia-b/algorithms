require_relative '00_directed_graph'
require 'byebug'
# Implementing topological sort using Kahn's algorithm.

def topological_sort(vertices)
  solution = []
  hash_map = {}
  queue = []

  vertices.each do |vertex|
    hash_map[vertex.value] = vertex.in_edges.length
    if hash_map[vertex.value].zero?
      queue.push(vertex)
    end
  end

  until queue.empty?
    curr_vertex = queue.pop
    solution.push(curr_vertex)
    curr_vertex.out_edges.each do |edge|
      queue.push(edge.to_vertex) if hash_map[edge.to_vertex.value] == 1
      hash_map[edge.to_vertex.value] -= 1
    end

    #refactor ... later.
    hash_map.delete(curr_vertex.value)
  end

  raise 'graph contains cycle' unless hash_map.values.empty?
  solution
end


# Bonus: Implement topo sort with Tarjan's DFS algorithm. Do this
# *after* implementing Prim's algorithm.

# def topological_sort(vertices)
# end
