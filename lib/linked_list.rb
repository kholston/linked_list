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

end
