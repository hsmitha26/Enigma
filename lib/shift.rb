require './lib/keys'
require './lib/offsets'

class Shift

  include Keys
  include Offset

  def make_keys(number)
    array = number.split(//).map {|string| string.to_i}
    split_array = array.each_cons(2).to_a
    split_array.map {|element| element.join.to_i}
  end

  def date_squared(given_date)
    date = given_date.to_i
    date **2
  end

  def last_four(given_date)
    date = date_squared(given_date).to_s
    four_digits = date[-4..-1]
    four_digits.split(//).map {|string| string.to_i}
  end

  def shift_values(number, date)
    array = [make_keys(number), last_four(date)]
    shift = array.transpose.map do |x|
      x.sum
    end
  end

  def character_set
    ("a".."z").to_a << " "
  end

end
