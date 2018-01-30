require './lib/node.rb'
require 'pry'


class LinkedList
  attr_reader :head,
              :count


  def initialize(head=nil)
    @head         = head
    @count        = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
      @tail = @head.next_node
    end
  end

  def to_string
    current_node = @head
    if current_node.nil?
      "The train hasn't assembled yet"
    else
      families = "The #{current_node.surname} family"
      until current_node.next_node.nil?
        current_node = current_node.next_node
        families << ", followed by the #{current_node.surname} family"
      end
    end
    return familes
    # "The #{current.surname} family"
  end

  def count
    current_node = @head

    if current_node.nil?
      @count = 0
    else
      until current_node.next_node.nil?
        current_node = current_node.next_node
        @count += 1
      end
    end
    # @count
    binding.pry
  end


end
