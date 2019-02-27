module Keys

  def random_number
    key = rand(0..99999).to_s
    if key.length < 5
      number = 5 - key.length
      key.rjust(number,"0")
    else
      key
    end
  end

  def number_length
    random_number.length
  end

end
