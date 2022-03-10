require_relative "Tree"
require_relative "Node"
require_relative "other"
arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
new_tree = Tree.new(arr)
puts puts
new_tree.pretty_print