module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute a, b
    raise ArgumentError, "Must be equal" if a.length != b.length  
    
    c = a.chars.zip(b.chars)
    d = c.count{|a,b| a != b}
    
    return d
  end
end
