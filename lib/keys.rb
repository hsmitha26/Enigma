class Keys

  def initialize
    @key
  end

  def random_number
    @key = rand(0..99999).to_s
    if @key.length < 5
      number = 5 - @key.length
      @key.rjust(number,"0")
    end
    @key
  end

  def number_length
    @key.length
  end
end
