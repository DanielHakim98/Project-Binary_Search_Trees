module Comparable
end

class Node
  attr_reader :data
  attr_accessor :left,:right
  def initialize(data=nil,left=nil,right=nil)
    @data = data
    @left =left
    @right = right
  end
end
