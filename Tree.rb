class Tree
  def initialize(arr=nil)
    raise ArgumentTypeError if !arr.is_a? Array
    @arr = arr
    @root = self.build_tree(arr)
  end

  def build_tree(arr)
    return nil if !arr.any?
    mid = arr.length/2
    root = Node.new(arr[mid])
    root.left = build_tree(arr[0,mid])
    root.right = build_tree(arr[mid+1..-1])
    return root
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end
