module BookKeeping
  VERSION = 4
end

class Pangram
  def self.pangram? (n)
    ary = n.upcase
    ary = ary.gsub(/[^A-Z]/,'')
    ary = ary.chars.uniq
    
    ary.length == 26
  end
end
