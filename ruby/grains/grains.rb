module BookKeeping
  VERSION = 1
end

class Grains
  def self.square s
    if s >= 1 && s <= 64
      return 2**(s-1)
    else
      raise ArgumentError
    end
  end
  
  def self.total
    sum = 0
    (1..64).each do |s|
      sum = sum + 2**(s-1)
    end
    
    sum
  end
end
