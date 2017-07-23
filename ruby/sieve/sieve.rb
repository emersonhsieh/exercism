module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    return [] if @n == 1
    return [2] if @n == 2

    ary = (2..@n).to_a
    primes = []

    loop do
      primes << ary[0]
      no_more_primes = true

      i = 1
      while ary[i]
        if (ary[i] % ary[0]).zero?
          ary.delete(ary[i])
          no_more_primes = false
        end
        i = i + 1
      end

      ary.delete(ary[0])

      if no_more_primes == true
        primes.push(*ary)
        break
      end
    end

    primes
  end
end

#puts("Answer is #{Sieve.new(10000).primes}")