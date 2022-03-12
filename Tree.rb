class Tree
  attr_reader :root
  def initialize(arr=nil)
    raise ArgumentTypeError if !arr.is_a? Array
    @arr = arr
    @root = self.build_tree(arr)
  end

  def build_tree(arr)
    return nil if !arr.any?
    arr = arr.sort.uniq
    mid = arr.length/2
    root = Node.new(arr[mid])
    root.left = build_tree(arr[0,mid])
    root.right = build_tree(arr[mid+1..-1])
    return root
  end

  def insert(in_val, node = @root)
    if node == nil
      return Node.new(in_val)
    else
      if node.data == in_val
        return node
      elsif node.data < in_val
        node.right = insert(in_val,node.right)
      else
        node.left = insert(in_val,node.left)
      end
    end
    node
  end

  def delete(out_val, node = @root)
    return node if !node

    if out_val < node.data
      node.left = delete(out_val, node.left)
      return node
    elsif out_val > node.data
      node.right = delete(out_val, node.right)
      return node
    end
    # We reach here when root is the node
    # to be deleted.

    # Case 1: If root node is a leaf node
    return nil if !node.left && !node.right

    # Case 2: If one of the children is empty
    if !node.left
        temp = node.right
        node = nil
        return temp
    elsif !node.right
        temp = node.left
        node = nil
        return temp
    end

    # Case 3: If both children exist
    succParent = node

    # Find Successor
    succ = node.right

    while succ.left != nil
        succParent = succ
        succ = succ.left
    end
    if succParent != root
        succParent.left = succ.right
    else
        succParent.right = succ.right
    end

    node.data = succ.data
    return root
  end

  def find
  end
  def level_order
  end
  def inorder
  end
  def preorder
  end
  def postorder
  end
  def height
  end
  def depth
  end
  def balanced?
  end
  def rebalance
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end
