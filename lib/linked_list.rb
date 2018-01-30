require './lib/node.rb'


class LinkedList
  attr_reader :head,
              :count,
              :tail,
              :arr_surnames,
              :intp_array

  def initialize(head=nil)
    @head         = head
    @count        = 0
    @tail         = nil
    @arr_surnames = []
    @intp_array   = []
  end

  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
      @arr_surnames << @head.surname
    else
      @head.next_node = Node.new(data)
      @tail = @head.next_node
      @arr_surnames << @tail.surname
    end
  end

  def to_string
    if @count == 1
      "The #{@arr_surnames[0]} family"
    else
      @intp_array.push("The #{@arr_surnames[0]} family")
      @intp_array.push(", followed by the #{@arr_surnames[1]} family")
      @intp_array.join
    end
  end

end
