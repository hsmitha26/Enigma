require './test/test_helper'
require './lib/offsets'

class OffsetsTest < Minitest::Test

  def setup
    @off = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @off
  end

end
