require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

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


  def test_node_can_carry_supplies
    node = Node.new("Burke", {"pounds of food" => 200})

    expected_supplies = {"pounds of food" => 200}
    assert_instance_of Node, node
    assert_equal "Burke", node.surname
    assert_equal expected_supplies, node.supplies
  end


end
