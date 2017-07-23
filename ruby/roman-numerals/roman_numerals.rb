module BookKeeping
  VERSION = 2
end

class Integer
  def to_roman
    n = self
    str= ""
    for i in 1..(n/1000)
      str = str + "M"
    end
    n = n%1000
    
    if ((n/100)) == 9
      str = str + "CM"
    elsif ((n/100)) == 4
      str = str + "CD"
    else
      for i in 1..(n/500)
        str = str + "D"
      end
      n = n%500
      
      for i in 1..(n/100)
        str = str + "C"
      end
    end
    
    n = n%100

    if ((n/10)) == 9
      str = str + "XC"
    elsif ((n/10)) == 4
      str = str + "XL"
    else
      for i in 1..(n/50)
        str = str + "L"
      end
      n = n-50*(n/50)
      
      for i in 1..(n/10)
        str = str + "X"
      end
    end
    
    n = n%10
    
    if ((n/1)) == 9
      str = str + "IX"
    elsif ((n/1)) == 4
      str = str + "IV"
    else
      for i in 1..(n/5)
        str = str + "V"
      end
      n = n%5
      
      for i in 1..(n)
        str = str + "I"
      end
    end
    
    return str
  end
end