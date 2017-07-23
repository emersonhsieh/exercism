module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @n = n
    return @n
  end
  
  def primes
    return [] if @n == 1
    return [2] if @n == 2
    
    ary = (2..@n).to_a
    puts("array")
    puts(ary)
    primes = []
    
    while true
      s = ary[0]
      puts("s = #{s}")
      
      puts("primes = #{s}")
      nomoreprimes = true
      
      (1...ary.length).each do |i|
        ary[0] = 1
        puts("in the loop")

        if ary[i]%s == 0
          ary[i] = 1
          puts("there are still primes")
          nomoreprimes = false
        end
      end
      
      puts("no more primes #{nomoreprimes}")
      puts("Before deletion")
      puts(ary)
      ary.delete(1)
      puts("After deletion")
      puts(ary)
      
      primes << s
      
      if nomoreprimes == true
        primes.push(*ary)
        break
      end
    end
    
    return primes
  end
end

puts("Answer is #{Sieve.new(5).primes}")