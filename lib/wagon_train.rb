require './lib/linked_list'


class WagonTrain
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

end
