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

  ################# Testing Append - Single Node

  def test_append_method
    list = LinkedList.new

    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_appended_list_returns_correct_list
    list = LinkedList.new

    list.append("West")

    assert_instance_of LinkedList, list
  end

  def test_result_of_heads_next_node
    list = LinkedList.new

    list.append("West")

    assert_nil list.head.next_node
  end

  def test_different_head_data_instances
      list = LinkedList.new

      list.append("Rhodes")

      assert_instance_of Node, list.head
      assert_instance_of LinkedList, list
  end

  def test_different_head_data_values
      list = LinkedList.new

      list.append("Rhodes")

      assert_equal "Rhodes", list.head.surname
      assert_nil list.head.next_node
  end

  def test_new_family_for_iteration_three
    list = LinkedList.new

    list.append("Brooks")

    assert_instance_of Node, list.head
    assert_equal "Brooks", list.head.surname
  end

  def test_another_family_for_iteration_three
    list = LinkedList.new

    list.append("Henderson")

    assert_instance_of Node, list.head
    assert_equal "Henderson", list.head.surname
  end


  ################# Testing Append - Multiple Nodes

  def test_append_additional_node
      list = LinkedList.new

      list.append("Rhodes")
      list.append("Hardy")

      assert_instance_of Node, list.head.next_node
  end

  def test_can_call_next_surname
    list = LinkedList.new

    list.append("Rhodes")
    list.append("Hardy")

    assert_equal "Hardy", list.head.next_node.surname
  end

  def test_can_call_three_appends
    list = LinkedList.new

    list.append("Rhodes")
    assert_equal "Rhodes", list.head.surname

    list.append("Hardy")
    assert_equal "Hardy", list.head.next_node.surname

    list.append("Thor")
    assert_equal "Thor", list.head.next_node.next_node.surname
  end


  def test_many_appends
    list = LinkedList.new

    assert_nil list.head

    list.append("Swift")
    assert_instance_of Node, list.head
    assert_equal "Swift", list.head.surname

    list.append("West")
    assert_instance_of Node, list.head.next_node
    assert_equal "West", list.head.next_node.surname

    list.append("Lovato")
    list.append("Gomez")
    list.append("Bieber")

    assert_instance_of Node, list.head
                                 .next_node
                                 .next_node
                                 .next_node
                                 .next_node
    assert_equal "Bieber", list.head
                               .next_node
                               .next_node
                               .next_node
                               .next_node
                               .surname

  end


########### Prepend Method

    def test_prepend_initial
      list = LinkedList.new
      list.append("Brooks")
      list.append("Henderson")

      list.prepend("McKinney")

      assert_equal "McKinney", list.head.surname
    end

    def test_multiple_prepend
      list = LinkedList.new
      list.append("Brooks")
      list.append("Henderson")

      list.prepend("Ragnar")
      assert_equal "Ragnar", list.head.surname

      list.prepend("Ares")
      assert_equal "Ares", list.head.surname

      list.prepend("Erikkson")
      assert_equal "Erikkson", list.head.surname
    end


########### Insert Method

    def test_insert_method
      list = LinkedList.new
      list.append("Brooks")
      list.append("Henderson")
      list.prepend("McKinney")

      list.insert(1, "Lawson")

      assert_instance_of Node, list.head
      assert_equal "Lawson", list.head.next_node.surname
    end


################# Testing Count Method

  def test_list_count_method
    list = LinkedList.new
    list.append("West")

    assert_equal 1, list.count

  end

  def test_counter
    list = LinkedList.new

    list.append("Rhodes")
    assert_equal 1, list.count

    list.append("Hardy")
    assert_equal 2, list.count
  end

  def test_count_for_three
    list = LinkedList.new

    list.append("Rhodes")
    assert_equal 1, list.count

    list.append("Hardy")
    assert_equal 2, list.count

    list.append("Odin")
    assert_equal 3, list.count
  end

  def test_count_for_prepend_iteration_3
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")

    list.prepend("McKinney")

    assert_equal 3, list.count
  end

  def test_count

    list = LinkedList.new

    assert_equal 0, list.count

    list.append("a")
    assert_equal 1, list.count

    list.append("b")
    assert_equal 2, list.count

    list.append("c")
    list.append("d")
    list.append("e")
    assert_equal 5, list.count
  end


########### Test String Method

  def test_list_string_method
    list = LinkedList.new

    list.append("West")

    assert_equal "The West family", list.to_string
  end

  def test_iteration3_list_string_method
    list = LinkedList.new

    list.append("Brooks")

    assert_equal "The Brooks family", list.to_string
  end

  def test__node_interpolation
    list = LinkedList.new

    list.append("Rhodes")
    list.append("Hardy")

    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_string_for_prepend_iteration_3
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")

    list.prepend("McKinney")

    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end

  def test_string_interp_for_insert_iteration_three
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")

    list.to_string

    assert_equal "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end

  def test__multiple_node_interpolation
    list = LinkedList.new

    list.append("Rhodes")
    list.append("Hardy")
    list.append("Shaka")
    list.append("Ragnar")
    list.append("Ares")

    assert_equal "The Rhodes family, followed by the Hardy family, followed by the Shaka family, followed by the Ragnar family, followed by the Ares family", list.to_string
  end

end
