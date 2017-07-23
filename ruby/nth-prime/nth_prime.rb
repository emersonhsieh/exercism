module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(num)
    raise ArgumentError if num == 0

    primes_array = [2]
    number_tested = 3
    
    while primes_array.length < num
      non_prime = false
      primes_array.each do |x|
        if number_tested%x == 0
          non_prime = true
          break
        end
      end
      primes_array << number_tested if non_prime == false
      number_tested += 1
    end
    
    primes_array[num-1]
  end
end
