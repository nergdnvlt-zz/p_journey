require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node.rb'

class NodeTest < Minitest::Test

  def test_instance_of_node
    node = Node.new("Burke")
    assert_instance_of Node, node
  end

  def test_node_returns_surname_correctly
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_other_surnames_work
    name_array = ["Odin", "Bob", "June"]
    name_array.each do |name|
      node = Node.new(name)
      assert_equal name, node.surname
    end
  end

  def test_node_returns_correct_next_node
    node = Node.new("Burke")
    assert_equal nil, node.next_node
  end

  def test_other_node_values_work
    node_array = [1,2,3,4]
    node_array.each do |node_num|
      node = Node.new("Burke", node_num)
      assert_equal node_num, node.next_node
    end
  end


end
