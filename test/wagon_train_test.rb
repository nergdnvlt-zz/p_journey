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

    assert_instance_of LinkedList, wt.list
  end

  def test_linked_list_head
    wt = WagonTrain.new

    assert_nil wt.list.head
  end

  def test_wagon_train_append
    wt = WagonTrain.new

    wt.append("Burke")

    assert_instance_of Node, wt.list.head
    assert_equal "Burke", wt.list.head.surname
  end

  def test_append_with_different_name
    wt = WagonTrain.new

    wt.append("West")

    assert_instance_of Node, wt.list.head
    assert_equal "West", wt.list.head.surname
  end

  def test_multiple_appends
    wt = WagonTrain.new

    wt.append("Burke")
    assert_instance_of Node, wt.list.head
    assert_equal "Burke", wt.list.head.surname

    wt.append("West")
    assert_instance_of Node, wt.list.head.next_node
    assert_equal "West", wt.list.head.next_node.surname
  end

  def test_wagon_train_count
    wt = WagonTrain.new

    wt.append("Burke")
    wt.append("West")

    assert_equal 2, wt.count
  end

end
