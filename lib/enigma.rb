class Enigma

  # def encrypt(message, key=nil, date=nil)
  #
  # end
  def message(message)
    message_array = message.split(//)
    message_array.each_slice(4).to_a
  end
  # binding.pry
end
