require './test/test_helper'
require './lib/shift'
require './lib/keys'
require './lib/offsets'

class ShiftTest < Minitest::Test

  include Keys

  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_generates_five_digits_at_random
    @shift.random_number
    assert_equal 5, @shift.number_length
  end

  def test_random_number_is_string
    assert_equal String, @shift.random_number.class
  end

  def test_it_can_split_given_key
    assert_equal [12, 23, 34, 45], @shift.make_keys("12345")
  end
end
