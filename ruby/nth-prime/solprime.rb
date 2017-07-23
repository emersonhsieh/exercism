=begin
  @@primes(index) stores the nth prime that we want
  
=end

class Prime
  @@primes = [2]

  def self.nth(index)
    raise ArgumentError if index < 1
    while @@primes.length < index
      @@primes << find_next(@@primes.last)
    end
    return @@primes[index - 1]
  end

  def self.find_next(number)
    #keep adding one to the number until it is prime
    number+=1
    return number if prime?(number)
    find_next(number)
  end

  def self.prime?(number)
    @@primes.each do |div|
    #keep dividing the number by all the previous primes before it to see if it is prime
      return false if number % div == 0
    end
    return true
  end
end

(1..200).each{|x| puts(Prime.nth(x))}