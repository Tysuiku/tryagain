def palindrome?(str)
  new_str = ""
  str.each_char { |char| new_str = char + new_str }
  new_str == str
end

def substrings(str)
  arr = []
  (0...str.length).each do |i|
    (i...str.length).each do |j|
      arr << str[i..j]
    end
  end

  arr
end

def palindrome_substrings(str)
  substr = substrings(str)
  pali_sub = []
  substr.each do |sub|
    if palindrome?(sub) && sub.length > 1
      pali_sub << sub
    end
  end

  pali_sub
end
