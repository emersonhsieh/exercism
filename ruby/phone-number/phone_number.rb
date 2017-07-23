module BookKeeping
  VERSION = 2
end

class PhoneNumber
  def self.clean n
    n = n.gsub(/[^0-9]/,'')
        
    if n.length == 11 && n[0] =~ /1/
      n.slice!(0)
    end
    if !(n.length == 10 && n[0].match(/[2-9]/) && n[3].match(/[2-9]/))
      n = nil
    end
    n
  end
end

