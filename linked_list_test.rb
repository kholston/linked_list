require_relative 'linked_list'

list = LinkedList.new

puts 'List created' unless list.nil?

puts 'Append'
list.append('first')
puts 'Added node'
ç

puts 'Prepend'
list.prepend('second')
puts 'Added node'
puts "Current amount of nodes is #{list.size}"

puts 'Head of list'
puts list.head

puts 'Tail of list'
puts list.tail

puts 'Add 2 more nodes'
list.append('third')
list.append('fourth')
puts "Current amount of nodes is #{list.size}"

puts 'Return node at index'
puts 'The node at index 2 value should be third'
puts "The node at index 2 is #{list.at(2)}"

puts 'Remove the last node'
list.pop
puts "Current amount of nodes is #{list.size}"

puts 'Checks for first value'
puts "It is #{list.contains('first')} that the list contains the value first"
puts "It is #{list.contains('fifth')} that the list contains the value fifth"

puts 'Return node at index'
puts "The node at index 3 is #{list.find(3)}"

puts "The full list is #{list}"
