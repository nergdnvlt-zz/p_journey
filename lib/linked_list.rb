require './lib/node.rb'
require 'pry'


class LinkedList
  attr_reader :head


  def initialize(head=nil)
    @head         = head
    @node_count   = 0
  end

  # def append(data)
  #   if @head == nil
  #     @head = Node.new(data)
  #   else
  #     @head.next_node = Node.new(data)
  #   end
  # end

  def append(data)
    node = Node.new(data)
    current_node = @head
    if @head == nil
      @head = node
    else
      @head.next_node = node
      current_node = @head.next_node
      # until current_node.next_node.nil?
      #   current_node = Node.new(data)
      #   current_node = current_node.next_node
      # end
    end
  end

  # def to_string
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
  # end

  # def count
  #   current_node = @head.next_node
  #
  #   if @head.nil?
  #     @node_count = 0
  #   elsif @head.next_node.nil?
  #     @node_count = 1
  #   else @node_count = 1
  #     until current_node.nil?
  #       current_node = current_node.next_node
  #       @node_count += 1
  #     end
  #   end
  #   @node_count
  # end


end
