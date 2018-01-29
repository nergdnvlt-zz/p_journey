require './lib/node.rb'


class LinkedList
  attr_reader :head,
              :count

  def initialize(head=nil)
    @head         = head
    @count        = 0
  end

  def append(data)
    @count += 1
    @head = Node.new(data)
  end

  def to_string
    "The #{@head.surname} family"
  end

end
