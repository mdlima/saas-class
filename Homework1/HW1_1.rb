def palindrome?(string)
  string.downcase.gsub(/\W/,"").reverse == string.downcase.gsub(/\W/,"")
end