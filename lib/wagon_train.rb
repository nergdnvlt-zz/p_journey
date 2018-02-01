require './lib/linked_list'


class WagonTrain
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies = nil)
    list.append(surname, supplies = nil)
  end

  def count
    list.count
  end

end
