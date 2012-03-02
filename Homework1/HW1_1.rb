def palindrome?(string)
  string.downcase.gsub(/\W/,"").reverse == string.downcase.gsub(/\W/,"")
end

def count_words(string)
  h = Hash.new

  array = string.downcase.gsub(/\W/," ").split
  array.uniq.map { |x| h[x]=array.count(x) }
  
  return h
end