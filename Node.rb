module Comparable
end

class Node
  attr_reader :data,:left,:right
  def initialize(data=nil)
    @data = data
    @left = nil
    @right = nil
  end
end
