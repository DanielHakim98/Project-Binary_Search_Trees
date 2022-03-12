require_relative "Tree"
require_relative "Node"
require_relative "other"
#arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
arr = [1,7,4,10,8,9,4]
new_tree = Tree.new(arr)
puts puts
puts "Binary tree: 'new_tree'"
new_tree.pretty_print
puts puts
puts "Insert int '2'"
new_tree.insert(2)
new_tree.pretty_print
puts puts
puts "Delete int '2'"
new_tree.delete(2)
new_tree.pretty_print
