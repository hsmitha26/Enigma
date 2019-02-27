require './lib/shift'
require './lib/offsets'
require './lib/keys'

class Enigma

  include Offset
  include Keys

  def initialize
    @shift = Shift.new
    @character_set = @shift.character_set
  end

  def message(word)

    message_array = word.downcase.split(//)
  end

  def encrypt(word, key = random_number, date = current_date)
    message_array = message(word)
    shift = @shift.shift_values(key, date)
    translated = message_array.map do |letter|
      if index = @character_set.index(letter)
        replaced = @character_set.rotate(shift[0])[index]
        shift = shift.rotate
        replaced
      else
        replaced = letter
        shift = shift.rotate
        replaced
      end
      # binding.pry
    end.join
    translation(translated, key, date)
  end

  def translation(message, key, date, encrypt = true)
    if encrypt
      {encryption: message, key: key, date: date}
    else
      {decryption: message, key: key, date: date}
    end
  end

  def decrypt(word, key, date = current_date)
    message_array = message(word)
    shift = @shift.shift_values(key, date).map do |shift|
      shift * -1
    end
    translated = message_array.map do |letter|
      if index = @character_set.index(letter)
        replaced = @character_set.rotate(shift[0])[index]
        shift = shift.rotate
        replaced
      else
        replaced = letter
        shift = shift.rotate
        replaced
      end
    end.join
    translation(translated, key, date, false)
  end

end
