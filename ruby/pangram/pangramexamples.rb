=begin
class Pangram
  def self.pangram? sentence
    sentence.downcase!
    ('a'..'z').all?{ |letter| sentence.include? letter }
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end


class Pangram

  def self.pangram?(phrase)
    alphabet      = ('a'..'z').to_a
    used_letters  = phrase.downcase.chars.uniq

    (alphabet - used_letters).empty?
  end

end

module BookKeeping
  VERSION = 4
end

class Pangram
    def self.pangram?(phrase)
        ('a'..'z').each do |letter|
            if !(phrase.downcase.include? letter)
                return false
            end
        end
        true
    end
end
module BookKeeping
    VERSION = 4
end
=end