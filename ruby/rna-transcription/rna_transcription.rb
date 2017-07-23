module BookKeeping
  VERSION = 4
end
  
class Complement
  def self.of_dna s
    nucleotides = {'A' => 'U', 'T' => 'A', 'G' => 'C', 'C' => 'G'}
    if (s.gsub(/[^ATCG]/,'') != s)
      s = ''
    else
      dna = s.chars.map {|c| nucleotides[c]}
      s = dna.join
    end
    s
  end
end