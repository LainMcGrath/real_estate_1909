require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/room'

class RoomTest< Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of Room, @room
  end

  def test_it_has_a_category
    assert_equal :bedroom, @room.category
  end

  def test_it_has_a_length
    assert_equal 10, @room.length
  end

  def test_it_has_a_width
    assert_equal 13, @room.width
  end

  def test_it_has_an_area
    assert_equal 130, @room.area
  end
end
