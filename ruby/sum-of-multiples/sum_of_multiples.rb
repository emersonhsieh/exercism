module BookKeeping
  VERSION = 1
end

class SumOfMultiples
  def initialize(*args)
    @nums = args
  end
  
  def to(lim)
    array_of_nums = [0]
    
    @nums.each do |x|
      max = x
      while max < lim
        array_of_nums << max
        max += x
      end
    end

    array_of_nums.uniq.reduce(:+)
  end
  
end
