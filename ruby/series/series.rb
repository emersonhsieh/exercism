class Series
  def initialize n
    @n = n.chars
  end
  
  def slices slice_length
    raise ArgumentError, "Slice cannot exceed length" if slice_length.to_i > @n.length
    
    char_iter = 0
    sliced_array = []
    # you do it length - slice + 1 times
    
    while @n[char_iter+slice_length-1]
      sliced_array << @n[char_iter, slice_length].join
      char_iter += 1
    end
    
    sliced_array
  end
end
