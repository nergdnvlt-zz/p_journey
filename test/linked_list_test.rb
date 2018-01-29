require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/linked_list.rb'

class LinkedList < Minitest::Test

  def test_instance_of_linked_list
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

end
