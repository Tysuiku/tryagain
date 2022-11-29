def palindrome?(string)
  backwards = ""
  string.each_char do |char|
    backwards = char + backwards
  end
  backwards == string
end

def substrings(str)
  substr = []
  (0...str.length).each do |start_idx|
    (start_idx...str.length).each do |end_idx|
      substr << str[start_idx..end_idx]
    end
  end

  substr
end

def palindrome_substrings(str)
  substrings = substrings(str)
  substrings.select { |ele| ele if palindrome?(ele) && ele.length > 1 }
end
