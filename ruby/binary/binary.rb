module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal s
    if s.gsub!(/[^01]/,'') != nil
      raise ArgumentError
    end
  
    s = s.chars.reverse
    sum = 0
    
    s.each_with_index do |x, i|
      sum = sum + x.to_i*(2**i)
    end
    
    sum
  end
end
