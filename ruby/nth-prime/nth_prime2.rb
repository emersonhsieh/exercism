=begin
  returns the nth prime number
  
  find list of primes
  
=end

module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    return 2 if n == 1
    return 3 if n == 2
    
    p = 0
    
    ary = (2..n**3).to_a
    primes = []
    
    while true
      l = ary.length - 1
      s = ary[0]
      primes << s
      
      nomoreprimes = 0
      
      for i in 1..l
        ary[0] = 1
        
        #Current Array of numbers left
        #puts(ary)
        
        #puts("Current Prime: #{s}")
        #puts("Current Index: #{ary[i]}")
        if ary[i]%s == 0
          ary[i] = 1
        end
      end
      
      ary.delete(1)
      #puts("After deletion of Nonprimes")
      #puts(ary)
      
      if !primes[n].nil?
        p = primes[n]
        #puts("True")
        break
      end
    end
    
    return p
  end
end

(1..45).each{|x| puts Prime.nth(x)}
