require './lib/linked_list'
require 'pry'

class WagonTrain
  attr_accessor :list

  def initialize
    @list = LinkedList.new
    @main_supplies = {"spare wagon tongues" => 0, "pounds of food" => 0}
  end

  def append(surname, supplies)
    list.append(surname, supplies)
    @main_supplies[supplies.keys[0]] += supplies.values[0]
  end

  def prepend(surname, supplies)
    list.prepend(surname, supplies)
    @main_supplies[supplies.keys[0]] += supplies.values[0]
  end

  def insert(location, surname, supplies)
    list.insert(location, surname, supplies)
    @main_supplies[supplies.keys[0]] += supplies.values[0]
  end

  def count
    list.count
  end

  def supplies
    @main_supplies
  end

end
