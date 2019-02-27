require './test/test_helper'
require './lib/enigma'
require './lib/shift'
require 'date'
require 'pry'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # def test_message_array_break_down
  #   skip
  #   expected = [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d", "!"]]
  #
  #   assert_equal expected, @enigma.message("hello world!")
  # end

  def test_message_array_break

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]

    assert_equal expected, @enigma.message("hello world!")
  end

  def test_encrypt

    expected = {
      encryption: "keder ohulw!",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, @enigma.encrypt("hello world!", "02715", "040895")
  end
end
