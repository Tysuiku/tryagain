def partition(arr, n)
  new_arr = []

  new_arr << less = arr.select { |ele| ele < n }
  new_arr << more = arr.select { |ele| ele >= n }

  new_arr
end

def merge(hash1, hash2)
  hash = {}
  hash1.each { |k, v| hash[k] = v }
  hash2.each { |k, v| hash[k] = v }
  hash
end

def censor(sen, arr)
  new_arr = []
  words = sen.split(" ")
  words.each do |word|
    if arr.include?(word.downcase)
      new_arr << star(word)
    else
      new_arr << word
    end
  end

  new_arr.join(" ")
end

def star(word)
  str = ""
  word.each_char do |i|
    if "aeiou".include?(i.downcase)
      str += "*"
    else
      str += i
    end
  end
  str
end

def power_of_two?(n)
  x = 1
  while x < n
    x *= 2
  end
  x == n
end
