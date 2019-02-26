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
    skip
    assert_equal 5, @k.random_number
  end
end
