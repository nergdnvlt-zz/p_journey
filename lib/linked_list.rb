require './lib/node.rb'
require 'pry'


class LinkedList
  attr_reader :head


  def initialize(head=nil)
    @head = head
  end


  def append(data)
    node = Node.new(data)

    if @head == nil
      @head = node

    else
      current_node = @head

      until current_node.next_node.nil?
        current_node = current_node.next_node
      end

      current_node.next_node = node
    end
  end


  def count
    counter = 0

    if @head.nil?
      counter

    elsif @head.next_node.nil?
      counter += 1

    else
      current_node = @head

      while current_node != nil
        counter += 1
        current_node = current_node.next_node
      end

    end
    counter
  end


  def to_string
  #   current_node = @head
  #   if current_node.nil?
  #     "The train hasn't assembled yet"
  #   else
  #     families = "The #{current_node.surname} family"
  #     until current_node.next_node.nil?
  #       current_node = current_node.next_node
  #       families << ", followed by the #{current_node.surname} family"
  #     end
  #   end
  #   return familes
  #   # "The #{current.surname} family"
  end


end
