def combine_anagrams(words)
  anagrams = words.map{|x| x.downcase.chars.sort.to_s}.uniq
  anagrams.map { |e| words.select{ |w| w.downcase.chars.sort.to_s == e }}
end