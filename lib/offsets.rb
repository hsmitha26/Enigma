class Offset

  def initialize
    @date
  end

  def current_date
    @date = Time.new
    @date = @date.strftime("%d%m%y")
    binding.pry
  end

  def date_length
    @date.length
  end
end
