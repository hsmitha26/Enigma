module Offset

  def current_date
    date = Time.new
    date = date.strftime("%d%m%y")
  end

  def date_length
    current_date.length
  end
  
end
