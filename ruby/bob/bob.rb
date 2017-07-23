module BookKeeping
  VERSION = 1
end

class Bob
  def self.hey m
    response = ' '    

    # Containing Symbols
    m = m.gsub(/\s+/,'')
    m_only_alphabet = m.gsub(/[^A-Za-z]/,'')

    if m == ''
      response = 'Fine. Be that way!'
    elsif m_only_alphabet.upcase == m_only_alphabet && m_only_alphabet != ''
      response = 'Whoa, chill out!'
    elsif m[m.length-1] == '?'
      response = 'Sure.'
    else
      response = 'Whatever.'
    end
    
    response
  end
end
