require './test/test_helper'
require './lib/keys'

class KeysTest < Minitest::Test

  def setup
    @key = Keys.new
  end

  def test_it_exists
    assert_instance_of Keys, @key
  end

  def test_it_generates_five_digits_at_random
    assert_equal 5, @key.random_number
  end
end
