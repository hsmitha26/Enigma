require './test/test_helper'
require './lib/offsets'
require 'date'

class OffsetsTest < Minitest::Test

  def setup
    @off = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @off
  end

  def test_date_length_is_six
    @off.current_date
    assert_equal 6, @off.date_length
  end

  def test_date_is_a_string
    assert_equal String, @off.current_date.class
  end
end
