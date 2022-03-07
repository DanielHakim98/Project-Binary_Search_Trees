module Comparable
end

class Node
  attr_reader :data
  attr_accessor :left,:right
  def initialize(left=nil,data=nil,right=nil)
    @data = data
    @left = nil
    @right = nil
  end
end
