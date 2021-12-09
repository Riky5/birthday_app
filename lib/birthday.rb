require 'date'

class Birthday

  MONTHS = {1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'}

  @@today = Date.today

  def days_left(birth_day, birth_month, other_date = @@today)
    bday = Date.new(other_date.year, birth_month, birth_day)
    bday = Date.new(bday.year + 1, birth_month, birth_day) if other_date > bday
    (bday - other_date).to_i
  end

  def month_to_int(month)
    MONTHS.key(month)
  end

  def self.instance
    @birthday ||= Birthday.new
  end
end