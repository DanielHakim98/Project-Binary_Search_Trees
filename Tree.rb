class Tree
  def initialize(arr=nil)
    raise ArgumentTypeError if !arr.is_a? Array
    @arr = arr
    @root = nil
  end

  def build_tree
    @arr = @arr.sort.uniq
  end
end

class ArgumentTypeError < TypeError
  def initialize(msg="Data type must be in Array", exception_type = "type")
    @exception_type = exception_type
    super(msg)
  end
end