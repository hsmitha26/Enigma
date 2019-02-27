require './lib/shift'

class Enigma

  def message(word)
    message_array = word.split(//)
    message_array.each_slice(4).to_a
  end

end
