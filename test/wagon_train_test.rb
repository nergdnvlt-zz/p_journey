require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/wagon_train'

class WagonTrainTest < Minitest::Test

  def test_instance_of_wagon_train
    wt = WagonTrain.new

    assert_instance_of WagonTrain, wt
  end

  def test_new_wagon_will_create_list
    wt = WagonTrain.new

    binding.pry
    assert_instance_of LinkedList, wt.list
  end

end
