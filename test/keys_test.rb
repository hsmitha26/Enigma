require './test/test_helper'
require './lib/keys'

class KeysTest < Minitest::Test

  def setup
    @k = Keys.new
  end

  def test_it_exists
    assert_instance_of Keys, @k
  end

  def test_it_generates_five_digits_at_random
    @k.random_number
    assert_equal 5, @k.number_length
  end

  def test_random_number_is_string
    assert_equal String, @k.random_number.class
  end
end
