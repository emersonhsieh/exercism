module BookKeeping
  VERSION = 4
end

class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    s = (((1+@n)*@n*1/2.0)**2.0).to_i
    s
  end
  
  def sum_of_squares
    s = ((@n/3.0)*(@n+1)*(@n+1/2.0)).to_i
    s
  end
  
  def difference
    square_of_sum - sum_of_squares
  end

end

