module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize s
    @s = s
    @ary = s.downcase.gsub(/( ')|(' )|[^0-9A-Za-z']/, ' ').split
  end

  def word_count
    raise ArgumentError if @s.length == 0
    
    counts = {}
    
    @ary.each do |temp_str|
      if (counts.has_key?(temp_str) == false)
        counts[temp_str] = 0
      end
      counts[temp_str] += 1
    end

    counts
  end
end
