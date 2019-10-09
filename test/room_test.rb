require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/room'

class RoomTest< Minitest::Test

  def setup
    room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of Room, room
  end
