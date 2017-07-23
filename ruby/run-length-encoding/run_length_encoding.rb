module BookKeeping
  VERSION = 3
end

class RunLengthEncoding
  def self.encode s
    encoded = ''
    s = s.split('')
    cur_count = 0
    cur_char = s[0]
    
    s.each_with_index do |x, i|
      if x == cur_char
        cur_count += 1
      end
      
      if s[i+1] != cur_char
        encoded << cur_count.to_s if cur_count > 1
        encoded << cur_char
        
        cur_char = s[i+1]
        cur_count = 0
      end
    end
    encoded
  end
  
  def self.decode s
    decoded = ''
    s = s.split('')
    cur_number = ''
    cur_char = ''
    
    s.each_with_index do |x, i|
      cur_char = x.upcase.downcase 
      if (cur_char.gsub!(/[^0-9]/, '') == nil)
        cur_number << x
      else
        cur_number = '1' if cur_number.to_i == 0
        (1..cur_number.to_i).each do |p|
          decoded << x
        end
        cur_number = ''
      end
    end
    decoded
  end
end
