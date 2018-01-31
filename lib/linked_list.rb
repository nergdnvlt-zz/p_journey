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

  def prepend(data)
    node = Node.new(data)

    prepended_head = @head
    @head = node
    @head.next_node = prepended_head

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
    fam_one = "The #{@head.surname} family"

    if @head.nil?
      wagon_string = "There aren't any families yet."
    elsif @head.next_node.nil?
      wagon_string = fam_one
    else
      current_node = @head

      until current_node.next_node.nil?
        next_fam = current_node.next_node.surname
        next_fam_string = ", followed by the #{next_fam} family"
        wagon_string = fam_one += next_fam_string
        current_node = current_node.next_node
      end
    end
    wagon_string
  end



end
