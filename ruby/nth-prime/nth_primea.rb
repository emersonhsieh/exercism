=begin
  returns the nth prime number
  
  find list of primes
  
=end

module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(n)

    ary = (2..n).to_a
    primes = []
    
    p = 0
    
    while ary.length != 0
      l = ary.length - 1
      s = ary[0]
      primes << s
            
      for i in 1..l
        ary[0] = 1
        
        #Current Array of numbers left
        #puts(ary)
        
        #puts("Current Prime: #{s}")
        #puts("Current Index: #{ary[i]}")
        if ary[i]%s == 0
          ary[i] = 1
          #puts("Replace entry with 1 if nonprime")
        end
      end
      
      ary.delete(1)
      #puts("After deletion of Nonprimes")
      #puts(ary)
      
      if !primes[n].nil?
        p = primes[n]
        break
      end
    end
    
    return p
  end
end


(1..45).each{|x| puts Prime.nth(x)}
