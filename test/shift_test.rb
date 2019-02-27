require './test/test_helper'
require './lib/shift'
require './lib/keys'
require './lib/offsets'

class ShiftTest < Minitest::Test

  include Keys
  include Offset

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
    assert_equal [02, 27, 71, 15], @shift.make_keys("02715")
  end

  def test_date_length_is_six
    @shift.current_date
    assert_equal 6, @shift.date_length
  end

  def test_date_is_a_string
    assert_equal String, @shift.current_date.class
  end

  def test_it_can_square_date_from_given_date
    assert_equal 1672401025, @shift.date_squared("040895")
  end

  def test_it_can_find_last_four_digits
    assert_equal [1, 0, 2, 5], @shift.last_four("040895")
  end

  def test_it_can_add_keys_and_offsets_with_given_number_and_date
    assert_equal [3, 27, 73, 20], @shift.shift_values("02715", "040895")
  end

end
