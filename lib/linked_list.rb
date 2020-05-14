require_relative 'node'

class LinkedList
  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    if !@head.nil? && tail.nil?
      @tail = @head
    else
      @tail = tail
    end
  end

  # Adds a new node containing value to the end of list
  def append(value)
    
  end

  # Adds a new node containing value to the start of the list
  def prepend(value)

  end

  # Returns the total number of nodes in the list
  def size
    
  end

  # Returns the first node in the list
  def head
    
  end

  # Returns the last node in the list
  def tail
    
  end

  # Returns the node at the given index
  def at(index)
    
  end

  # Removes the last element from the list
  def pop
    
  end

  # Returns true if the passed in value is in the list,
  #  otherwise returns false
  def contains(value)
    
  end

  # Returns the index of the node containing value
  # or nil if not found
  def find(value)
    
  end

  # Represents the linkedd list as strings to print 
  # and preview in the console
  def to_s
    
  end

end
