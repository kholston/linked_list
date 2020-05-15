require_relative 'node'

class LinkedList

  def initialize(head = nil, tail = nil)
    @total_nodes = 0
    return if head.nil? && tail.nil?

    if head
      @head = head
      @total_nodes += 1
    end
    if head && tail.nil?
      @tail = @head
    else
      @tail = tail
      @total_nodes += 1
    end
  end

  # Adds a new node containing value to the end of list
  def append(value)
    created_node = Node.new(value)
    @tail.next_node = created_node
    @tail = created_node
    @total_nodes += 1
  end

  # Adds a new node containing value to the start of the list
  def prepend(value)
    created_node = Node.new(value)
    created_node.next_node = @head
    @head = created_node
    @total_nodes += 1
  end

  # Returns the total number of nodes in the list
  def size
    @total_nodes
  end

  # Returns the first node in the list
  def head
    @head
  end

  # Returns the last node in the list
  def tail
    @tail
  end

  # Returns the node at the given index
  def at(index)
    return @head if index < 0
    return @tail if index > @total_nodes - 1

    current_index = 0
    current_node = @head
    while current_index != index
      current_node = current_node.next_node
      current_index += 1
    end
    current_node
  end

  # Removes the last element from the list
  def pop
    current_node = @head
    while current_node.next_node
      previous_node = current_node
      current_node = current_node.next_node  
    end
    previous_node.next_node = nil
    current_node
  end

  # Returns true if the passed in value is in the list,
  #  otherwise returns false
  def contains(value)
    contains_value = false
    current_node = @head
    while current_node.next_node
      if current_node.value == value
        return contains_value = true
      else
        current_node = current_node.next
      end
    end
    contains_value
  end

  # Returns the index of the node containing value
  # or nil if not found
  def find(value)
    return nil unless contains(value)

    current_index = 0
    current_node = @head
    while current_node.next_node
      return current_index if current_node.value == value

      current_node = current_node.next_node
      current_index += 1
    end
    nil
  end

  # Represents the linked list as strings to print 
  # and preview in the console
  def to_s
    result = " "
    current_node = @head
    while current_node.next_node
      result += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    result + 'nil '
  end
end
