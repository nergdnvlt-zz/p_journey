class Node
  attr_accessor :surname,
                :next_node

  def initialize(surname, next_node=nil)
    @surname      = surname
    @next_node    = next_node
  end

end
