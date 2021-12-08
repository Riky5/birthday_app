require 'date'

MONTHS = {1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'}

class Birthday
  def days_left(birth_day, bday_month)
    bday = Date.new(Date.today.year, bday_month, birth_day)
    bday = Date.new(bday.year + 1, bday_month, birth_day) if Date.today > bday
    (bday - Date.today).to_i
  end

  def month_to_int(month)
    MONTHS.key(month)
  end
end