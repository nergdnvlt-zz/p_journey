require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/linked_list.rb'
require './lib/node.rb'

class Linked_List_Test < Minitest::Test

  def test_instance_of_linked_list
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_result_of_calling_head
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_method
    list = LinkedList.new

    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_append_with_other_values
    list = LinkedList.new

    list.append("Erikkson")

    assert_equal "Erikkson", list.head.surname
  end

  def test_list_being_built
    list = LinkedList.new
    list.append("West")

    assert_instance_of LinkedList, list
  end

  def test_result_of_heads_next_node
    list = LinkedList.new
    list.append("West")

    assert_nil list.head.next_node
  end

  def test_list_count_method
    list = LinkedList.new
    list.append("West")

    assert_equal 1, list.count
  end

  def test_list_string_method
    list = LinkedList.new
    list.append("West")

    assert_equal "The West family", list.to_string
  end
end
