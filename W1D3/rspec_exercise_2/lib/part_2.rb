def palindrome?(string)
  backwards = ""
  string.each_char do |char|
    backwards = char + backwards
  end
  backwards == string
end

def substrings(str)
end
