require_relative 'lib/linked_list'

new_list = LinkedList.new

puts 'List created' unless new_list.nil?

puts 'Append'
new_list.append('first')
puts 'Added node at end'

puts 'Prepend'
new_list.prepend('second')
puts 'Added node at start'
puts "Current amount of nodes is #{new_list.size}"

puts 'Head of list'
puts new_list.head.value

puts 'Tail of list'
puts new_list.tail.value

puts 'Add 2 more nodes'
new_list.append('third')
new_list.append('fourth')
puts "Current amount of nodes is #{new_list.size}"
puts "The full list is #{new_list}"

puts 'Return node at index'
puts 'The node at index 2 value should be third'
puts "The node at index 2 is #{new_list.at(2).value}"

puts 'Remove the last node'
new_list.pop
puts "Current amount of nodes is #{new_list.size}"
puts "The full list is #{new_list}"

puts 'Checks for first value'
puts "It is #{new_list.contains('first')} that the list contains the value first"
puts "It is #{new_list.contains('fifth')} that the list contains the value fifth"

puts 'Return index of node'
puts "The index of value third is #{new_list.find('third')}"

puts "The full list is #{new_list}"
puts ' '
