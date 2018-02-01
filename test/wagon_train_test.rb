require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

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

    wt.append("Burke", {"pounds of food" => 200})

    assert_instance_of Node, wt.list.head
    assert_equal "Burke", wt.list.head.surname
  end

  def test_append_with_different_name
    wt = WagonTrain.new

    wt.append("West", {"pounds of food" => 200})

    assert_instance_of Node, wt.list.head
    assert_equal "West", wt.list.head.surname
  end

  def test_multiple_appends
    wt = WagonTrain.new

    wt.append("Burke", {"pounds of food" => 200})
    assert_instance_of Node, wt.list.head
    assert_equal "Burke", wt.list.head.surname

    wt.append("West", {"pounds of food" => 200})
    assert_instance_of Node, wt.list.head.next_node
    assert_equal "West", wt.list.head.next_node.surname
  end

  def test_wagon_train_count
    wt = WagonTrain.new

    wt.append("Burke", {"pounds of food" => 200})
    wt.append("West", {"pounds of food" => 200})

    assert_equal 2, wt.count
  end


  def test_appending_supplies
    wt = WagonTrain.new

    wt.append("Burke", {"pounds of food" => 200})

    assert_instance_of Node, wt.list.head
    assert_equal "Burke", wt.list.head.surname
  end

  def test_wagon_prepend
      wt = WagonTrain.new
      wt.append("Burke", {"pounds of food" => 200})

      wt.list.prepend("Hardy", {"spare wagon tongues" => 3})

      assert_instance_of Node, wt.list.head
      assert_equal "Hardy", wt.list.head.surname
  end

  def test_wagon_insert
      wt = WagonTrain.new
      wt.append("Burke", {"pounds of food" => 200})
      wt.list.prepend("Hardy", {"spare wagon tongues" => 3})

      wt.list.insert(1, "West", {"pounds of food" => 300})

      assert_instance_of Node, wt.list.head
      assert_equal "Hardy", wt.list.head.surname
  end

  def test_count_after_methods
      wt = WagonTrain.new
      wt.append("Burke", {"pounds of food" => 200})
      wt.list.prepend("Hardy", {"spare wagon tongues" => 3})
      wt.list.insert(1, "West", {"pounds of food" => 300})

      assert_equal 3, wt.count
  end

  def test_supplies
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.insert(1, "West", {"pounds of food" => 300})

    expected = {"spare wagon tongues" => 3, "pounds of food" => 500}
    result = wt.supplies

    assert_equal expected, result
  end



end
