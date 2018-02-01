require './lib/linked_list'


class WagonTrain
  attr_accessor :list

  def initialize
    @list = LinkedList.new
    @supplies = {}
  end

  def append(surname, supplies)
    list.append(surname, supplies)
    # @supplies += supplies
  end

  def prepend(surname, supplies)
    list.prepend(surname, supplies)
      # @supplies += supplies
  end

  def insert(location, surname, supplies)
    list.insert(location, surname, supplies)
    # @supplies += supplies
  end

  def count
    list.count
  end

  def supplies
  end



end
