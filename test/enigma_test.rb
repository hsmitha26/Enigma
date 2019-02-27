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

  def test_message_array_break
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]
    assert_equal expected, @enigma.message("hello world!")
    assert_equal expected, @enigma.message("heLlo woRld!")
  end

  def test_encrypt

    expected = {
      encryption: "keder ohulw!",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, @enigma.encrypt("hello world!", "02715", "040895")
  end

  def test_decrypt

    expected = {
      decryption: "hello world!",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, @enigma.decrypt("keder ohulw!", "02715", "040895")
  end

  def test_encrypt_and_decrypt_with_default_date_given_key

    encrypted_message = @enigma.encrypt("hello world!", "02715")
    decrypted_message = @enigma.decrypt(encrypted_message[:encryption], encrypted_message[:key])

    assert_equal "hello world!", decrypted_message[:decryption]
  end

  def test_encrypt_and_decrypt_with_random_key_and_current_date
    
    encrypted_message = @enigma.encrypt("hello world")
    # binding.pry
    decrypted_message = @enigma.decrypt(encrypted_message[:encryption], encrypted_message[:key])

    assert_equal "hello world", decrypted_message[:encryption]
  end

end
