require 'byebug'

class UndirectedVertex
  attr_reader :value, :edges

  def initialize(value)
    @value = value
    @edges = []
  end
end

class UndirectedEdge
  attr_reader :vertices, :cost

  def initialize(vertex1, vertex2, cost = 1)
    @vertices = [vertex1, vertex2]
    @cost = cost
    vertex1.edges.push(self)
    vertex2.edges.push(self)
  end

  def destroy!
    @vertices[0].edges.delete(self)
    @vertices[1].edges.delete(self)
    @vertices = nil
  end

  def other_vertex(vertex)
    if @vertices[0] == vertex
      @vertices[1]
    elsif @vertices[1] == vertex
      @vertices[0]
    else
      raise "vertex is at neither end"
    end
  end
end
