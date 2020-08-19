require 'minitest/autorun'
require 'minitest/pride'
require './lib/box.rb'

class BoxTest < Minitest::Test
  def setup
    @boxes = Box.new
  end

  def test_it_exists
    assert_instance_of Box, @boxes
  end

  def test_it_finds_least_amount_of_boxes
    assert_equal 8, @boxes.how_many_boxes(16, 2, 10)
    assert_equal -1, @boxes.how_many_boxes(16, 0, 10)
    assert_equal 16, @boxes.how_many_boxes(16, 0, 20)
    assert_equal -1, @boxes.how_many_boxes(16, 5, 0)
    assert_equal -1, @boxes.how_many_boxes(19, 50, 2)
    assert_equal 12, @boxes.how_many_boxes(24, 3, 10)
  end
end
