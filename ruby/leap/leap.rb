module BookKeeping
  VERSION = 3
end

class Year
  def self.leap? y
    is_leap = false
    
    if y%400 == 0
      is_leap = true
    elsif y%4 == 0 && y%100 != 0
      is_leap = true
    end
    
    is_leap
  end
end

